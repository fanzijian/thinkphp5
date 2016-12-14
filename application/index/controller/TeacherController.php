<?php
namespace app\index\controller;
use think\Controller;//用于与V层进行数据传递
use app\model\Teacher;//教师模型
use app\model\Student;//学生模型
use app\model\Klass;//班级模型
use app\model\Course;
use app\model\Exam;
use app\model\Question;
use app\model\ExamResult;
use app\model\CourseSchedule;
use app\model\CourseResult;
use app\model\Learn;
use app\model\Paper;
use app\model\QuestionAnalysis;
use app\model\KnowledgePoint;
/**
*教师管理，继承think\Controller后，就可以利用V层对数据进行打包。
*/
class TeacherController extends IndexController
{

    public function index()
    {
        try {

            //生成查询条件
            $map = array();
            $map['username'] = session('username');

            //查询对象是否存在
            if(is_null($Teacher = Teacher::get($map))){
                return $this->error('未找到编号' . $map['username'] . '的记录');
            }

            $this->assign('Teacher',$Teacher);

            //返回页面
            $htmls = $this->fetch('Teacher/index');

            // 将数据返回给用户
            return $htmls;
        } catch (\Exception $e) {
            throw $e;
            return '系统错误' . $e->getMessage();
        }
    }

	public function edit()
	{
		$message = '修改成功';
		$error = '';
		try {
            //生成查询条件
            $map = array();
            $map['username'] = session('username');

            //查询对象是否存在
            if(is_null($Teacher = Teacher::get($map))){
                return $this->error('未找到编号' . $map['username'] . '的记录');
            }

	        // 将数据传给V层
	        $this->assign('Teacher', $Teacher);

	        // 获取封装好的V层内容
	        $htmls = $this->fetch();

	        // 将封装好的V层内容返回给用户
	        return $htmls;
		} catch (Exception $e) {
			return '系统错误' . $e->getMessage();
		}
	}

    public function update()
    {
        $message    = '';   // 反馈消息
        $error      = '';   // 反馈错误信息

        // 接收数据，取要更新的关键字信息
        $id = input('post.id');

        // 获取当前对象
        $Teacher = Teacher::get($id);

        if(!is_null($Teacher)){
            if(!$this->saveTeacher($Teacher,true)){
                return $this->error('操作失败' . $Teacher->getError());
            }
        }else{
            return $this->error('当前操作记录不存在！');
        }

        return $this->success('操作成功', url('index'));
    }
    
    private function saveTeacher(Teacher &$Teacher, $isUpdate = false)
    {
        $Teacher->name =$this->request->param('name');
        $Teacher->username = $this->request->param('username');
        $Teacher->sex = $this->request->param('sex');
        $Teacher->school = $this->request->param('school');
        $Teacher->email = $this->request->param('email');
        $Teacher->photo_url = $this->request->param('photo_url');
        return $Teacher->validate(true)->save();
    }


