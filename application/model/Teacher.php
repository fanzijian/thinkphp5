<?php
namespace app\model;
use think\Model;
/**
* Teacher 教室表
*/
class Teacher extends Model
{
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
        $Teacher = self::get($map);
        
        if ($Teacher != false)
        {
            // 验证密码是否正确
            if ($Teacher->checkPassword($password))
            {
                // 登录
                session('id', $Teacher->getData('id'));
                session('name', $Teacher->getData('name'));
                session('username', $Teacher->getData('username'));
                session('account', 1);
                return true;
            }
        }

        return false;
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
    static public function logout()
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
        if (isset($id) && session('account') == 1)
        {
            return true;
        } else {
            return false;
        }
    }
    /**
     * [changePassword 修改密码]
     * @param  [int] $id          [教师id]
     * @param  [string] $oldPassword [教师旧密码]
     * @param  [string] $newPassword [教师新密码]
     * @return [int]              [0:系统操作异常; 1:更新密码成功; 2:原始密码错误]
     */
    static public function changePassword($id, $oldPassword, $newPassword)
    {
        //获取学生密码
        $Teacher = Teacher::get($id);
        if(false == $Teacher){
            return 0;//$this->error('未找到id为' . $id . '的学生！')
        }
        $password = $Teacher->password;
        //判断密码是否一致
        if($oldPassword != $password){
            return 2;//$this->error('原始密码错误！')
        }
        $Teacher->password = $newPassword;
        if(false === $Teacher->save()){
            return 0;//$this->error('更新密码失败，请重试！')
        }

        //返回判断结果
        return 1;//$this->success('更新密码成功！')
    }
    /**
     * [getStudents 获取自己的学生对象全集]
     * @return [array]$students [一个由student对象组成的数组]
     */
    public function getStudents()
    {
        $courses = $this->Courses;
        if(false != $courses){

            $klasses = array();
            foreach ($courses as $key => $course) {
                $klasses = array_merge($klasses, $course->Klasses);
            }
            if(false != $klasses){
                $students = array();
                foreach ($klasses as $key => $klass) {
                    $students = array_merge($students, $klass->Students);
                }
                return $students;
            }
        }
        return null;
    }
    /**
     * [getStudentsIdList 获取自己学生的id全集]
     * @return [array]$studentsIdList [如果没有学生，返回null，否则返回学生id数组]
     */
    public function getStudentsIdList()
    {
        $students = $this->getStudents();
        if(false != $students){
            $studentsIdList = array();
            foreach ($students as $key => $student) {
                array_push($studentsIdList, $student->id);
            }
            return $studentsIdList;
        }
        return null;
    }
    public function Courses()
    {
        return $this->hasMany('Course');
    }
    public function checkIsMyStudent($id)
    {
        $studentsIdList = $this->getStudentsIdList;
        return in_array($studentsIdList, $id);

    }
    public function getStuSelfLearningListByStuName($stuName)
    {
        $studentsIdList = Student::where('name','like','%' . $stuName . '%')->column('id');

        $selfLearningList = $this->getStuSelfLearningListByStuIdList($studentsIdList);

        return $selfLearningList;
    }
    public function getStuSelfLearningListByStuUsername($stuUsername)
    {
        $studentsIdList = Student::where('name','like','%' . $stuUsername . '%')->column('id');

        $selfLearningList = $this->getStuSelfLearningListByStuIdList($studentsIdList);

        return $selfLearningList;
    }
    public function getStuSelfLearningListByStuIdList($studentsIdList)
    {
        //$selfLearningList = new Learn;
        if(empty($studentsIdList)){
            return null;
        }
        $selfLearningList = Learn::where('stu_id','in', $studentsIdList)->select();
        if(false != $selfLearningList){
            return $selfLearningList;
        }
        return null;
    }
    public function getStuSelfLearningListByLearningName($learningName)
    {
        $selfLearningList = Learn::where('name','like','%' . $learningName . '%')->select();
        return $selfLearningList;
    }
}