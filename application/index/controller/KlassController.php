<?php
namespace app\index\controller;
use app\model\Klass;        // 班级
use app\model\Teacher;


class KlassController extends IndexController
{
    public function index()
    {
    	$name = input('get.name');
        $pageSize = 5;

        $Klass = new Klass; 
        $klasses = $Klass->where('name', 'like', '%' . $name . '%')->paginate($pageSize);

        $this->assign('klasses', $klasses);
        return $this->fetch();
    }

	public function add()
	{
		// 获取所有的教师信息
        $teachers = Teacher::all();
        $this->assign('teachers', $teachers);
        return $this->fetch();
	}

    public function edit()
    {
        $id = input('get.id/d');

        // 获取所有的教师信息
        $teachers = Teacher::all();
        $this->assign('teachers', $teachers);

        // 获取用户操作的班级信息
        if (false === $Klass = Klass::get($id))
        {
            return $this->error('系统未找到ID为' . $id . '的记录');
        }

        $this->assign('Klass', $Klass);
        return $this->fetch();

    }

    public function save()
    {
        $id = input('post.id/d');

        // 获取传入的班级信息
        $Klass = Klass::get($id);
        if (false === $Klass)
        {
            return $this->error('系统未找到ID为' . $id . '的记录');
        }

        // 数据更新
        $Klass->name = input('post.name');
        $Klass->teacher_id = input('post.teacher_id');
        if (false === $Klass->validate(true)->save())
        {
            return $this->error('更新错误：' . $Klass->getError());
        } else {
            return $this->success('操作成功', url('index'));
        }
    }

    public function update()
    {
        $id = input('post.id/d');

        // 获取传入的班级信息
        $Klass = Klass::get($id);
        if (false === $Klass)
        {
            return $this->error('系统未找到ID为' . $id . '的记录');
        }

        // 数据更新
        $Klass->name = input('post.name');
        $Klass->teacher_id = input('post.teacher_id');
        if (false === $Klass->validate(true)->save())
        {
            return $this->error('更新错误：' . $Klass->getError());
        } else {
            return $this->success('操作成功', url('index'));
        }
    }

    public function delete()
    {
    	$message = '删除成功！';
    	$error = '';
    	try {
	    	//获取id
	    	$id = input('get.id/d');

	    	//获取要删除的对象
	    	$Klass = Klass::get($id);

	    	//判断对象是否存在
	    	if(false === $Klass)
	    	{
	    		throw new \Exception('不存在id为' . $id . '的课堂，删除失败');
	        }

	    	//删除获取的对象
	    	if(false === $Klass->delete())
	    	{
	    		throw new \Exception('删除失败:' . $Klass->getError());
	    	}

	    	//运行正常,进行跳转
	    	return $this->success($message, url('index'));
    	} catch (Exception $e) {
    		return $this->error('系统错误' . $e->getMessage());
    	}

    	

    }
}