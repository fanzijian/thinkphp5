<?php
namespace app\index\controller;
use think\Controller;//用于与V层进行数据传递
use app\model\Manager;//学生模型
use app\model\Teacher;//教师模型
use app\model\Student;//学生模型
use app\model\Klass;//班级模型
/**
*教师管理，继承think\Controller后，就可以利用V层对数据进行打包。
*/
class ManagerController extends IndexController
{

//-------------------------------管理员信息管理-------------------------------
    public function index()
    {
        try {

            //生成查询条件
            $map = array();
            $map['username'] = session('username');

            //查询对象是否存在
            if(is_null($Manager = Manager::get($map))){
                return $this->error('未找到编号' . $map['username'] . '的记录');
            }

            $this->assign('Manager',$Manager);

            //返回页面
            $htmls = $this->fetch('Manager/index');

            // 将数据返回给用户
            return $htmls;
        } catch (\Exception $e) {
            throw $e;
            return '系统错误' . $e->getMessage();
        }
    }

	public function edit()
	{
		$message = '修改成功';
		$error = '';
		try {
            //生成查询条件
            $map = array();
            $map['username'] = session('username');

            //查询对象是否存在
            if(is_null($Manager = Manager::get($map))){
                return $this->error('未找到编号' . $map['username'] . '的记录');
            }

	        // 将数据传给V层
	        $this->assign('Manager', $Manager);

	        // 获取封装好的V层内容
	        $htmls = $this->fetch();

	        // 将封装好的V层内容返回给用户
	        return $htmls;
		} catch (Exception $e) {
			return '系统错误' . $e->getMessage();
		}
	}

    public function update()
    {
        $message    = '';   // 反馈消息
        $error      = '';   // 反馈错误信息

        // 接收数据，取要更新的关键字信息
        $id = input('post.id');

        // 获取当前对象
        $Manager = Manager::get($id);

        if(!is_null($Manager)){
            if(!$this->saveManager($Manager,true)){
                return $this->error('操作失败' . $Manager->getError());
            }
        }else{
            return $this->error('当前操作记录不存在！');
        }

        return $this->success('操作成功', url('index'));
    }
    
