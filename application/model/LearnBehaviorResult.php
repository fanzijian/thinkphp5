<?php
namespace app\model;
use think\Model;

/**
* 自习行为结果表
*/
class LearnBehaviorResult extends Model
{

	/*
	 *输出行为类别属性
	 *@return     string ( 0-其它;1-哈欠;2-眨眼;3-点头 )
	 *@author     (fzj <1158534904@qq.com>)
	 */
	public function getBehaviorTypeAttr($value)
	{
		$status = array('0'=>'其它', '1'=>'哈欠', '2'=>'眨眼', '3'=>'点头');
		$behaviorType = $status[$value];
		if (isset($behaviorType))
		{
			return $behaviorType;
		}else{
			return $status[0];
		}
	}
}

?>