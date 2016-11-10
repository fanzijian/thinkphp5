<?php
namespace app\index\controller;
use think\Controller;
use app\model\User;

/**
* 用户登录管理
*/
class UserController extends Controller
{

    //根据用户权限登录不同页面
	public function index()
	{

		$htmls = $this->fetch('');
		return $htmls;
	}
}


?>