    /**
     * [studentList 学生列表]
     * @return [html] [返回包含students对象]
     */
    public function studentList()
    {
        
        $Student = new Student;
        $Teacher = Teacher::get(['id'=>session('id')]);

        $pageSize = 5;
        //获取查询类别
        
        $search_type = $this->request->param('search_type');
        if(null == $search_type){
            $search_type = 0;
        }
        $search_content = $this->request->param('search_content');

        $search_attribute = array('0'=>'name', '1'=>'username', '2'=>'');
        

        //查询是否有相应学生对象
        $students = $Student->where('id','in',$Teacher->getStudentsIdList())->where($search_attribute[$search_type], 'like', '%' . $search_content . '%')->paginate($pageSize);
        
        //传递到V层
        $this->assign('students',$students);
        //返回对象
        $htmls = $this->fetch('Teacher/studentList');

        return $htmls;
    }
    /**
     * [teacherDeleteStudent 教师删除学生]
     * @return [msg] [返回删除结果，success成功，error失败]
     */
    public function teacherDeleteStudent()
    {
        //初始化消息
        $message = '删除成功！';
        $error = '';
        try {
            //获取学生id
            $id = $this->request->param('id');
            //var_dump($id);
            $Student = Student::get($id);
            //获取学生对象
            if(false === $Student){
                throw new \Exception('不存在id为' . $id . '的学生，删除失败！');
            }
            //删除学生对象
            if(false === $Student->delete()){
                throw new \Exception('删除失败:' . $Student->getError());
            }
            // 程序正确执行，进行跳转
            return $this->success($message, url('Teacher/studentList'));
        } catch (Exception $e) {
            // 程序异常执行，接收异常并报错。
            return $this->error('系统错误' . $e->getMessage());
        }
    }
    /**
     * [teacherEditStudent 教师编辑学生信息]
     * @return [html] [返回包含Student对象]
     */
    public function teacherEditStudent()
    {
        try {
            //获取学生id
            $id = $this->request->param('id');

            //获取学生对象
            $Student = Student::get($id);
            if(false === $Student){
                throw new \Exception('不存在id为' . $id . '的学生！');
            }
            
            //取出班级列表
            $klasses = Klass::all();
            $this->assign('klasses',$klasses);
            $this->assign('Student',$Student);

            //传递到V层
            $htmls = $this->fetch('Teacher/studentDetail');
            //返回编辑页面
            return $htmls;
        } catch (Exception $e) {
            return $this->error('系统错误'. $e->getMessage());
        }
    }
    /**
     * [teacherAddStudent 教师添加学生信息]
     * @return [html] [返回包含空Student对象]
     */
    public function teacherAddStudent()
    {
        //构造空Student对象
        $Student = new Student;
        $Student->id = 0;
        $Student->name ='';
        $Student->username = '';
        $Student->sex = 0;
        $Student->school = '';
        $Student->email = '';
        $Student->photo_url = '1.jpg';
        $Student->klass_id = '1';

        //取出班级列表
        $klasses = Klass::all();
        $this->assign('klasses',$klasses);
        $this->assign('Student',$Student);

        //传递到V层
        $htmls = $this->fetch('Teacher/studentDetail');
        //返回编辑页面
        return $htmls;
    }
    /**
     * [saveStudent 保存编辑或者新加的学生信息]
     * @return [msg] [返回操作结果，success成功，error失败]
     */
    public function saveStudent()
    {

        //获取学生id，id为0则表示添加学生，否则为编辑学生信息
        $id = $this->request->param('id');

        if(0 == $id){
            $Student = new Student;
        }else{
            $Student = Student::get($id);
        }
        //更新学生信息
        $Student->name =$this->request->param('name');
        $Student->username = $this->request->param('username');
        $Student->sex = $this->request->param('sex');
        $Student->school = $this->request->param('school');
        $Student->email = $this->request->param('email');
        $Student->photo_url = $this->request->param('photo_url');
        $Student->klass_id = $this->request->param('klass_id');
        //保存学生信息
        if (!$Student->validate(true)->save()) {
            return $this->error('课程保存错误：' . $Student->getError());
        }else{
            return $this->success('操作成功', url('Teacher/studentList'));
        }
    }
    /**
     * [showExamList 考试列表]
     * @return [html] [包含exam对象的html]
     */
    public function showExamList()
    {
        $Exam = new Exam;

        $pageSize = 5;
        //获取查询类别
        
        $search_type = $this->request->param('search_type');

        $search_content = $this->request->param('search_content');

        if(null == $search_type){
            $search_type = 2;
        }

        if(0 == $search_type){
            //根据课程名称搜索,待优化，无法实现模糊匹配
            $map['name'] = $search_content;
            $course = Course::get($map);
            if(false == $course){
                return $this->error('未找到名称为' . $map['name'] . '的课程');
            }
            $exams = $course->Exams()->select();
            //$exams = $Exam->Course->where('name','like','%' . $search_content . '%')->paginate($pageSize);
        }else if(1 == $search_type){
            //根据exam_id搜索
            $exam_id = $search_content;
            if('' == $exam_id){
                $exams = $Exam->all();
            }else{
                $exams = $Exam->where('id',$exam_id)->select();
            }

        }else if(2 == $search_type){
            //其他未定义
            $exams = $Exam->all();
        }

        //传递到V层
        $this->assign('exams',$exams);
        //返回对象
        $htmls = $this->fetch('Teacher/examList');

        return $htmls;
    } 

