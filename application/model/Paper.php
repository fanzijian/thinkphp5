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
	
	public function Exams()
	{
		return $this->hasMany('Exam');
	}

    public function PaperQuestion()
    {
        return $this->hasMany('PaperQuestion');
    }

    public function PaperResult()
    {
    	return $this->hasOne('PaperResult');
    }
    public function CourseSchedule()
    {
        return $this->Exams[0]->CourseSchedule;
    }
    /**
     * [getCourseName 获取该试卷对应课堂名称]
     * @return [string] [课程名称]
     */
    public function getCourseName()
    {
    	$exams = $this->Exams;
    	$name = $exams[0]->CourseSchedule->Course->getData('name');
    	return $name;
    }
    /**
     * [getTeacherName 获取教师姓名]
     * @return [string] [教师姓名]
     */
    public function getTeacherName()
    {
    	$exams = $this->Exams;
    	$name = $exams[0]->CourseSchedule->Course->Teacher->getData('name');
    	return $name;
    }
    /**
     * [getLessonNum 获取课堂节次]
     * @return [int] [课堂节次]
     */
    public function getLessonNum()
    {
    	$exams = $this->Exams;
    	$num = $exams[0]->CourseSchedule->num;
    	return $num;
    }
    /**
     * [getStudents 获取学生对象列表]
     * @return [type] [description]
     */
    public function getStudents()
    {
        $exams = $this->Exams;
        $students = array();
        foreach ($exams as $key => $exam) {
            $students = array_merge($students, $exam->CourseSchedule->getStudents());
        }
        return $students;
    }
    /**
     * [getTotalStuNum 获取参加本试卷测试的学生样本总数]
     * @return [num] [参加测试的学生总数]
     */
    public function getTotalStuNum()
    {
    	$students = $this->getStudents();
    	return count($students);
    }
    /**
     * [getAggregation 获取学生对象集合]
     * @return [string] $aggregation [学生对象集合，例如“实验一班，实验二班”等等]
     */
    public function getAggregation()
    {
        $exams = $this->Exams;
        $klassIdList = array();
        $aggregation = '';
        foreach ($exams as $key => $exam) {
            $klassIdList = array_merge($klassIdList, $exam->CourseSchedule->getKlassIdList());
        }
        $klassIdList = array_unique($klassIdList);
        foreach ($klassIdList as $key => $klassId) {
            $aggregation = $aggregation . Klass::get(['id'=>$klassId])->getData('name') . ',';
        }
        $aggregation = chop($aggregation,",");
        return $aggregation;
    }
    /**
     * [getQuestionNum 返回试卷试题总数]
     * @return [int] [试题总数]
     */
    public function getQuestionTotalNum()
    {
        return count($this->Questions);
    }
    /**
     * [getProcessData 返回试卷答题过程统计数据]
     * @return [array] $stuFinishRatePerMinute [返回每分钟，每道题目完成的学生百分比]
     */
    public function getProcessData()
    {
        //获取所有测试id
        $examIdList = Exam::where('paper_id',$this->id)->column('id');
        //获取试题的id列表
        $questionIdList = PaperQuestion::where('paper_id',$this->id)->column('question_id');

        //获取多次测试中最长时间值
        $maxMinute = ExamProcess::where('exam_id','in',$examIdList)->Max('minute');
        //获取所有学生总数
        $stuNum = $this->getTotalStuNum();
        //以时间为最外层循环，轮询各个题目所有测试完成的学生人数
        $stuFinishRatePerMinute = array();
        for ($i=0; $i < $maxMinute; $i = $i+60) { 
            $stuRateFinish = array();
            foreach ($questionIdList as $key => $id) {
                //计算每分钟，每个问题完成的学生数目百分比
                $stuFinishTmp = 0;
                for ($j=0; $j < count($examIdList); $j++) {
                    $examProcess = ExamProcess::get(['exam_id'=>$examIdList[$j],'minute'=>$i + 60,'question_num'=>$id]);
                    if(empty($examProcess)){
                        $stuFinishTmp += 15;
                    }else{
                        $stuFinishTmp += $examProcess->getData('stu_num_finished');
                    }
                }
                //var_dump($stuNum);
                $stuRateFinish[]= round($stuFinishTmp / $stuNum * 100, 2);
            }
            $stuFinishRatePerMinute[] = $stuRateFinish;
        }
        //var_dump($stuFinishRatePerMinute);
        //根据时间间隔对结果进行处理
        return $stuFinishRatePerMinute;
        
    }
    public function QuestionAnalysises()
    {
        return $this->hasMany('QuestionAnalysis');
    }
}

?>