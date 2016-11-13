<?php
namespace app\model;
use think\Model;

/**
* 课程时间安排表
*/
class CourseResult extends Model
{
	
	public function Course()
    {
        return $this->belongsTo('Course');
    }

	public function Student()
    {
        return $this->belongsTo('Student','stu_id');
    }
}

?>