    /**
     * [showExamQuestionList 获取试题列表]
     * @return [html] [返回试卷试题页面]
     */
    public function showExamQuestionList()
    {
        //获取页码
        $page = $this->request->param('page');
        if(is_null($page)){
            $page = 1;
        }
        //获取exam_id
        $exam_id = $this->request->param('exam_id');
        //根据exam_id获取paper_id
        $Exam= Exam::get($exam_id);
        if(false == $Exam){
            return $this->error('未找到id为' . $exam_id . '的对象！');
        }
        //获取题目对象questions
        $questions = $Exam->getQuestionList();

        $this->assign('total_page',count($questions));
        $this->assign('question',$questions[$page-1]);
        //返回查询结果
        $htmls = $this->fetch('Teacher/questionList');
        return $htmls;
    }
    /**
     * [showExamAnalysis 进入可视化对比展示选择页面]
     * @return [htmls] [返回包含exam、student对象全集]
     */
    public function showExamAnalysis()
    {

        $exams = Exam::all();
        //$students = Student::all();

        $Teacher = Teacher::get(['id'=>session('id')]);
        if(false == $Teacher){
            return $this->error('未找到id为' . $session('id') . '的老师！');
        }
        $students = $Teacher->getStudents();

        if(false == $exams){
            return $this->error('不存在考试数据！');
        }
    
        if(false == $students){
            return $this->error('未找到学生数据！');
        } 

        $this->assign('exams',$exams);
        $this->assign('students',$students);
        
        //返回页面

        $htmls = $this->fetch('Teacher/examAnalysis');
        return $htmls;
    }
    /**
     * [showExamAnalysisResult 获取查询对比绘图数据]
     *@return [json] [返回名为data的json对象，包含title，xAxis，data等数据]
     */
    public function showExamAnalysisResult()
    {
        $status = true;
        $data = array();
        //获取查询类别以及查询内容
        $search_type = $this->request->param('search_type');
        $search_content = $this->request->param('search_content');
        
        //初始化查询
        $ExamResult = new ExamResult;

        $attribute = ['accuracy','duration_total','duration_average','attribute_2'];
        //获取选择内容
        if(0 == $search_type){
            //某个学生多次考试之间对比

            //获取查询内容
            $stu_username = $search_content;
            $Student = Student::get(['username'=>$stu_username]);
            if(false == $Student){
                $status = false;
            }else{
                $stu_id = $Student->id;
                $stu_name = $Student->name;
                $examIdList = $this->request->param('examIdList/a');

                //获取图表的标题和X轴
                $data['title'] = array(
                            0 => $stu_name . '多次考试' . $attribute[0] . '指标对比结果',
                            1 => $stu_name . '多次考试' . $attribute[1] . '指标对比结果',
                            2 => $stu_name . '多次考试' . $attribute[2] . '指标对比结果',
                            3 => $stu_name . '多次考试' . $attribute[3] . '指标对比结果'
                                );
                $data['xAxis'] = array(
                            0 => $examIdList,
                            1 => $examIdList,
                            2 => $examIdList,
                            3 => $examIdList
                            );
                //i表示第i个指标
                for ($i=0; $i <4 ; $i++) { 
                        $data['data'][$i] = array(
                                     'name' => $attribute[$i],
                                     'data' =>  $ExamResult->where('stu_id',$stu_id)->where('exam_id','in',$examIdList)->column($attribute[$i])
                                     );
                }
            }

        }else if(1 == $search_type){
            //某次考试多个学生之间对比

            //获取查询内容
            $exam_id = $search_content;
            $stuIdList = $this->request->param('studentIdList/a');
            if(false == Exam::get(['id'=>$exam_id])){
                $status = false;
            }else{
                $stuNameList = Student::where('id','in',$stuIdList)->column('name');
                //$examResults = $ExamResult->where('exam_id',$exam_id)->where('stu_id','in',$stuIdList);
                //获取图表的标题和X轴
                $data['title'] = array(
                            0 => '第'. $exam_id . '次考试' . $attribute[0] . '指标学生间对比结果',
                            1 => '第'. $exam_id . '次考试' . $attribute[1] . '指标学生间对比结果',
                            2 => '第'. $exam_id . '次考试' . $attribute[2] . '指标学生间对比结果',
                            3 => '第'. $exam_id . '次考试' . $attribute[3] . '指标学生间对比结果'
                                );
                $data['xAxis'] = array(
                            0 => $stuNameList,
                            1 => $stuNameList,
                            2 => $stuNameList,
                            3 => $stuNameList
                            );
                //i表示第i个指标
                for ($i=0; $i <4 ; $i++) { 
                        $data['data'][$i] = array(
                                     'name' => $attribute[$i],
                                     'data' => $ExamResult->where('exam_id',$exam_id)->where('stu_id','in',$stuIdList)->column($attribute[$i])
                                     );
                }  
            }

        }
        $msg['status'] = $status;
        $msg['data'] = $data;
        return json_encode($msg);
    }
    /**
     * [passwordEdit 密码修改页面]
     * @return [html] [密码修改页面]
     */
    public function passwordEdit()
    {
        return $this->fetch('Teacher/passwordEdit');
    }
    /**
     * [passwordSave 修改密码保存]
     * @return [msg] [返回修改密码结果]
     */
    public function passwordSave()
    {
        //获取输入密码与新密码
        $oldPassword = $this->request->param('oldPassword');
        $newPassword = $this->request->param('newPassword');

        switch (Teacher::changePassword(session('id'), $oldPassword, $newPassword)) {
            case '0':
                return $this->error('系统操作异常，请重试！');
                break;
            case '1':
                return $this->success('更新密码成功,请重新登录！', url('Login/index'));
                break;
            case '2':
                return $this->error('旧密码输入错误！');
                break;
            default:
                return $this->error('系统操作异常，请重试！');
                break;
        }
    }
    /**
     * [showCourseList 展示该教师教学的课程列表]
     * @return [html] [返回包含course对象的html]
     */
    public function showCourseList()
    {
        //初始化数据
        $pageSize = 5;
        //获取查询内容
        $search_type = $this->request->param('search_type');
        $search_content = $this->request->param('search_content');
        if(is_null($search_type)||'' == $search_type){
            $search_type = 0;
        }
        if(0 == $search_type){
            //查找course对象
            $courses = Course::where('teacher_id',session('id'))->where('name', 'like', '%' . $search_content . '%')->paginate($pageSize);
        }
        //绑定数据到V层
        $this->assign('courses', $courses);
        $htmls = $this->fetch('Teacher/courseList');
        return $htmls;
        //返回
    }
    /**
     * [showCourseSchedule 展示课程节次列表]
     * @return [html] [courseSchedule]
     */
    public function showCourseSchedule()
    {
        //获取课程id
        $course_id = $this->request->param('id');

        //获取时间安排表
        $courseSchedules = CourseSchedule::where('course_id',$course_id)->select();

        $this->assign('courseSchedules',$courseSchedules);

        $htmls = $this->fetch('Teacher/courseSchedule');
        //返回详情页面
        return $htmls;
    }
    /**
     * [showCourseResult 展示课程上课结果]
     * @return [html] []
     */
    public function showCourseResult()
    {
        $courseResults = new CourseResult;
        $type = $this->request->param('type');
        //获取查询类别,1:学生查询，2：课程查询
        $search_type = $this->request->param('search_type');
        if(1 == $search_type){
            //获取学生学号，获取课程名称
            $stu_username = $this->request->param('stu_username');
            $course_name = $this->request->param('course_name');
            //获取查询对象id
            $Student = Student::get(['username'=>$stu_username]);
            if(false == $Student){
                return $this->error('未找到该学生！');
            }
            $stu_id = $Student->id;
            $Course  = Course::get(['name'=>$course_name]);
            if(false == $Course){
                return $this->error('未找到该课程！');
            }
            $course_id = $Course->id;

            //获取学生课程结果对象全集
            $courseResults = CourseResult::where('stu_id',$stu_id)->where('course_id',$course_id)->select();


        }else if(2 == $search_type){
            //获取课程id,节次
            $course_name = $this->request->param('course_name');

            $Course  = Course::get(['name'=>$course_name]);
            if(false == $Course){
                return $this->error('未找到该课程！');
            }
            $course_id = $Course->id;
            $num = $this->request->param('num');

            //获取学生课程结果对象全集
            $courseResults = CourseResult::where('course_id',$course_id)->where('num',$num)->select();
            

        }
        $this->assign('courseResults',$courseResults);
        $this->assign('type',$type);
        $htmls = $this->fetch('Teacher/courseResult');
        return $htmls;
    }
    /**
     * [showCourseAnalysis 展示课堂分析页面]
     * @return [html] [description]
     */
    public function showCourseAnalysis()
    {
        $klasses = Klass::all();
        $courses = Teacher::get(['id'=>session('id')])->Courses;

        $this->assign('klasses',$klasses);
        $this->assign('courses',$courses);


        $htmls = $this->fetch('courseAnalysis');
        return $htmls;
    }
    /**
     * [getCourseActiveness 获取课堂活跃度]
     * @return [json] [返回json数据，包含课程活跃度]
     */
    public function getCourseActiveness()
    {
        $status = false;
        //获取查询条件
        $course_name = $this->request->param('course_name');
        $course_num = $this->request->param('course_num');
        $interval = $this->request->param('interval');
        $min_interval = $this->request->param('min_interval');
        $klass_name = $this->request->param('klass_name');

        //当未输入条件
        if($interval == 0) $interval = 10;
        if($min_interval == 0) $min_interval = 3;

        $Course = Course::get(['name'=>$course_name]);
        $Klass = Klass::get(['name'=>$klass_name]);

        if(false != $Course && false != $Klass){
            $courseActivenessArray = $Course->getCourseActivenessArrayByKlassId($Klass->id,$course_num, $interval, $min_interval);
            $status = true;
        }

        //填充消息结构体
        $message['status'] = $status;
        $message['data'] = $courseActivenessArray;

        return json_encode($message);
    }
    /**
     * [showSelfLearningList 展示自习列表]
     * @return [html] []
     */
    public function showSelfLearningList()
    {
        $teacher = Teacher::get(['id'=>session('id')]);
        $learnList = $teacher->getStuSelfLearningListByStuName('');

        $this->assign('learnList', $learnList);

        $htmls = $this->fetch('Teacher/selfLearningList');

        return $htmls;
    }
    /**
     * [showBehaviorAnalysis 展示行为分析]
     * @return [type] [description]
     */
    public function showBehaviorAnalysis()
    {
        $learn_id = $this->request->param('id');
        $learn = Learn::get(['id'=>$learn_id]);

        $learnBehaviorResultList = $learn->getLearnBehaviorResultList();

        $this->assign('learnBehaviorResultList',$learnBehaviorResultList);
        $htmls = $this->fetch('Teacher/behaviorAnalysis');

        return $htmls;

    }
    /**
     * [showPatternAnalysis 展示模式分析]
     * @return [type] [description]
     */
    public function showPatternAnalysis()
    {
        $learn_id = $this->request->param('id');
        $learn = Learn::get(['id'=>$learn_id]);

        $learnPatternList = $learn->getLearnPatternList();

        $this->assign('learnPatternList',$learnPatternList);
        $htmls = $this->fetch('Teacher/patternAnalysis');

        return $htmls;
    }
    /**
     * [showStatusAnalysis 展示状态分析]
     * @return [type] [description]
     */
    public function showStatusAnalysis()
    {
        $learn_id = $this->request->param('id');
        $learn = Learn::get(['id'=>$learn_id]);

        $learnStatusList = $learn->getLearnStatusList();

        $this->assign('learnStatusList',$learnStatusList);
        $htmls = $this->fetch('Teacher/statusAnalysis');

        return $htmls;    
    }
    /**
     * [showLessonAnalysisList 展示课堂列表]
     * @return [type] [description]
     */
    // public function showLessonAnalysisList()
    // {
    //     //获取查询条件
    //     $search_type = $this->request->param('search_type');
    //     $search_content = $this->request->param('search_content');
    //     //根据查询条件生成不同数据
    //     $CourseSchedule = new CourseSchedule;
    //     $courseSchedules = array();
    //     switch ($search_type) {
    //         case '0':
    //             //课程名称搜索
    //             //根据根据搜索条件获取课程id
    //             $courseIdList = Course::where('name','like','%' . $search_content . '%')->column('id');
    //             //判断是否为空
    //             if(empty($courseIdList)){
    //                 break;
    //             }
    //             //获取lesson的id
    //             $courseSchedules = $CourseSchedule->where('course_id','in', $courseIdList)->select();
    //             break;
    //         case '1':
    //             //根据教学模式搜索
    //             //搜索条件翻译
    //             $lesson_type = array('1'=>'传统课堂','2'=>'视频学习','3'=>'翻转课堂');
    //             //判断搜索条件是否为空
    //             //当搜索内容为空的时候，显示所有结果
    //             if(empty($search_content)){
    //                 $courseSchedules = $CourseSchedule->all();
    //                 break;
    //             }
    //             //当搜索内容为空的时候，搜索条件翻译，显示相应结果
    //             foreach ($lesson_type as $key => $value) {
    //                 //var_dump(strpos($value,$search_content));
    //                 if(!(false === strpos($value,$search_content))){
    //                     $courseSchedules = $CourseSchedule->where('type', $key)->select();
    //                 }
    //             }
    //             //根据搜索条件获取课堂id
    //             break;
    //         default:
    //             $courseSchedules = $CourseSchedule->all();
    //             break;
    //     }
    //     $this->assign('courseSchedules',$courseSchedules);

