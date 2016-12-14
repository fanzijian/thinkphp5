<?php
namespace app\model;
use think\Model;

/**
* 自习表
*/
class Learn extends Model
{
	public function Student()
	{
		return $this->belongsTo('Student','stu_id');
	}
	public function CourseSchedule()
	{
		return $this->belongsTo('CourseSchedule');
	}
	/**
	 * [getContent 返回自习主题]
	 * @return [type] [description]
	 */
	public function getContent()
	{
		return $this->CourseSchedule->getData('name');
	}
	/**
	 * [getEngagement 返回关注程度]
	 * @return [type] [description]
	 */
	public function getEngagement()
	{
		$engagement = 21;
		return $engagement;
	}
	/**
	 * [getMaxMinute 获取本次自习的最大分钟数]
	 * @return [int] $maxMinute [最大分钟数]
	 */
	public function getMaxMinute()
	{
		$maxMinute = LearnProcess::where('learn_id',$this->id)->Max('minute');
		return $maxMinute;
	}
	/**
	 * [getKeyContent 返回自习关键区域列表]
	 * @return [array] $content [关键区域列表]
	 */
	public function getKeyContent()
	{
		$content = array(1,2,3);
		return $content;
	}
	/**
	 * [getProcessData 返回自习过程各个区域关注度数据]
	 * @return [array] $processData [各区域关注度数据,当数据缺失时，用0填充]
	 * 注释的部分未考虑中间数据缺失的情况！！
	 */
	public function getProcessData()
	{
		$processData = array();

		$content = $this->getKeyContent();
		//定义关键区间
		//选择答题过程数据并排序
		// $learnProcesses = LearnProcess::where('learn_id',$learn_id)->where('content_type','in',$content)
		// ->order('minute asc,content_type asc')->select();
		//获取最大时长
		$maxMinute = $this->getMaxMinute();
		for ($i=0; $i < $maxMinute; $i++) { 
			for ($j=0; $j < count($content); $j++) { 
				//赋值到过程二维数组，注意可能存在数据缺失的情况
				//$processData[$i][$j] =($i * count($content) + $j + 1) < count($learnProcesses)?$learnProcesses[$i * count($content) + $j + 1]:0;
				$learnProcess = LearnProcess::get(['learn_id'=>$this->id,'minute'=>$i+1,'content_type'=>$j+1]);
				$processData[$i][$j] = 0;
				if(false != $learnProcess){
					$processData[$i][$j] = $learnProcess->attention_rate;
				}
			}
		}
		return $processData;
	}
	/**
	 * [getEngagementDistribution 获取本次自习关注度分布]
	 * @return [string] $engagementDistribution [关注度分布]
	 */
	public function getEngagementDistribution()
	{
		$engagementDistribution = "4:5";
		return $engagementDistribution;
	}
	/**
	 * [getEffection 获取自习效果]
	 * @return [float] $effection [自习效果]
	 */
	public function getEffection()
	{
		$effection = 0.89;
		return $effection;
	}
	/**
	 * [getExamResult 获取学生自习答题结果]
	 * @return [array] $questionResults [学生答题数据对象数组]
	 */
	public function getExamResult()
	{
		//获取exam_id
		$exam_id = $this->CourseSchedule->Exam->id;
		//获取stu_id
		$stu_id = $this->stu_id;
		//获取答题结果记录
		$questionResults = QuestionResult::where('exam_id',$exam_id)->where('stu_id',$stu_id)->select();
		return $questionResults;
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