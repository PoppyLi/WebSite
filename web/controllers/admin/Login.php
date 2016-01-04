<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends Admin_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('manager_model','manager');
		
		$this->load->helper('form');		
		$this->load->library('form_validation');
		
	}

	public function index(){
		$state = $this->form_validation->run('login');
		if($state == TRUE){
			echo '登录成功';
			exit;	
		}
		$this->load->view('admin/login');
	}
	
	
	// 验证uname是否存在
	public function uname_check($str = "")
	{
		if ($str and $mid = $this->manager->find_name($str)) {
			$this->uname = $mid;
			return TRUE;
		}else{
			$this->form_validation->set_message('uname_check', '%s '.$str.' 不存在。');
			$this->uname = FALSE;
			return FALSE;
		}
	}
	
	// 验证密码是否正确
	public function passwd($pwd = false)
	{
		// 消除通过路由的请求
		if(!$pwd || $this->router->method == 'passwd'){
			show_404();
		}
		// 帐号存在则过
		if ($mid = $this->uname) {
			$info = $this->manager->get_login($mid);
			
			// 获取禁用登录时间
			$forbidden_hours = $this->mcfg_get('adminer','forbidden_hours');
			if (!is_numeric($forbidden_hours)) {
				$forbidden_hours = 1;
			}

			if ($info['pwd_errors'] > 6) {
				if (time() - $info['login_time'] < 60*60*$forbidden_hours) {
					$this->form_validation->set_message('passwd', '这个输入密码次错误数超过，请于'.$forbidden_hours.'小时后登录！<br/>即：于 '.mdate("%Y/%m/%d %h:%i:%s" ,$info['login_time']+60*60*$forbidden_hours).' 之后登录' );;
					return FALSE;
				}else{
					$this->model->set_pwderr($mid,true);
				}
			}
			$this->load->library('encryption');
			echo $setpwd = $this->set_pwd($pwd);
			echo $this->get_pwd($setpwd);
			exit;
			if (passwd($pwd) == $info['pwd']) {
				if ($info_group = $this->model->get_group($info['gid'])) {
					$gname = $info_group['title'];
					$gpurview = $info_group['purview'];
				}else{
					$this->form_validation->set_message('passwd', '帐号异常，请联系管理员！');
					return FALSE;
				}
				
				// 产品模式禁止使用原密码 ; 过滤121服务器和本地
				if (!in_array($_SERVER['SERVER_ADDR'], array('121.41.128.239','127.0.0.1','localhost','0.0.0.0')) and ENVIRONMENT =='production') {
					if ($info['pwd'] == '11372a6e7343831f12352cfd049ff59c') {
						// 生产密码错误
						$this->session->set_userdata('err_oldpwd', 1);
					}
				}

				return TRUE;
			}else{
				$this->model->set_pwderr($mid);
				$this->form_validation->set_message('passwd', '密码有误,请重新登录！');
				return FALSE;
			}			
		}
	}
}