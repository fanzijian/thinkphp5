<?php
namespace app\index\controller;
use app\model\Student;
use app\model\Klass;
use app\model\Exam;
use app\model\QuestionResult;
use app\model\Question;
use think\Request; 

/**
* 
*/
class StudentController extends IndexController
{
	
	public function index()
	{
		//生成查询条件
		$map = array();
		$map['username'] = session('username');

		//查询对象是否存在
		if(is_null($Student = Student::get($map))){
			return $this->error('未找到编号' . $map['username'] . '的记录');
		}

		$this->assign('Student',$Student);

		//返回页面
		return $this->fetch('Student/index');
	}

	public function edit()
	{
		//生成查询条件
		$map = array();
		$map['username'] = session('username');

		//查询对象是否存在
		if(is_null($Student = Student::get($map))){
			return $this->error('未找到编号' . $map['username'] . '的记录');
		}

		//取出班级列表
		$klasses = Klass::all();
		$this->assign('klasses',$klasses);

		$this->assign('Student', $Student);

		return $this->fetch();
	}

	public function save()
	{
		//消息初始化
		$message = '';
		$error = '';
		try {
			$id = input('post.id');
			$student = Student::get($id);
			//获取输入的数据
			//实例化学生对象
			
			$student->name = input('post.name');
			$student->username = input('post.username');
			$student->sex = input('post.sex');
			$student->school = input('post.school');
			$student->klass_id = input('post.klass_id');
			$student->email = input('post.email');

			//更新实例,加入验证消息
			$message = '更新成功';
			if(false === $student->validate(true)->save())
			{
				$error = '更新失败' . $student->getError();
			}
		} catch (Exception $e) {
			$error = '系统错误:' . $e->getMessage();
		}


		//返回消息
		if($error === '')
		{
			return $this->success($message, url('index'));
		}else{
			return $this->error($error);
		}
	}

	/**
	 * [showExamList 考试列表]
	 * @return [html] [包含exam对象的html]
	 */
	public function showExamList()
	{
		$pageSize = 5;

		//生成查询条件
		$map = array();
		$map['username'] = session('username');

		//查询对象是否存在
		if(is_null($Student = Student::get($map))){
			return $this->error('未找到编号' . $map['username'] . '的记录');
		}

		//获取考试记录
		$exams = Exam::all();

		//返回考试列表
		$this->assign('exams',$exams);

		$this->assign('Student',$Student);
		$htmls = $this->fetch('Student/examList');

		return $htmls;
	}
	/**
	 * [showQuestionResult 获取单次考试的试卷以及答题结果信息]
	 * @return [htmls] [返回包含答题结果信息的htmls]
	 */
	public function showQuestionResult()
	{
		$pageSize = 5;
		//获取输入信息stu_id,exam_id
		$map = array();
		$map['stu_id'] = $this->request->param('stu_id');
		$map['exam_id'] = $this->request->param('exam_id');
		// $map['stu_id'] = 10;
		// $map['exma_id'] = 1;
		//查看是否有该学生的该次测试结果
		try {
			$QuestionResult = new QuestionResult;
			$questionResults = $QuestionResult->where('stu_id', $map['stu_id'])->where('exam_id',$map['exam_id'])->paginate($pageSize);
			if(false === $QuestionResult){
				throw new \Exception('不存在考试数据！' . $QuestionResult->getError());
			}
			$this->assign('questionResults',$questionResults);
			$htmls = $this->fetch('Student/questionResult');
			return $htmls;
		} catch (Exception $e) {
			return $this->error('系统错误' . $e->getMessage());
		}
	}
	/**
	 * [showQuestion 获取展示题目信息]
	 * @return [html] [包含Question对象的htmls]
	 */
	public function showQuestion()
	{
		//获取查询question_id
		$id = $this->request->param('question_id');
		//查看是否存在question记录
		$Question = Question::get($id);
		if(false === $Question){
			return $this->error('未找到id为' . $id . '的题目记录！');
		}
		//返回数据到V层
		$this->assign('Question',$Question);
		$htmls = $this->fetch('Student/question');

		return $htmls;
	}
	/**
	 * [showQuestionAnalysis 展示学生某题眼动分析结果]
	 * @return [htmls] [包含绘图用的分析结果data对象以及student对象]
	 */
	public function showQuestionAnalysis()
	{
		//获取答题记录id
		$id = $this->request->param('id');
		//获取答题记录信息
		$QuestionResult = QuestionResult::get($id);
		if(false === $QuestionResult){
			return $this->error('未找到id为' . $id . '的题目记录！');
		}
		//var_dump($QuestionResult);
		$data = array();
		//格式化绘图数据
		$data['data'] = [['A选项',(float)$QuestionResult->duration_a],
				['B选项',(float)$QuestionResult->duration_b],
				['C选项',(float)$QuestionResult->duration_c],
				['D选项',(float)$QuestionResult->duration_d],
				['其他区域',(float)$QuestionResult->duration_others]];
		$data['title'] = '第' . $id . '答题眼动注视时长百分比图';
		$data['subtitle'] = '答题总时长' . $QuestionResult->duration . '秒';
		//绑定数据到V层
		$this->assign('data',json_encode($data));
		//$this->assign('title',$title);
		//返回htmls
		$htmls = $this->fetch('Student/analysis');

		return $htmls;
	}
	public function showExamAnalysis()
	{
		//获取测试编号exam_id，stu_id
		$map = array();
		$map['stu_id'] = $this->request->param('stu_id');
		$map['exam_id'] = $this->request->param('exam_id');

		try {
			//根据exam_id，stu_id在question_result表中查找答题的具体数据
			$QuestionResult = new QuestionResult;
			$questionResults = $QuestionResult->where($map);
			if(false === $QuestionResult){
				throw new \Exception('不存在考试数据！' . $QuestionResult->getError());
			}
			//根据exam_id，stu_id在exam_result表中查找该次测试的分析数据
			//传递数据到V层
			$this->assign('questionResults',$questionResults);
			//返回htmls
			$htmls = $this->fetch('Student/examResult');
			return $htmls;
		} catch (Exception $e) {
			return $this->error('系统错误' . $e->getMessage());
		}
	}
}


?>