<?php
namespace app\index\controller;
use think\Controller;
use app\model\Exam;

/**
* 考试管理
*/
class ExamController extends Controller
{

    //根据用户权限登录不同页面
	public function index()
	{
		$htmls = $this->fetch('');
		return $htmls;
	}
}


?>