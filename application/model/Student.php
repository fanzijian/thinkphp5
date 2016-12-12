<?php
namespace app\model;
use think\Model;
//use app\model\Klass;

/**
* 学生
*/
class Student extends Model
{

	protected $dateFormat = 'Y年m月d日';	//日期格式
	
	//类型转换
	protected $type =[
		'create_time' => 'datetime',
	];

    /**
     * 用户登录
     * @param  string $username 用户名
     * @param  string $password 密码
     * @return bool  成功返回true，失败返回false。
     */
    static public function login($username, $password)
    {
        // 验证用户是否存在
        $map = array('username'=>$username);
        $Student = self::get($map);
        
        if ($Student != false)
        {
            // 验证密码是否正确
            if ($Student->checkPassword($password))
            {
                // 登录
                session('id', $Student->getData('id'));
                session('name', $Student->getData('name'));
                session('username', $Student->getData('username'));
                session('account', 0);
                return true;
            }
        }

        return false;
    }
    /**
     * [changePassword 修改密码]
     * @param  [int] $id          [学生id]
     * @param  [string] $oldPassword [学生旧密码]
     * @param  [string] $newPassword [学生新密码]
     * @return [int]              [0:系统操作异常; 1:更新密码成功; 2:原始密码错误]
     */
    static public function changePassword($id, $oldPassword, $newPassword)
    {
        //获取学生密码
        $Student = Student::get($id);
        if(false == $Student){
            return 0;//$this->error('未找到id为' . $id . '的学生！')
        }
        $password = $Student->password;
        //判断密码是否一致
        if($oldPassword != $password){
            return 2;//$this->error('原始密码错误！')
        }
        $Student->password = $newPassword;
        if(false === $Student->save()){
            return 0;//$this->error('更新密码失败，请重试！')
        }

        //返回判断结果
        return 1;//$this->success('更新密码成功！')
    }
    /**
     * 验证密码是否正确
     * @param  string $password 密码
     * @return bool           
     */
    public function checkPassword($password)
    {
        if ($this->getData('password') === $password)
        {
            return true;
        } else {
            return false;
        }
    }

    /*
     * 注销
     * @return bool 成功true,失败false.
     * author     fzj
     */
    static public function logOut()
    {
    	// 销毁session中数据
        session('id', null);
        session('name', null);
        session('username', null);
        session('account', null);
        return true;
    }

    /**
     * 判断用户是否已登录
     * @return boolean 已登录true
     * @author  fzj
     */
    static public function isLogin()
    {
        $id = session('id');
        if (isset($id) && session('account') == 0)
        {
            return true;
        } else {
            return false;
        }
    }
    
	/*
	 *输出性别属性
	 *@return     string ( 0:男，1:女 )
	 *@author     (fzj <1158534904@qq.com>)
	 */
	public function getSexAttr($value)
	{
		$status = array('0'=>'男','1'=>'女');
		$sex = $status[$value];
		if (isset($sex))
		{
			return $sex;
		}else{
			return $status[0];
		}
	}

	public function getCreateTimeAttr($value)
	{
		return date('Y-m-d', $value);
	}

	/*
	 *之所以能调用这个函数，是由于__get()的魔法函数来完成的。
	 */
    public function Klass()
	{
        return $this->belongsTo('klass');	
    }
    /**
     * [getCourseResult 获取学生某次课堂行为记录]
     * @param  [int] $id [课堂id]
     * @return [object] $CourseResult [课堂行为记录对象]
     */
    public function getCourseResult($id)
    {
        $CourseResult = CourseResult::where('course_schedule_id',$id)->where('stu_id',$this->id)->limit(1)->find();
        return $CourseResult;
    }
    /**
     * [getExamResult 获取学生某次测试统计结果记录]
     * @param  [int] $id [测试id,即exam_id]
     * @return [object] $ExamResult [测试统计结果记录对象]
     */
    public function getExamResult($id)
    {
        $ExamResult = ExamResult::where('exam_id',$id)->where('stu_id',$this->id)->limit(1)->find();
        return $ExamResult;
    }
    /**
     * [getCourseSchedules 获取学生参与的课堂列表]
     * @return [array] [课堂object列表数组]
     */
    public function getCourseSchedules()
    {
        $klass_id = $this->Klass->id;
        $courseScheduleIdLIst = KlassCourse::where('klass_id',$klass_id)->column('course_schedule_id');
        $courseSchedules = CourseSchedule::where('id','in',$courseScheduleIdLIst)->select();
        return $courseSchedules;
    }

}

?>