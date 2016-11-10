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
	 * [getAnswerAttr 输出答案属性]
	 * @param  [int] $value [答案int数据]
	 * @return [string]        [0:A选项, 1:B选项, 2:C选项, 3:D选项]
	 */
    public function getAnswerAttr($value)
    {
        $status = array('0'=>'A','1'=>'B','2'=>'C','3'=>'D');
        $answer = $status[$value];
        if (isset($answer))
        {
            return $answer;
        }else{
            return $status[0];
        }
    }
}

?>