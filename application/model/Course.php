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
    public function getSchedules()
    {
        $courseSchedules = CourseSchedule::where('course_id',$this->id)->select();
        return $courseSchedules;
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

    public function getStudents()
    {
    	$klasses = $this->Klasses;
    	if(false != $klasses){
            $students = array();
            foreach ($klasses as $key => $klass) {
                $students = array_merge($students, $klass->Students);
            }
            return $students;
        }
        return null;
    }
    /**
     * [getStudentsIdList 获取课程学生的id全集]
     * @return [array]$studentsIdList [如果没有学生，返回null，否则返回学生id数组]
     */
    public function getStudentsIdList()
    {
        $students = $this->getStudents();
        if(false != $students){
            $studentsIdList = array();
            foreach ($students as $key => $student) {
                array_push($studentsIdList, $student->id);
            }
            return $studentsIdList;
        }
        return null;
    }
    /**
     * [getStuBehaviorList 获取学生行为信息list]
     * @param  [int]  $stu_id   [学生id]
     * @param  [int]  $num      [课程节次]
     * @param  integer $interval [最小判定间隔]
     * @return [array]            [返回行为数据对象列表]
     */
    public function getStuBehaviorList($stu_id, $num, $interval = 10)
    {

    	$stuBehaviorList = CourseBehaviorResult::where('course_id',$this->id)->where('stu_id', $stu_id)->where('num',$num)->select();
    	
    	return $stuBehaviorList;
    }
    /**
     * [getTotalStuNum 获取该课程学生总数]
     * @return [int] $totalStuNum [所有学生总数]
     */
    public function getTotalStuNum()
    {
    	$totalStuNum = count($this->getStudents());

    	return $totalStuNum;
    }
    /**
     * [getStuActivenessArrayById 通过学生id获取学生活跃度数组]
     * @param  [int]  $stu_id       [学生id]
     * @param  [int]  $num          [课堂节次]
     * @param  integer $interval     [最小时间判定间隔]
     * @param  integer $min_interval [最小异常间隔]
     * @return [array] $activeness   [活跃度数组]
     */
    public function getStuActivenessArrayById($stu_id, $num, $interval = 10, $min_interval = 3)
    {

    	$CourseSchedule = CourseSchedule::get(['course_id'=>$this->id, 'num'=>$num]);
    	
    	$start_time = $CourseSchedule->start_time;
    	$end_time = $CourseSchedule->end_time;

    	$stuBehaviorList = CourseBehaviorResult::where('course_id',$this->id)->where('stu_id', $stu_id)->where('num',$num)->where('behavior_type', 3)->where('duration','>',$min_interval)->order('behavior_time')->select();
    	
    	if(false == $stuBehaviorList){
    		return null;
    	}
    	$activeness = array();

		$j = 0;

		$behavior_start_time = $stuBehaviorList[$j]->behavior_time;
		$behavior_end_time = $stuBehaviorList[$j]->behavior_time + $stuBehaviorList[$j]->duration;

		for ($i=0; $start_time + $i * $interval < $end_time; $i++) { 
			$tmp = 0;
			//判断是否处理完本条学生记录数据
			while( $behavior_end_time < $start_time + $i * $interval){
				//当本次学生行为记录的结束时间小于本次记录间隔的开始时刻时，j++，本次循环结束，说明本次记录间隔在本次学生行为之后。
				$j++;
				if($j >= count($stuBehaviorList)){
					break;
				}
				$behavior_start_time = $stuBehaviorList[$j]->behavior_time;
				$behavior_end_time = $stuBehaviorList[$j]->behavior_time + $stuBehaviorList[$j]->duration;
			}
			//判断该区间内，学生状态是否正常
			if($behavior_end_time <= $start_time + $i * $interval){
				//本次学生记录结束时间在区间开始前，说明本次行为记录在间隔前
			}else if($behavior_start_time > $start_time + ($i+1) * $interval){
				//当本次学生行为记录开始时间在区间后，说明本次行为记录在本次间隔后
			}else if($behavior_start_time < $start_time + $i * $interval || $behavior_end_time > $start_time + ($i + 1) * $interval){
				//学生在本间隔内出现趴桌行为
				$tmp = 1;
			}
			array_push($activeness, $tmp);
		}
		return $activeness;
    }
    /**
     * [getCourseActivenessArrayByKlassId 通过班级id获取班级所有人活跃度数组]
     * @param  [int]  $klass_id       [班级id]
     * @param  [int]  $num          [课堂节次]
     * @param  integer $interval     [最小时间判定间隔]
     * @param  integer $min_interval [最小异常间隔]
     * @return [array] $courseActivenessArray   [活跃度数组]
     */
    public function getCourseActivenessArrayByKlassId($klass_id, $num, $interval = 10, $min_interval = 3){
    	//判断该班学生是否上这门课程
    	$klass = Klass::get(['id'=>$klass_id]);
    	if(!$this->getIsChecked($klass)) return null;
    	//获取这个班级所有学生的id列表
    	$students = $klass->Students;
    	$total = count($students);
    	if(false == $students) return null;
    	$studentsIdList = array();
        foreach ($students as $key => $student) {
            array_push($studentsIdList, $student->id);
        }
        //获取该班级学生本节课程活跃度array
    	$activenessArray = array();
    	for ($i=0; $i < count($studentsIdList); $i++) { 
    		array_push($activenessArray, $this->getStuActivenessArrayById($studentsIdList[$i], $num, $interval, $min_interval));
    	}
    	$courseActivenessArray = array();

    	if(!empty($activenessArray)){
			for ($j=0; $j < count($activenessArray[0]); $j++) { 
	    		$tmp = 0;
	    		for ($i=0; $i < count($activenessArray); $i++) { 
	    			$tmp += $activenessArray[$i][$j];
	    		}
	    		$tmpArray = [$interval * ($j + 0.5),$total - $tmp];
	    		array_push($courseActivenessArray, $tmpArray);
	    	}
    	}
    	
    	return $courseActivenessArray;
    }
}

?>