<?php
namespace app\model;
use think\Model;

/**
*自习结果统计表
*/
class LearnStatistics extends Model
{
	public function Learn()
	{
		return $this->belongsTo('Learn');
	}
	public function Student()
	{
		return $this->belongsTo('Student','stu_id');
	}
}
?>