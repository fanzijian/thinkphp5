<?php
namespace app\model;
use think\Model;

/**
* 课程
*/
class Course extends Model
{
	public function Klasses()
	{
		return $this->belongsToMany('Klass',config('database.prefix') . 'klass_course');
	}
	
	public function Exams()
	{
		return $this->hasMany('Exam');
	}
    public function KlassCourses()
    {
        return $this->hasMany('KlassCourse');
    }
	/**
	 * [getIsChecked 获取是否存在相关关联记录]
	 * @param  Klass  &$Klass [班级]
	 * @return [bool]         [有记录，返回true，无记录，返回false]
	 * @author     (fzj <1158534904@qq.com>)
	 */
	public function getIsChecked(Klass &$Klass)
	{
		//取课程id
		$courseId = (int)$this->id;
		$klassId = (int)$Klass->id;

		//定制查询条件
		$map = array();
		$map['klass_id'] = $klassId;
		$map['course_id'] = $courseId;

		//从关联表中取信息
		$KlassCourse = KlassCourse::get($map);
		
		//有记录，返回true，无记录，返回false
		if(is_null($KlassCourse))
		{
			return false;
		}else{
			return true;
		}
	}
	public function Teacher()
    {
        return $this->belongsTo('teacher');
    }

}

?>