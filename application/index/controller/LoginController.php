<?php
namespace app\index\controller;
use think\Controller;
use app\model\Student;
use app\model\Teacher;
use app\model\Manager;

/**
* 用户登录管理
*/
class LoginController extends Controller
{

    //用户登录表单
	public function index()
	{
		// 显示登录表单
		
		return $this->fetch();
	}

    // 处理用户提交的登录数据
    public function login()
    {
        $identity = $this->request->param('identity');
        switch ($identity) {
            case '0':
                if(Student::login(input('post.username'), input('post.password'))){
                    //return $this->redirect(url('Student/index'));
                    return $this->success('login success', url('Student/index'));
                }
                break;
            case '1':
                if(Teacher::login(input('post.username'), input('post.password'))){
                    return $this->success('login success', url('Teacher/index'));
                }
                break;
            case '2':
                if(Manager::login(input('post.username'), input('post.password'))){
                    return $this->success('login success', url('Manager/index'));
                }
                break;
            default:
                return $this->error('no available account', url('index'));
                break;
        }

        return $this->error('username or password incorrent', url('index'));
	}

	// 注销
    public function logOut()
    {
        $status = false;
        //根据account判断用户类别
        switch (session('account')) {
            case '0':
                if(Student::logOut()){
                    $status = true;
                }
                break;
            case '1':
                if(Teacher::logOut()){
                    $status = true;
                }
                break;
            case '2':
                if(Manager::logOut()){
                    $status = true;
                }
                break;
            default:
                break;
        }
        //判断是否成功注销
        if ($status)
        {
            return $this->success('logout success', url('index'));
        } else {
            return $this->error('logout error', url('index'));
        }
    }
}


?>