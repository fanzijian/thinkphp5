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

	public function Klasses()
	{
		return $this->belongsToMany('Klass',config('database.prefix') . 'klass_course');
	}
	
    public function KlassCourses()
    {
        return $this->hasMany('KlassCourse');
    }

    public function LessonStatistics()
    {
        return $this->hasOne('LessonStatistics');
    }

    public function Exam()
    {
        return $this->hasOne('Exam');
    }
    public function getTypeAttr($value)
    {
        $status = array('1'=>'传统课堂', '2'=>'视频学习', '3'=>'翻转课堂');
        $type = $status[$value];
        if (isset($type))
        {
            return $type;
        }else{
            return $status[1];
        }
    }
    public function getKlassIdList()
    {
    	$KlassIdList = KlassCourse::where('course_schedule_id',$this->id)->column('klass_id');
    	return $KlassIdList;
    }
    public function getStudents()
    {
        $Students = array();
        foreach ($this->Klasses as $key => $Klass) {
            $Students = array_merge($Students,$Klass->Students);
        }
        return $Students;
    }
}

?>