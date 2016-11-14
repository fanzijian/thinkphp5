<?php
namespace app\index\controller;
use think\Controller;//用于与V层进行数据传递
use app\model\Teacher;//教师模型
use app\model\Student;//学生模型
use app\model\Klass;//班级模型
use app\model\Course;
use app\model\Exam;
use app\model\Question;
use app\model\ExamResult;
use app\model\CourseSchedule;
use app\model\CourseResult;
/**
*教师管理，继承think\Controller后，就可以利用V层对数据进行打包。
*/
class TeacherController extends IndexController
{

    public function index()
    {
        try {

            //生成查询条件
            $map = array();
            $map['username'] = session('username');

            //查询对象是否存在
            if(is_null($Teacher = Teacher::get($map))){
                return $this->error('未找到编号' . $map['username'] . '的记录');
            }

            $this->assign('Teacher',$Teacher);

            //返回页面
            $htmls = $this->fetch('Teacher/index');

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
            if(is_null($Teacher = Teacher::get($map))){
                return $this->error('未找到编号' . $map['username'] . '的记录');
            }

	        // 将数据传给V层
	        $this->assign('Teacher', $Teacher);

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
        $Teacher = Teacher::get($id);

        if(!is_null($Teacher)){
            if(!$this->saveTeacher($Teacher,true)){
                return $this->error('操作失败' . $Teacher->getError());
            }
        }else{
            return $this->error('当前操作记录不存在！');
        }

        return $this->success('操作成功', url('index'));
    }
    
    private function saveTeacher(Teacher &$Teacher, $isUpdate = false)
    {
        $Teacher->name =$this->request->param('name');
        $Teacher->username = $this->request->param('username');
        $Teacher->sex = $this->request->param('sex');
        $Teacher->school = $this->request->param('school');
        $Teacher->email = $this->request->param('email');
        $Teacher->photo_url = $this->request->param('photo_url');
        return $Teacher->validate(true)->save();
    }


    /**
     * [studentList 学生列表]
     * @return [html] [返回包含students对象]
     */
    public function studentList()
    {
        
        $Student = new Student;
        $Teacher = Teacher::get(['id'=>session('id')]);

        $pageSize = 5;
        //获取查询类别
        
        $search_type = $this->request->param('search_type');
        if(null == $search_type){
            $search_type = 0;
        }
        $search_content = $this->request->param('search_content');

        $search_attribute = array('0'=>'name', '1'=>'username', '2'=>'');
        

        //查询是否有相应学生对象
        $students = $Student->where('id','in',$Teacher->getStudentsIdList())->where($search_attribute[$search_type], 'like', '%' . $search_content . '%')->paginate($pageSize);
        
        //传递到V层
        $this->assign('students',$students);
        //返回对象
        $htmls = $this->fetch('Teacher/studentList');

        return $htmls;
    }
    /**
     * [teacherDeleteStudent 教师删除学生]
     * @return [msg] [返回删除结果，success成功，error失败]
     */
    public function teacherDeleteStudent()
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
            return $this->success($message, url('Teacher/studentList'));
        } catch (Exception $e) {
            // 程序异常执行，接收异常并报错。
            return $this->error('系统错误' . $e->getMessage());
        }
    }
    /**
     * [teacherEditStudent 教师编辑学生信息]
     * @return [html] [返回包含Student对象]
     */
    public function teacherEditStudent()
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
            $htmls = $this->fetch('Teacher/studentDetail');
            //返回编辑页面
            return $htmls;
        } catch (Exception $e) {
            return $this->error('系统错误'. $e->getMessage());
        }
    }
    /**
     * [teacherAddStudent 教师添加学生信息]
     * @return [html] [返回包含空Student对象]
     */
    public function teacherAddStudent()
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
        $htmls = $this->fetch('Teacher/studentDetail');
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
            return $this->success('操作成功', url('Teacher/studentList'));
        }
    }
    /**
     * [showExamList 考试列表]
     * @return [html] [包含exam对象的html]
     */
    public function showExamList()
    {
        $Exam = new Exam;

        $pageSize = 5;
        //获取查询类别
        
        $search_type = $this->request->param('search_type');

        $search_content = $this->request->param('search_content');

        if(null == $search_type){
            $search_type = 2;
        }

        if(0 == $search_type){
            //根据课程名称搜索,待优化，无法实现模糊匹配
            $map['name'] = $search_content;
            $course = Course::get($map);
            if(false == $course){
                return $this->error('未找到名称为' . $map['name'] . '的课程');
            }
            $exams = $course->Exams()->select();
            //$exams = $Exam->Course->where('name','like','%' . $search_content . '%')->paginate($pageSize);
        }else if(1 == $search_type){
            //根据exam_id搜索
            $exam_id = $search_content;
            if('' == $exam_id){
                $exams = $Exam->all();
            }else{
                $exams = $Exam->where('id',$exam_id)->select();
            }

        }else if(2 == $search_type){
            //其他未定义
            $exams = $Exam->all();
        }

        //传递到V层
        $this->assign('exams',$exams);
        //返回对象
        $htmls = $this->fetch('Teacher/examList');

        return $htmls;
    } 

    /**
     * [showExamQuestionList 获取试题列表]
     * @return [html] [返回试卷试题页面]
     */
    public function showExamQuestionList()
    {
        //获取页码
        $page = $this->request->param('page');
        if(is_null($page)){
            $page = 1;
        }
        //获取exam_id
        $exam_id = $this->request->param('exam_id');
        //根据exam_id获取paper_id
        $Exam= Exam::get($exam_id);
        if(false == $Exam){
            return $this->error('未找到id为' . $exam_id . '的对象！');
        }
        //获取题目对象questions
        $questions = $Exam->getQuestionList();

        $this->assign('total_page',count($questions));
        $this->assign('question',$questions[$page-1]);
        //返回查询结果
        $htmls = $this->fetch('Teacher/questionList');
        return $htmls;
    }
    /**
     * [showExamAnalysis 进入可视化对比展示选择页面]
     * @return [htmls] [返回包含exam、student对象全集]
     */
    public function showExamAnalysis()
    {

        $exams = Exam::all();
        //$students = Student::all();

        $Teacher = Teacher::get(['id'=>session('id')]);
        if(false == $Teacher){
            return $this->error('未找到id为' . $session('id') . '的老师！');
        }
        $students = $Teacher->getStudents();

        if(false == $exams){
            return $this->error('不存在考试数据！');
        }
    
        if(false == $students){
            return $this->error('未找到学生数据！');
        } 

        $this->assign('exams',$exams);
        $this->assign('students',$students);
        
        //返回页面

        $htmls = $this->fetch('Teacher/examAnalysis');
        return $htmls;
    }
    /**
     * [showExamAnalysisResult 获取查询对比绘图数据]
     *@return [json] [返回名为data的json对象，包含title，xAxis，data等数据]
     */
    public function showExamAnalysisResult()
    {
        $status = true;
        $data = array();
        //获取查询类别以及查询内容
        $search_type = $this->request->param('search_type');
        $search_content = $this->request->param('search_content');
        
        //初始化查询
        $ExamResult = new ExamResult;

        $attribute = ['accuracy','duration_total','duration_average','attribute_2'];
        //获取选择内容
        if(0 == $search_type){
            //某个学生多次考试之间对比

            //获取查询内容
            $stu_username = $search_content;
            $Student = Student::get(['username'=>$stu_username]);
            if(false == $Student){
                $status = false;
            }else{
                $stu_id = $Student->id;
                $stu_name = $Student->name;
                $examIdList = $this->request->param('examIdList/a');

                //获取图表的标题和X轴
                $data['title'] = array(
                            0 => $stu_name . '多次考试' . $attribute[0] . '指标对比结果',
                            1 => $stu_name . '多次考试' . $attribute[1] . '指标对比结果',
                            2 => $stu_name . '多次考试' . $attribute[2] . '指标对比结果',
                            3 => $stu_name . '多次考试' . $attribute[3] . '指标对比结果'
                                );
                $data['xAxis'] = array(
                            0 => $examIdList,
                            1 => $examIdList,
                            2 => $examIdList,
                            3 => $examIdList
                            );
                //i表示第i个指标
                for ($i=0; $i <4 ; $i++) { 
                        $data['data'][$i] = array(
                                     'name' => $attribute[$i],
                                     'data' =>  $ExamResult->where('stu_id',$stu_id)->where('exam_id','in',$examIdList)->column($attribute[$i])
                                     );
                }
            }

        }else if(1 == $search_type){
            //某次考试多个学生之间对比

            //获取查询内容
            $exam_id = $search_content;
            $stuIdList = $this->request->param('studentIdList/a');
            if(false == Exam::get(['id'=>$exam_id])){
                $status = false;
            }else{
                $stuNameList = Student::where('id','in',$stuIdList)->column('name');
                //$examResults = $ExamResult->where('exam_id',$exam_id)->where('stu_id','in',$stuIdList);
                //获取图表的标题和X轴
                $data['title'] = array(
                            0 => '第'. $exam_id . '次考试' . $attribute[0] . '指标学生间对比结果',
                            1 => '第'. $exam_id . '次考试' . $attribute[1] . '指标学生间对比结果',
                            2 => '第'. $exam_id . '次考试' . $attribute[2] . '指标学生间对比结果',
                            3 => '第'. $exam_id . '次考试' . $attribute[3] . '指标学生间对比结果'
                                );
                $data['xAxis'] = array(
                            0 => $stuNameList,
                            1 => $stuNameList,
                            2 => $stuNameList,
                            3 => $stuNameList
                            );
                //i表示第i个指标
                for ($i=0; $i <4 ; $i++) { 
                        $data['data'][$i] = array(
                                     'name' => $attribute[$i],
                                     'data' => $ExamResult->where('exam_id',$exam_id)->where('stu_id','in',$stuIdList)->column($attribute[$i])
                                     );
                }  
            }

        }
        $msg['status'] = $status;
        $msg['data'] = $data;
        return json_encode($msg);
    }
    /**
     * [passwordEdit 密码修改页面]
     * @return [html] [密码修改页面]
     */
    public function passwordEdit()
    {
        return $this->fetch('Teacher/passwordEdit');
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

        switch (Teacher::changePassword(session('id'), $oldPassword, $newPassword)) {
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
    /**
     * [showCourseList 展示该教师教学的课程列表]
     * @return [html] [返回包含course对象的html]
     */
    public function showCourseList()
    {
        //初始化数据
        $pageSize = 5;
        //获取查询内容
        $search_type = $this->request->param('search_type');
        $search_content = $this->request->param('search_content');
        if(is_null($search_type)||'' == $search_type){
            $search_type = 0;
        }
        if(0 == $search_type){
            //查找course对象
            $courses = Course::where('teacher_id',session('id'))->where('name', 'like', '%' . $search_content . '%')->paginate($pageSize);
        }
        //绑定数据到V层
        $this->assign('courses', $courses);
        $htmls = $this->fetch('Teacher/courseList');
        return $htmls;
        //返回
    }

    public function showCourseSchedule()
    {
        //获取课程id
        $course_id = $this->request->param('id');

        //获取时间安排表
        $courseSchedules = CourseSchedule::where('course_id',$course_id)->select();

        $this->assign('courseSchedules',$courseSchedules);

        $htmls = $this->fetch('Teacher/courseSchedule');
        //返回详情页面
        return $htmls;
    }
    public function showCourseResult()
    {
        $courseResults = new CourseResult;
        $type = $this->request->param('type');
        //获取查询类别,1:学生查询，2：课程查询
        $search_type = $this->request->param('search_type');
        if(1 == $search_type){
            //获取学生学号，获取课程名称
            $stu_username = $this->request->param('stu_username');
            $course_name = $this->request->param('course_name');
            //获取查询对象id
            $Student = Student::get(['username'=>$stu_username]);
            if(false == $Student){
                return $this->error('未找到该学生！');
            }
            $stu_id = $Student->id;
            $Course  = Course::get(['name'=>$course_name]);
            if(false == $Course){
                return $this->error('未找到该课程！');
            }
            $course_id = $Course->id;

            //获取学生课程结果对象全集
            $courseResults = CourseResult::where('stu_id',$stu_id)->where('course_id',$course_id)->select();


        }else if(2 == $search_type){
            //获取课程id,节次
            $course_name = $this->request->param('course_name');

            $Course  = Course::get(['name'=>$course_name]);
            if(false == $Course){
                return $this->error('未找到该课程！');
            }
            $course_id = $Course->id;
            $num = $this->request->param('num');

            //获取学生课程结果对象全集
            $courseResults = CourseResult::where('course_id',$course_id)->where('num',$num)->select();


        }
        $this->assign('courseResults',$courseResults);
        $this->assign('type',$type);
        $htmls = $this->fetch('Teacher/courseResult');
        return $htmls;
    }

    public function showCourseAnalysis()
    {

        $htmls = $this->fetch('courseAnalysis');
        return $htmls;
    }
    public function test()
    {
        $courseResults = CourseResult::where('course_id',1)->where('stu_id',15)->select();

        $hand_up = array();
        $stand_up = array();
        $sleep_on_desk = array();
        $participation_degree = array();

        foreach ($courseResults as $key => $courseResult) {
            array_push($hand_up, $courseResult->hand_up);
        }

        var_dump($hand_up);
    }
}
?>