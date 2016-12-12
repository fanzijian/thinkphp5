<?php
namespace app\model;
use think\Model;

/**
* 知识点
*/
class KnowledgePoint extends Model
{
	public function CourseSchedule()
	{
		return $this->belongsTo('CourseSchedule');
	}
	public function getDifficultyAttr($value)
	{
		$status = array('0' => '简单','1' => '一般','2' => '较难','3' => '非常难');
		$difficulty = $status[$value];

		if(isset($difficulty)){
			return $difficulty;
		}else{
			return $status[3];
		}
	}
	/**
	 * [getCourseName 获取课程名称]
	 * @return [string] [课程名称，当查询失败时，返回空]
	 */
	public function getCourseName()
	{
		$CourseSchedule = CourseSchedule::get(['id'=>$this->course_schedule_id]);
		if(false !== $CourseSchedule){
			return $CourseSchedule->Course->name;
		}
		return null;
	}
	/**
	 * [getCourseNum 返回课程章节第几讲]
	 * @return [int] [第几讲，失败则返回null]
	 */
	public function getCourseNum()
	{
		$CourseSchedule = CourseSchedule::get(['id'=>$this->course_schedule_id]);
		if(false !== $CourseSchedule){
			return $CourseSchedule->num;
		}
		return null;
	}
	/**
	 * [getPerformance 获取课堂表现]
	 * @return [array] performance [返回课堂表现查询结果，若无结果，查询返回0；查询成功，返回该知识点授课阶段的举手，站立，趴桌，参与度等表现数据]
	 */
	public function getPerformance()
	{
		$performance = array('hand_up'=>0,'stand_up'=>0,'sleep_on_desk'=>0,'engagement'=>0);
		$lessonProcesses = LessonProcess::where('course_schedule_id',$this->course_schedule_id)->where('minute','between',"$this->start_minute,$this->end_minute")->select();
		if(false !== $lessonProcesses){
			foreach ($lessonProcesses as $key => $lessonProcess) {
				$performance['hand_up'] += $lessonProcess->hand_up;
				$performance['stand_up'] += $lessonProcess->stand_up;
				$performance['sleep_on_desk'] += $lessonProcess->sleep_on_desk;
				$performance['engagement'] += $lessonProcess->activeness;
			}
			$performance['engagement'] = round($performance['engagement']/count($lessonProcesses),2);
		}
		return $performance;
	}
	/**
	 * [getRelateQuestion 获取知识点相关考题]
	 * @return [array] relateQuestionIdList [返回试题id列表]
	 */
	public function getRelateQuestion()
	{
		$relateQuestionIdList = Question::where('knowledge_point_id',$this->id)->column('id');
		return $relateQuestionIdList;
	}
	/**
	 * [getTeachingEffect 获取教学效果]
	 * @return [string] [分为四级['合格','良','优秀','不合格']]
	 */
	public function getTeachingEffect()
	{
		$value = 60;
		$teachingEffect = '0';
		if($value < 60){
			$teachingEffect = '不合格';
		}else if($value < 75){
			$teachingEffect = '合格';
		}else if($value < 85){
			$teachingEffect = '良';
		}else if($value < 100){
			$teachingEffect = '优秀';
		}
		return $teachingEffect;
	}
	/**
	 * [getStuPerformance 获取某个学生学习某个知识点时的上课行为信息，以及答题的结果分析信息]
	 * @param  [int] $id [学生id]
	 * @return [array] $performance [包含行为，答题分析信息的数组；('hand_up'=>举手次数,'stand_up'=>站立次数,
	 * 'sleep_on_desk'=>趴桌次数,'accuracy'=>正确率,'engagement'=>参与度,'average_speed'=>平均解题速度,
	 * 'average_attention'=>平均关注程度,'mastery'=>掌握程度);]
	 */
	public function getStuPerformance($id)
	{
		$performance = array('hand_up'=>0,'stand_up'=>0,'sleep_on_desk'=>0,'accuracy'=>0,'engagement'=>0,'average_speed'=>0,'average_attention'=>0,'mastery'=>0);
		$lessonProcesses = LessonStuProcess::where('course_schedule_id',$this->course_schedule_id)->where('stu_id',$id)
		->where('minute','between',"$this->start_minute,$this->end_minute")->select();
		//获取课堂参与度等表现信息
		if(false !== $lessonProcesses && !empty($lessonProcesses)){
			foreach ($lessonProcesses as $key => $lessonProcess) {
				$performance['hand_up'] += $lessonProcess->hand_up;
				$performance['stand_up'] += $lessonProcess->stand_up;
				$performance['sleep_on_desk'] += $lessonProcess->sleep_on_desk;
				$performance['engagement'] += $lessonProcess->activeness;
			}
			$performance['engagement'] = round($performance['engagement']/count($lessonProcesses),2);
		}
		//获取答题结果等分析信息
		$questionIdList = $this->getRelateQuestion();
		$exam_id = Exam::get(['course_schedule_id'=>$this->course_schedule_id])->id;
		$questionResults = QuestionResult::where('stu_id',$id)->where('exam_id',$exam_id)->where('question_id','in',$questionIdList)->select();
		//echo $this->getLastSql();
		//统计答题结果数据
		foreach ($questionResults as $key => $questionResult) {
			$performance['accuracy'] += $questionResult->is_right;
			$performance['average_speed'] += $questionResult->duration;
			$performance['average_attention'] += round($questionResult->duration_others/$questionResult->duration,4);
			$performance['mastery'] += $questionResult->is_right * (100/$questionResult->duration);
		}

		$questionNum = count($questionResults);
		$performance['accuracy'] = round($performance['accuracy']/$questionNum,2);
		$performance['average_speed'] = round($performance['average_speed'] / $questionNum, 2);
		$performance['average_attention'] = round($performance['average_attention'] / $questionNum, 2);
		$performance['mastery'] = round($performance['mastery'] / $questionNum,2);

		return $performance;
	}

}
?>