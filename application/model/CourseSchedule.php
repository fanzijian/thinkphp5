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
    /**
     * [delete 重写模型delete方法，delete即将is_block字段置1]
     * @return [bool] [false则表示失败，true表示成功]
     */
    public function delete()
    {
        $this->is_block = 1;
        if(false === $this->save()){
            return false;
        }
        return true;
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
    /**
     * [getTeacherName 获取教师名称]
     * @return [string] name [教师名称]
     */
    public function getTeacherName()
    {
        $name = null;
        $Teacher = Teacher::get($this->teacher_id);
        if(false !== $Teacher){
            $name = $Teacher->name;
        }
        return $name;
    }
    /**
     * [getAttendanceRate 获取本节课的出勤率]
     * @return [int] [百分比数值]
     */
    public function getAttendanceRate()
    {
        return 100;
    }
    /**
     * [getEngagement 获取本节课的参与度]
     * @return [int] [百分比数值]
     */
    public function getEngagement()
    {
        return 100;
    }
    /**
     * [getProcessList 获取本节课教学过程数据列表]
     * @return [array] [description]
     */
    public function getLessonProcessList()
    {
        $lessonProcessList = LessonProcess::where('course_schedule_id',$this->id)->select();
        if(false === $lessonProcessList){
            return false;
        }
        return $lessonProcessList;
    }
}

?>