    //     return $this->fetch('Teacher/Analysis/lessonAnalysis');
    // }
    /**
     * [showLessonStuAnalysis 展示课堂分析，该课堂所有学生列表]
     * @return [type] [description]
     */
    public function showLessonStuAnalysis()
    {
        //获取课堂id
        $courseSchedule_id = $this->request->param('id');

        //获取课堂对象
        $courseSchedule = CourseSchedule::get(['id'=>$courseSchedule_id]);
        //获取上课班级
        $Klasses = $courseSchedule->Klasses;

        //获取上课学生list
        $Students = array();
        foreach ($Klasses as $key => $Klass) {
            $Students = array_merge($Students,$Klass->Students);
        }

        //传递数据到V层
        $this->assign('courseSchedule',$courseSchedule);
        $this->assign('Students',$Students);
        $htmls = $this->fetch('Teacher/Analysis/lessonStuAnalysis');

        //返回数据
        return $htmls;
    }
    /**
     * [showStuAnalysisList 展示学生分析，所有学生列表]
     * @return [type] [description]
     */
    public function showStuAnalysisList()
    {
        $pageSize = 10;

        $search_type = $this->request->param('search_type');
        $search_content = $this->request->param('search_content');
        switch ($search_type) {
            case '0':
                $Students = Student::where('name','like','%' . $search_content . '%')->paginate($pageSize);
                break;
            default:
                $Students = Student::paginate($pageSize);
                break;
        }
        $this->assign('Students',$Students);
        return $this->fetch('Teacher/Analysis/stuAnalysis');
    }
    /**
     * [showStuLessonAnalysis 展示某学生，所有课堂列表]
     * @return [type] [description]
     */
    public function showStuLessonAnalysis()
    {
        //获取学生id
        $id = $this->request->param('id');
        //获取测试列表
        $Student = Student::get($id);
        $courseSchedules = $Student->getCourseSchedules();
        //返回数据到V层
        $this->assign('Student',$Student);
        $this->assign('courseSchedules',$courseSchedules);
        //返回结果
        $htmls = $this->fetch('Teacher/Analysis/stuLessonAnalysis');
        return $htmls;
    }
    /**
     * [showPaperAnalysisList 展示试卷列表]
     * @return [type] [description]
     */
    public function showPaperAnalysisList()
    {
        $papers = Paper::all();
        $this->assign('papers',$papers);
        return $this->fetch('Teacher/Analysis/paperAnalysis');
    }
    /**
     * [showPaperQuestionAnalysis 展示某张试卷试题列表]
     * @return [type] [description]
     */
    public function showPaperQuestionAnalysis()
    {
        //获取试卷id
        $id = $this->request->param('id');
        $paper = Paper::get($id);
        if(false === $paper){
            return $this->error('未找到id为' . $id . '的题目记录！');
        }
        $questionAnalysises = $paper->QuestionAnalysises;
        $this->assign('paper',$paper);
        $this->assign('questionAnalysises',$questionAnalysises);
        return $this->fetch('Teacher/Analysis/paperQuestionAnalysis');
    }
    /**
     * [showQuestionAnalysisList 展示所有试题列表]
     * @return [type] [description]
     */
    public function showQuestionAnalysisList()
    {
        $questionAnalysises = QuestionAnalysis::all();
        $this->assign('questionAnalysises',$questionAnalysises);
        return $this->fetch('Teacher/Analysis/questionAnalysis');
    }
    /**
     * [showQuestion 获取展示题目信息]
     * @return [html] [包含Question对象的htmls]
     */
    public function showQuestion()
    {
        //获取查询question_id
        $id = $this->request->param('question_id');
        //查看是否存在question记录
        $Question = Question::get($id);
        if(false === $Question){
            return $this->error('未找到id为' . $id . '的题目记录！');
        }
        //返回数据到V层
        $this->assign('Question',$Question);
        $htmls = $this->fetch('Teacher/question');

        return $htmls;
    }
    public function showLearnAnalysisList()
    {
        $learns = Learn::all();
        $this->assign('learns',$learns);
        return $this->fetch('Teacher/Analysis/learnAnalysis');
    }
    public function showLearnStuAnalysis()
    {
        $id = $this->request->param('id');
        if(false == $id){
            return $this->error('未找到id为' . $id .'的记录');
        }
        $learn = Learn::get($id);
        $LearnStatisticses = $learn->LearnStatisticses;
        $this->assign('learn',$learn);
        $this->assign('LearnStatisticses',$LearnStatisticses);
        return $this->fetch('Teacher/Analysis/learnStuAnalysis');
    }
    /**
     * [showLessonList 展示课堂列表]
     * @return [type] [description]
     */
    public function showLessonList()
    {
        $pageSize = 6;
        $CourseSchedules = CourseSchedule::where('type',1)->paginate($pageSize);
        $this->assign('CourseSchedules',$CourseSchedules);

        $htmls = $this->fetch('Teacher/Analyzation/lessonList');
        return $htmls;
    }
    /**
     * [showLessonDetail 展示课堂教学过程]
     * @return [type] [description]
     */
    public function showLessonDetail()
    {
        $id = $this->request->param('id');
        $CourseSchedule = CourseSchedule::get($id);
        $lessonProcessList = $CourseSchedule->getLessonProcessList();
        //var_dump($lessonProcessList);
        $this->assign('lessonProcessList',$lessonProcessList);

        return $this->fetch('Teacher/Analyzation/lessonDetail');
    }
    /**
     * [showLessonAnalysisList 展示课堂教学分知识点分析数据]
     * @return [type] [description]
     */
    public function showLessonAnalysisList()
    {
        $pageSize = 6;
        $knowledgePointList = KnowledgePoint::paginate($pageSize);
        $this->assign('knowledgePointList', $knowledgePointList);

        return $this->fetch('Teacher/Analyzation/lessonAnalysisList');
    }
    /**
     * [showLessonAnalysisDetail 查看课堂某个知识点详细答题数据]
     * @return [type] [description]
     */
    public function showLessonAnalysisDetail()
    {
        //获取KnowledgePoint_id
        $id = $this->request->param('id');
        //获取知识点对象
        $knowledgePoint = KnowledgePoint::get($id);

        //获取参与学习的学生
        $students = $knowledgePoint->CourseSchedule->getStudents();

        //绑定参数到html
        $this->assign('knowledgePoint',$knowledgePoint);
        $this->assign('students',$students);
        //返回结果
        return $this->fetch('Teacher/Analyzation/lessonAnalysisDetail');
    }
    /**
     * [showPaperList 展示试卷列表]
     * @return [type] [description]
     */
    public function showPaperList()
    {
        $papers = Paper::all();
        $this->assign('papers',$papers);
        return $this->fetch('Teacher/Analyzation/paperList');
    }
    /**
     * [showPaperProcessDetail 展示试卷过程详细信息]
     * @return [type] [description]
     */
    public function showPaperProcessDetail()
    {
        $id = $this->request->param('id');
        $paper = Paper::get($id);

        $total = $paper->getQuestionTotalNum();
        $stuFinishRatePerMinute = $paper->getProcessData();

        $this->assign('total',$total);
        $this->assign('stuFinishRatePerMinute',$stuFinishRatePerMinute);

        return $this->fetch('Teacher/Analyzation/paperProcessDetail');
    }
    /**
     * [showPaperQuestionAnalysisList 查看试题列表]
     * @return [type] [description]
     */
    public function showPaperQuestionAnalysisList()
    {
        $questions = Question::all();
        $this->assign('questions',$questions);
        return $this->fetch('Teacher/Analyzation/paperQuestionAnalysisList');
    }
    /**
     * [showPaperQuestionAnalysisDetail 获取某试题所有学生答题结果分析]
     * @return [type] [description]
     */
    public function showPaperQuestionAnalysisDetail()
    {
        $id = $this->request->param('id');
        $question = Question::get($id);
        $students = $question->getStudents();
        $this->assign('question',$question);
        $this->assign('students',$students);
        return $this->fetch('Teacher/Analyzation/paperQuestionAnalysisDetail');
    }
    /**
     * [showSelfLearningLists description]
     * @return [type] [description]
     */
    public function showSelfLearningLists()
    {
        $learns = Learn::all();
        $this->assign('learns',$learns);

        return $this->fetch('Teacher/Analyzation/selfLearningLists');
    }
    /**
     * [showSelfLearningDetail 自习过程细节数据]
     * @return [type] [description]
     */
    public function showSelfLearningDetail()
    {
        $id = $this->request->param('id');
        $learn = Learn::get($id);

        $contentNum = count($learn->getKeyContent());
        $processData = $learn->getProcessData();

        $this->assign('contentNum',$contentNum);
        $this->assign('processData',$processData);

        return $this->fetch('Teacher/Analyzation/selfLearningDetail');
    }
    /**
     * [showSelfLearningAnalysisList 自习分析列表]
     * @return [type] [description]
     */
    public function showSelfLearningAnalysisList()
    {
        $learns = Learn::all();
        $this->assign('learns',$learns);
        return $this->fetch('Teacher/Analyzation/selfLearningAnalysisList');
    }
    /**
     * [showSelfLearningAnalysisDetail 获取自习答题结果分析数据]
     * @return [type] [description]
     */
    public function showSelfLearningAnalysisDetail()
    {
        $id = $this->request->param('id');
        $learn = Learn::get($id);

        $questionResults = $learn->getExamResult();

        $this->assign('questionResults',$questionResults);

        return $this->fetch('Teacher/Analyzation/selfLearningAnalysisDetail');
    }

    public function test()
    {
        return $this->fetch('test');
    }

}
?>