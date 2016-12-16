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
	/*
	 *此函数返回值有问题，直接通过resource->Course获取对象的时候， 有时候会返回空，虽然var_dump出来实际上是有值的。
	 */
	// public function Course()
	// {
	// 	$Course = $this->CourseSchedule->Course;
	// 	var_dump($Course);
	// 	return $Course;
	// }
	/**
	 * [getType 获取资源类别/数据源类别]
	 * @param  [int] $value ['0'=>'kinect','1'=>'tobii','2'=>'其他']
	 * @return [string]        [资源/数据源类别]
	 */
	public function getDataTypeAttr($value)
	{
		//var_dump($value);
		$status = array('0'=>'kinect','1'=>'tobii','2'=>'其他');
		$dataType = $status[$value];
		if (isset($dataType))
		{
			return $dataType;
		}else{
			return $status[2];
		}
	}



}

?>