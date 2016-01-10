<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CRUD_Controller{
	function __construct(){
		parent::__construct();
		
	}

	public function index($page=1){
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
        
        $str = explode('_', $this->uri->segment(2,0));
		$arr['url'] = $this->uri->segment(2,0);
		$arr['ch_url'] = $str[0];

		$this->load->view('admin/main',$arr);
	}
}