    private function saveManager(Manager &$Manager, $isUpdate = false)
    {
        $Manager->name =$this->request->param('name');
        $Manager->username = $this->request->param('username');
        $Manager->sex = $this->request->param('sex');
        $Manager->school = $this->request->param('school');
        $Manager->email = $this->request->param('email');
        $Manager->photo_url = $this->request->param('photo_url');
        return $Manager->validate(true)->save();
    }

//-------------------------------学生信息管理-------------------------------
    /**
     * [studentList 学生列表]
     * @return [html] [返回包含students对象]
     */
    public function studentList()
    {
        
        $Student = new Student;

        $pageSize = 5;
        //获取查询类别
        
        $search_type = $this->request->param('search_type');
        if(null == $search_type){
            $search_type = 0;
        }
        $search_content = $this->request->param('search_content');

        $search_attribute = array('0'=>'name', '1'=>'username', '2'=>'');
        

        //查询是否有相应学生对象
        $students = $Student->where($search_attribute[$search_type], 'like', '%' . $search_content . '%')->paginate($pageSize);
        
        //传递到V层
        $this->assign('students',$students);
        //返回对象
        $htmls = $this->fetch('Manager/studentList');

        return $htmls;
    }
    /**
     * [managerDeleteStudent 管理员删除学生]
     * @return [msg] [返回删除结果，success成功，error失败]
     */
    public function managerDeleteStudent()
    {
        //初始化消息
        $message = '删除成功！';
        $error = '';
        try {
            //获取学生id
            $id = $this->request->param('id');
            //var_dump($id);
            $Student = Student::get($id);
            //获取学生对象
            if(false === $Student){
                throw new \Exception('不存在id为' . $id . '的学生，删除失败！');
            }
            //删除学生对象
            if(false === $Student->delete()){
                throw new \Exception('删除失败:' . $Student->getError());
            }
            // 程序正确执行，进行跳转
            return $this->success($message, url('Manager/studentList'));
        } catch (Exception $e) {
            // 程序异常执行，接收异常并报错。
            return $this->error('系统错误' . $e->getMessage());
        }
    }
    /**
     * [managerEditStudent 管理员编辑学生信息]
     * @return [html] [返回包含Student对象]
     */
    public function managerEditStudent()
    {
        try {
            //获取学生id
            $id = $this->request->param('id');

            //获取学生对象
            $Student = Student::get($id);
            if(false === $Student){
                throw new \Exception('不存在id为' . $id . '的学生！');
            }
            
            //取出班级列表
            $klasses = Klass::all();
            $this->assign('klasses',$klasses);
            $this->assign('Student',$Student);

            //传递到V层
            $htmls = $this->fetch('Manager/studentDetail');
            //返回编辑页面
            return $htmls;
        } catch (Exception $e) {
            return $this->error('系统错误'. $e->getMessage());
        }

    }
    /**
     * [managerAddStudent 管理员添加学生信息]
     * @return [html] [返回包含空Student对象]
     */
    public function managerAddStudent()
    {
        //构造空Student对象
        $Student = new Student;
        $Student->id = 0;
        $Student->name ='';
        $Student->username = '';
        $Student->sex = 0;
        $Student->school = '';
        $Student->email = '';
        $Student->photo_url = '1.jpg';
        $Student->klass_id = '1';

        //取出班级列表
        $klasses = Klass::all();
        $this->assign('klasses',$klasses);
        $this->assign('Student',$Student);

        //传递到V层
        $htmls = $this->fetch('Manager/studentDetail');
        //返回编辑页面
        return $htmls;
    }
    /**
     * [saveStudent 保存编辑或者新加的学生信息]
     * @return [msg] [返回操作结果，success成功，error失败]
     */
    public function saveStudent()
    {

        //获取学生id，id为0则表示添加学生，否则为编辑学生信息
        $id = $this->request->param('id');

        if(0 == $id){
            $Student = new Student;
        }else{
            $Student = Student::get($id);
        }
        //更新学生信息
        $Student->name =$this->request->param('name');
        $Student->username = $this->request->param('username');
        $Student->sex = $this->request->param('sex');
        $Student->school = $this->request->param('school');
        $Student->email = $this->request->param('email');
        $Student->photo_url = $this->request->param('photo_url');
        $Student->klass_id = $this->request->param('klass_id');
        //保存学生信息
        if (!$Student->validate(true)->save()) {
            return $this->error('课程保存错误：' . $Student->getError());
        }else{
            return $this->success('操作成功', url('Manager/studentList'));
        }
    }
//-------------------------------教师信息管理-------------------------------
    /**
     * [teacherList 教师列表]
     * @return [htmls] [返回包含teachers对象的html]
     */
    public function teacherList()
    {
        
        $Teacher = new Teacher;

        $pageSize = 5;
        //获取查询类别
        
        $search_type = $this->request->param('search_type');
        if(null == $search_type){
            $search_type = 0;
        }
        $search_content = $this->request->param('search_content');

        $search_attribute = array('0'=>'name', '1'=>'username', '2'=>'');
        

        //查询是否有相应学生对象
        $teachers = $Teacher->where($search_attribute[$search_type], 'like', '%' . $search_content . '%')->paginate($pageSize);
        
        //传递到V层
        $this->assign('teachers',$teachers);
        //返回对象
        $htmls = $this->fetch('Manager/teacherList');

        return $htmls;
    }
    /**
     * [managerDeleteTeacher 管理员删除教师]
     * @return [msg] [返回删除结果，success成功，error失败]
     */
    public function managerDeleteTeacher()
    {
        //初始化消息
        $message = '删除成功！';
        $error = '';
        try {
            //获取学生id
            $id = $this->request->param('id');
            //var_dump($id);
            $Teacher = Teacher::get($id);
            //获取学生对象
            if(false === $Teacher){
                throw new \Exception('不存在id为' . $id . '的教师，删除失败！');
            }
            //删除学生对象
            if(false === $Teacher->delete()){
                throw new \Exception('删除失败:' . $Teacher->getError());
            }
            // 程序正确执行，进行跳转
            return $this->success($message, url('Manager/teacherList'));
        } catch (Exception $e) {
            // 程序异常执行，接收异常并报错。
            return $this->error('系统错误' . $e->getMessage());
        }
    }
    /**
     * [managerEditTeacher 管理员修改教师信息]
     * @return [htmls] [返回包含teacher对象的修改页面]
     */
    public function managerEditTeacher()
    {
        try {
            //获取学生id
            $id = $this->request->param('id');

            //获取学生对象
            $Teacher = Teacher::get($id);
            if(false === $Teacher){
                throw new \Exception('不存在id为' . $id . '的学生！');
            }
            
            $this->assign('Teacher',$Teacher);

            //传递到V层
            $htmls = $this->fetch('Manager/teacherDetail');
            //返回编辑页面
            return $htmls;
        } catch (Exception $e) {
            return $this->error('系统错误'. $e->getMessage());
        }

    }
    public function managerAddTeacher()
    {
        //构造空Student对象
        $Teacher = new Student;
        $Teacher->id = 0;
        $Teacher->name ='';
        $Teacher->username = '';
        $Teacher->sex = 0;
        $Teacher->school = '';
        $Teacher->email = '';
        $Teacher->photo_url = '1.jpg';


        $this->assign('Teacher',$Teacher);

        //传递到V层
        $htmls = $this->fetch('Manager/teacherDetail');
        //返回编辑页面
        return $htmls;
    }
    /**
     * [saveTeacher 保存教师对象，有id则为edit，否则为add]
     * @return [msg] [返回数据库修改结果]
     */
    public function saveTeacher()
    {

        //获取学生id，id为0则表示添加学生，否则为编辑学生信息
        $id = $this->request->param('id');

        if(0 == $id){
            $Teacher = new Teacher;
        }else{
            $Teacher = Teacher::get($id);
        }
        //更新学生信息
        $Teacher->name =$this->request->param('name');
        $Teacher->username = $this->request->param('username');
        $Teacher->sex = $this->request->param('sex');
        $Teacher->school = $this->request->param('school');
        $Teacher->email = $this->request->param('email');
        $Teacher->photo_url = $this->request->param('photo_url');
        //保存学生信息
        if (!$Teacher->validate(true)->save()) {
            return $this->error('课程保存错误：' . $Teacher->getError());
        }else{
            return $this->success('操作成功', url('Manager/teacherList'));
        }
    }
    /**
     * [passwordEdit 密码修改页面]
     * @return [html] [密码修改页面]
     */
    public function passwordEdit()
    {
        return $this->fetch('Manager/passwordEdit');
    }
    /**
     * [passwordSave 修改密码保存]
     * @return [msg] [返回修改密码结果]
     */
    public function passwordSave()
    {
        //获取输入密码与新密码
        $oldPassword = $this->request->param('oldPassword');
        $newPassword = $this->request->param('newPassword');

        switch (Manager::changePassword(session('id'), $oldPassword, $newPassword)) {
            case '0':
                return $this->error('系统操作异常，请重试！');
                break;
            case '1':
                return $this->success('更新密码成功,请重新登录！', url('Login/index'));
                break;
            case '2':
                return $this->error('旧密码输入错误！');
                break;
            default:
                return $this->error('系统操作异常，请重试！');
                break;
        }
    }
}
?>