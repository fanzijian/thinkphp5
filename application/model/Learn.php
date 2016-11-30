<?php
namespace app\model;
use think\Model;

/**
* 自习表
*/
class Learn extends Model
{
	public function CourseSchedule()
	{
		return $this->belongsTo('CourseSchedule');
	}

	public function LearnStatisticses()
	{
		//return LearnStatistics::where('learn_id',$this->id)->select();
		return $this->hasMany('LearnStatistics');
	}
	public function getLearnBehaviorResultList()
	{
		$learn_id = $this->id;
		$learnBehaviorResultList = LearnBehaviorResult::where('learn_id', $learn_id)->select();

		return $learnBehaviorResultList;
	}

	public function getLearnStatusList()
	{
		$learn_id = $this->id;
		$learnStatusList = LearnStatus::where('learn_id', $learn_id)->select();

		return $learnStatusList;
	}

	public function getLearnPatternList()
	{
		$learn_id = $this->id;
		$learnPatternList = LearnPattern::where('learn_id', $learn_id)->select();

		return $learnPatternList;
	}

	public function getStudents()
	{
		return $this->CourseSchedule->getStudents();
	}
}

?>