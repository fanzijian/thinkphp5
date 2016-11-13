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
}

?>