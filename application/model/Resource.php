<?php
namespace app\model;
use think\Model;

/**
* 资源表
*/
class Resource extends Model
{
	public function CourseSchedule()
	{
		return $this->belongsTo('CourseSchedule');
	}

	public function Student()
    {
        return $this->belongsTo('Student','stu_id');
    }

	public function Course()
    {
        return $this->CourseSchedule->Course;
    }

	/**
	 * [getType 获取资源类别/数据源类别]
	 * @param  [int] $value ['0'=>'kinect','1'=>'tobii','2'=>'其他']
	 * @return [string]        [资源/数据源类别]
	 */
	public function getTypeAttr($value)
	{
		$status = array('0'=>'kinect','1'=>'tobii','2'=>'其他');
		$type = $status[$value];
		if (isset($type))
		{
			return $type;
		}else{
			return $status[2];
		}
	}



}

?>