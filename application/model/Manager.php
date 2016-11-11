<?php
namespace app\model;
use think\Model;

/**
* 班级
*/
class Manager extends Model
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
        $Manager = self::get($map);
        
        if ($Manager != false)
        {
            // 验证密码是否正确
            if ($Manager->checkPassword($password))
            {
                // 登录
                session('id', $Manager->getData('id'));
                session('name', $Manager->getData('name'));
                session('username', $Manager->getData('username'));
                session('account', 2);
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
        if (isset($id) && session('account') == 2)
        {
            return true;
        } else {
            return false;
        }
    }
    /**
     * [changePassword 修改密码]
     * @param  [int] $id          [管理员id]
     * @param  [string] $oldPassword [管理员旧密码]
     * @param  [string] $newPassword [管理员新密码]
     * @return [int]              [0:系统操作异常; 1:更新密码成功; 2:原始密码错误]
     */
    static public function changePassword($id, $oldPassword, $newPassword)
    {
        //获取学生密码
        $Manager = Manager::get($id);
        if(false == $Manager){
            return 0;//$this->error('未找到id为' . $id . '的学生！')
        }
        $password = $Manager->password;
        //判断密码是否一致
        if($oldPassword != $password){
            return 2;//$this->error('原始密码错误！')
        }
        $Manager->password = $newPassword;
        if(false === $Manager->save()){
            return 0;//$this->error('更新密码失败，请重试！')
        }

        //返回判断结果
        return 1;//$this->success('更新密码成功！')
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


}

?>