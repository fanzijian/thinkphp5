<?php
namespace app\model;
use think\Model;

/**
* 考试结果表
*/
class QuestionResult extends Model
{
	public function Exam()
    {
        return $this->belongsTo('exam');
    }

	public function Question()
    {
        return $this->belongsTo('question');
    }
    /**
     * [getHesitation 获取本条记录，学生答题的犹疑度]
     * @return [type] [description]
     */
    public function getHesitation()
    {
        $hesitation = round(($this->visit_count_a + $this->visit_count_b + $this->visit_count_c + $this->visit_count_d)/11,2);
        return $hesitation;
    }
    /**
     * [getRightAnswer 获取正确答案]
     * @return [string] $answer [正确答案]
     */
    public function getRightAnswer()
    {
        $id = $this->question_id;
        $answer = Question::get($id)->answer;
        return $answer;
    }
    /**
     * [getMastery 获取本题的掌握程度]
     * @return [float] $mastery [掌握程度]
     */
    public function getMastery()
    {
        $mastery = 0.88;
        return $mastery;
    }
	// /**
	//  * [getAnswerAttr 输出答案属性]
	//  * @param  [int] $value [答案int数据]
	//  * @return [string]        [0:A选项, 1:B选项, 2:C选项, 3:D选项]
	//  */
 //    public function getAnswerAttr($value)
 //    {
 //        $status = array('0'=>'A','1'=>'B','2'=>'C','3'=>'D');
 //        $answer = $status[$value];
 //        if (isset($answer))
 //        {
 //            return $answer;
 //        }else{
 //            return $status[0];
 //        }
 //    }
}

?>