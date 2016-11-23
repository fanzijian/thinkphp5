<?php
namespace app\model;
use think\Model;

/**
* 课程时间安排表
*/
class CourseSchedule extends Model
{
	
	public function Course()
    {
        return $this->belongsTo('Course');
    }
    public function getExam()
    {
    	$exam = Exam::get(['course_id'=>$this->course_id,'course_num'=>$this->num]);
    	return $exam;
    }
}

?>