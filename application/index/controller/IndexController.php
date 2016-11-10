<?php
namespace app\index\controller;
use think\Controller;
use app\model\Teacher;
use app\model\Student;
use app\model\Manager;

class IndexController extends Controller
{
    public function __construct()
    {
        // 调用父类构造函数(必须)
        parent::__construct();

        // 验证用户是否登录
        $status = false;
        //根据account判断用户类别
        switch (session('account')) {
            case '0':
                if(Student::isLogin()){
                    $status = true;
                }
                break;
            case '1':
                if(Teacher::isLogin()){
                    $status = true;
                }
                break;
            case '2':
                if(Manager::isLogin()){
                    $status = true;
                }
                break;
            default:
                break;
        }
        //判断是否成功注销
        if (!$status)
        {
            return $this->error('plz login first', url('Login/index'));
        }
    }

}
