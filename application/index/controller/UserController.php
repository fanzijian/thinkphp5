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

		$htmls = $this->fetch('lessonList');
		return $htmls;
	}

	public function showLessonDetail()
	{
		return $this->fetch('lessonDetail');
	}

	public function showLessonAnalysisList()
	{
		return $this->fetch('lessonAnalysisList');
	}

	public function showLessonAnalysisDetail()
	{
		return $this->fetch('lessonAnalysisDetail');
	}

	public function showPaperList()
	{
		return $this->fetch('paperList');
	}

	public function showPaperProcessDetail()
	{
		return $this->fetch('paperProcessDetail');
	}

	public function showPaperQuestionAnalysisList()
	{
		return $this->fetch('paperQuestionAnalysisList');
	}

	public function showPaperQuestionAnalysisDetail()
	{
		return $this->fetch('paperQuestionAnalysisDetail');
	}

	public function showSelfLearningList()
	{
		return $this->fetch('selfLearningList');
	}

	public function showSelfLearningDetail()
	{
		return $this->fetch('selfLearningDetail');
	}

	public function showSelfLearningAnalysisList()
	{
		return $this->fetch('selfLearningAnalysisList');
	}

	public function showSelfLearningAnalysisDetail()
	{
		return $this->fetch('selfLearningAnalysisDetail');
	}
}


?>