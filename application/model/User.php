<?php
namespace app\model;
use think\Model;
/**
* User 教室表
*/
class User extends Model
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
        $User = self::get($map);
        
        if ($User !== false)
        {
            // 验证密码是否正确
            if ($User->checkPassword($password))
            {
                // 登录
                session('userId', $User->getData('id'));
                session('name', $User->getData('name'));
                session('username', $User->getData('username'));
                session('userAccount', $User->account);
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
    static public function logOut()
    {
    	// 销毁session中数据
        session('userId', null);
        session('userAccount', null);
        return true;
    }

    /**
     * 判断用户是否已登录
     * @return boolean 已登录true
     * @author  fzj
     */
    static public function isLogin()
    {
        $userId = session('userId');
        if (isset($userId))
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
    /**
     * [getAccountAttr 输出权限信息]
     * @return [string]        [0:管理员, 1:学生, 2:教师]
     */
    public function getAccountAttr($value)
    {
        $status = array('0'=>'mgr', '1'=>'stu', '2'=>'tch');
        $account = $status[$value];
        if (isset($account))
        {
            return $account;
        }else{
            return $status[1];
        }
    }
    public function delete()
    {
        $this->is_block = 1;
        $this->save();
    }

}