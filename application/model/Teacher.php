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
    public function Courses()
    {
        return $this->hasMany('Course');
    }
}