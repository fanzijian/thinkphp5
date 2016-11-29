<?php
namespace app\model;
use think\Model;

/**
* 试卷表
*/
class Paper extends Model
{
	
	public function Questions()
	{
		return $this->belongsToMany('Question',config('database.prefix') . 'paper_question');
	}
	
	public function Exams()
	{
		return $this->hasMany('Exam');
	}

    public function PaperQuestion()
    {
        return $this->hasMany('PaperQuestion');
    }

    public function PaperResult()
    {
    	return $this->hasOne('PaperResult');
    }
    /**
     * [getCourseName 获取该试卷对应课堂名称]
     * @return [string] [课程名称]
     */
    public function getCourseName()
    {
    	$exams = $this->Exams;
    	$name = $exams[0]->CourseSchedule->Course->getData('name');
    	return $name;
    }
    /**
     * [getTeacherName 获取教师姓名]
     * @return [string] [教师姓名]
     */
    public function getTeacherName()
    {
    	$exams = $this->Exams;
    	$name = $exams[0]->CourseSchedule->Course->Teacher->getData('name');
    	return $name;
    }
    /**
     * [getLessonNum 获取课堂节次]
     * @return [int] [课堂节次]
     */
    public function getLessonNum()
    {
    	$exams = $this->Exams;
    	$num = $exams[0]->CourseSchedule->num;
    	return $num;
    }
    /**
     * [getTotalStuNum 获取参加本试卷测试的学生样本总数]
     * @return [num] [参加测试的学生总数]
     */
    public function getTotalStuNum()
    {
    	$exams = $this->Exams;
    	$students = array();
    	foreach ($exams as $key => $exam) {
    		$students = array_merge($students, $exam->CourseSchedule->getStudents());
    	}
    	return count($students);
    }

    public function QuestionAnalysises()
    {
        return $this->hasMany('QuestionAnalysis');
    }
}

?>