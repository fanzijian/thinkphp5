<?php
namespace app\model;
use think\Model;

/**
* 试题
*/
class Question extends Model
{
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

    public function Papers()
    {
        return $this->belongsToMany('Paper',config('database.prefix') . 'paper_question');
    }

    public function PaperQuestion()
    {
        return $this->hasMany('PaperQuestion');
    }
    /**
     * [getPaperName 获取试卷名称]
     * @return [string] $name [试卷名称]
     */
    public function getPaperName()
    {
        $name = $this->Papers[0]->getData('name');
        return $name;
    }
    /**
     * [getTotalStuNum 获取参与本试题的所有学生总数]
     * @return [int] $num [学生总数]
     */
    public function getTotalStuNum()
    {
        $num = $this->Papers[0]->getTotalStuNum();
        return $num;
    }
    /**
     * [getStudents 获取所有的学生对象列表]
     * @return [type] [description]
     */
    public function getStudents()
    {
        $students = $this->Papers[0]->getStudents();
        return $students;
    }
    /**
     * [getAccuracy 获取所有做本题正确的学生的百分比]
     * @return [float] $accuracy [正确学生的百分比]
     */
    public function getAccuracy()
    {
        $stuNum = QuestionResult::where('question_id',$this->id)->Sum('is_right');
        $accuracy = 0;
        if($this->getTotalStuNum() != 0){
            $accuracy = round($stuNum / $this->getTotalStuNum() * 100,2);
        }
        return $accuracy;
    }
    /**
     * [getAverageDuration 获取所有做题学生的平均答题时长]
     * @return [float] $averageDuration [平均答题时长]
     */
    public function getAverageDuration()
    {
        $totalDuration = QuestionResult::where('question_id',$this->id)->Sum('duration');
        $averageDuration = 0;
        if($this->getTotalStuNum() != 0){
            $averageDuration = round($totalDuration / $this->getTotalStuNum(), 2);
        }
        return $averageDuration;
    }
    /**
     * [getAverageHesitation 获取所有学生做本题时的平均犹疑度]
     * @return [float] $hesitation [平均犹疑度]
     */
    public function getAverageHesitation()
    {
        $averageHesitation = round((QuestionResult::where('question_id',$this->id)->Sum('visit_count_a')
            + QuestionResult::where('question_id',$this->id)->Sum('visit_count_b')
            + QuestionResult::where('question_id',$this->id)->Sum('visit_count_c')
            +QuestionResult::where('question_id',$this->id)->Sum('visit_count_d'))/$this->getTotalStuNum() / 11,2);
        return $averageHesitation;
    }
    /**
     * [getStuQuestionResult 获取学生某次测试答题结果]
     * @param  [type] $stu_id [学生id]
     * @return [object] $questionResult [学生答题结果]
     * 未考虑一道题目一个学生做多遍的情况
     */
    public function getStuQuestionResult($stu_id)
    {
        $questionResults = QuestionResult::where('stu_id',$stu_id)->where('question_id',$this->id)->select();
        if(0 !== count($questionResults)){
            $questionResult = $questionResults[0];
        }else{
            $questionResult = QuestionResult::get(1);
        }
        return $questionResult;
    }
}

?>