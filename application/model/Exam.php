<?php
namespace app\model;
use think\Model;

/**
* 考试表
*/
class Exam extends Model
{
	public function Paper()
    {
        return $this->belongsTo('paper');
    }

	public function Course()
    {
        return $this->belongsTo('course');
    }
    /**
     * 获取该次考试的试题对象
     * @return [Question] (如果查找试卷正常，返回question对象，否则返回question对象为空对象)
     */
	public function getQuestionList()
	{
		//获取paper_id
		$paper_id = $this->paper_id;
		//根据paper_id查询对应的question_id数组
		$questionIdList = PaperQuestion::where('paper_id',$paper_id)->column('question_id');
		//判断question_id数组是否为空
		$Question = new Question;
		$questions = $Question;

		//根据question_id数组获取question对象并返回
		if(!empty($questionIdList)){
			$questions = $Question->all($questionIdList);
		}

		return $questions;
	}
}

?>