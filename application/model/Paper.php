<?php
namespace app\model;
use think\Model;

/**
* 试卷表
*/
class Paper extends Model
{
	
	public function Questions()
	{
		return $this->belongsToMany('Question',config('database.prefix') . 'paper_question');
	}
	

    public function PaperQuestion()
    {
        return $this->hasMany('PaperQuestion');
    }


}

?>