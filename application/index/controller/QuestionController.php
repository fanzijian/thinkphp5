<?php
namespace app\index\controller;
use think\Controller;
use app\model\Question;

/**
* 试卷管理
*/
class QuestionController extends Controller
{

    //试题管理页面
	public function index()
	{

		$htmls = $this->fetch('');
		return $htmls;
	}
	

}


?>