<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends Base_Controller{
	function __construct(){
		parent::__construct();
		
	}

	public function index(){
		$arr = array();
		$this->load->model('manager_model','mag');
		$info = $this->mag->get_group($this->session->userdata('gid'));
		$arr['user_group'] = $info['title'];
		$arr['server_ip'] = $this->input->ip_address();
		$arr['server_add'] = $_SERVER['SERVER_ADDR'];
		$arr['server_port'] = $_SERVER['SERVER_PORT'];
		$arr['upload_size'] = ini_get('upload_max_filesize');

		// 检测上传文件夹可写
		$this->load->helper('file');         
        if (new_is_writeable(UPLOAD_PATH)) {
            $arr['upload_enable'] = "OK"; 
        }

        // 检测缓存文件夹可写
        if(new_is_writeable(APPPATH.'cache')) {
            $arr['cache_enable'] = "OK"; 
        }

		$this->load->view('admin/main',$arr);
	}
}