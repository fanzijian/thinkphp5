<?php
namespace app\index\controller;
use think\Controller;
/**
* 
*/
class UploadController extends IndexController
{
	public function upload()
	{
		$path = "resource/photo/student/";
		$message = 'failed';
		$extArr = array("jpg", "png", "gif");

		if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
			$name = $_FILES['photoimg']['name'];
			$size = $_FILES['photoimg']['size'];
			
			if(empty($name)){
				$message = '请选择要上传的图片';
				return $message;
			}

			$ext = $this->extend($name);
			if(!in_array($ext,$extArr)){
				$message = '图片格式错误！';
				return $message;
			}
			if($size>(10*1024*1024)){
				$message = '图片大小不能超过100KB';
				return $message;
			}
			$image_name = time().rand(100,999).".".$ext;
			$tmp = $_FILES['photoimg']['tmp_name'];
			if(move_uploaded_file($tmp, $path.$image_name)){
				$message = '<img src="http://localhost/thinkphp5/public/'.$path.$image_name.'"  class="preview">';
				return $message;
			}else{
				//echo $_FILES['myFile']['error'];
				$message = '上传出错了！';
				return $message;
			}
			//exit;
		}
		return $message;
		//exit;

	}

	public function extend($file_name){
		$extend = pathinfo($file_name);
		$extend = strtolower($extend["extension"]);
		return $extend;
	}
}
?>