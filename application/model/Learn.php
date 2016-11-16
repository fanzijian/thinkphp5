<?php
namespace app\model;
use think\Model;

/**
* 自习表
*/
class Learn extends Model
{
	public function Student()
	{
		return $this->belongsTo('Student','stu_id');
	}

}

?>