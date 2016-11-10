<?php
namespace app\index\controller;
use think\Controller;
use app\model\Paper;
use app\model\PaperQuestion;
use app\model\Question;

/**
* 试卷管理
*/
class PaperController extends Controller
{

    //试卷管理页面
	public function index()
	{

		$htmls = $this->fetch('');
		return $htmls;
	}
	//试卷列表
	//试卷详情
	//试卷增加
	//试卷删除
	//试卷修改
}


?>