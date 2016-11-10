<?php
namespace app\index\controller;
use app\model\Course;
use app\model\Klass;
use app\model\KlassCourse;
use think\Request; 

/**
* 课程管理
*/
class CourseController extends IndexController
{
	
	public function index()
	{
		//获取查询信息
		$name = input('get.name');
		//获取对象
		$pageSize = 5;

		$Course = new Course;
		$courses = $Course->where('name', 'like', '%' . $name . '%')->paginate($pageSize);
		//传递到V层
		$this->assign('courses', $courses);
		//返回对象
		$htmls = $this->fetch();
		return $htmls;
	}

	public function add()
	{
        $this->assign('Course', new Course);

        return $this->fetch();
	}

    public function save()
    {
        // 存课程信息
        $Course = new Course();
        $Course->name = Request::instance()->param('name');

        // 新增数据并验证。验证类我们好像还没有写呢。自己参考其它的验证类，写一下吧。
        if (!$Course->validate(true)->save()) {
            return $this->error('课程保存错误：' . $Course->getError());
        }

        // -------------------------- 新增班级课程信息 -------------------------- 
        // 接收klass_id这个数组
        $klassIds = Request::instance()->post('klass_id/a');       // /a表示获取的类型为数组
        //var_dump($klassIds);
        // 利用klass_id这个数组，拼接为包括klass_id和course_id的二维数组。
        if (!is_null($klassIds)) {
            if (!$Course->Klasses()->saveAll($klassIds)) {
                return $this->error('课程-班级信息保存错误：' . $Course->Klasses()->getError());
            }
        }
        // -------------------------- 新增班级课程信息(end) -------------------------- 

        unset($Course); // unset出现的位置和new语句的缩进量相同，在返回前，最后被执行。
        return $this->success('操作成功', url('index'));
    }

    public function edit()
    {
        //获取课程id
        $id = Request::instance()->param('id/d');
        //获取课程对象实例
        $Course = Course::get($id);
        if(is_null($Course))
        {
            return $this->error('不存在ID为' . $id . '的课程记录！');
        }
        //返回修改页面
        $this->assign('Course',$Course);
        return $this->fetch();
    }

    public function test()
    {
        $Course = new Course;
        $Course->name = 'ssss';
        // 调用当前模型对应的User验证器类进行数据验证
        //$data['name'] = 'ssss';
        $result = $Course->validate(true)->save($Course);
        var_dump($result);
        if(false === $result){
            // 验证失败 输出错误信息
            dump($Course->getError());
        }
    }
    
    public function update()
    {
        // 获取当前课程
        $id = Request::instance()->post('id/d');

        //return var_dump($id);
        if (is_null($Course = Course::get($id))) {
            return $this->error('不存在ID为' . $id . '的记录');
        }
        // 更新课程名
        $Course->name = Request::instance()->post('name');
        
        if (is_null($Course->validate(true)->save())) {
            return $this->error('课程信息更新发生错误：' . $Course->getError());
        }

        // 删除原有信息
        $map = ['course_id'=>$id];

        // 执行删除操作。由于可能存在 成功删除0条记录，故使用false来进行判断，而不能使用
        // if (!KlassCourse::where($map)->delete()) {
        // 我们认为，删除0条记录，也是成功
        if (false === $Course->KlassCourses()->where($map)->delete()) {
            return $this->error('删除班级课程关联信息发生错误' . $Course->KlassCourses()->getError());
        }

        // 增加新增数据，执行添加操作。
        $klassIds = Request::instance()->post('klass_id/a');
        if (!is_null($klassIds)) {
            if (!$Course->Klasses()->saveAll($klassIds)) {
                return $this->error('课程-班级信息保存错误：' . $Course->Klasses()->getError());
            }
        }

        return $this->success('更新成功', url('index'));
    }
}
?>