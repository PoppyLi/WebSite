<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends Base_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('manager_model','manager');
		$this->load->model('configs_model','configs');	
		$this->load->model('log_model','logs');
		
		$this->load->helper('form');		
		$this->load->library('form_validation');		
	}

	public function index(){
		$state = $this->form_validation->run('login');
		if($state == TRUE){
			$mid = $this->uname; 
			$info = $this->manager->get_login($mid);
			$session = array(
					"mid" => $mid,
					"uname" => $info['uname'],
					"nickname" => $info['nickname'],
					"login_ip" => $this->input->ip_address(),
					"gid" => $info['gid'],
					);

				$this->session->set_userdata($session);
				$this->manager->set_login($mid);

				// 记住登录 1 周
				if ($this->input->post('remember')) {

					$rember_hours = $this->mcfg_get('adminer','rember_hours');
					if (!is_numeric($rember_hours)) {
						$rember_hours = 72;
					}

					$_rember = md5($this->config->item('encryption_key').$info['uname'].$session['login_ip']);
					$cookie = array(
						'name'   => '_rember',
						'value'  => $_rember,
						'expire' => 60*60*$rember_hours,
						'path'   => $this->config->item('cookie_path'),
						);
					$this->input->set_cookie($cookie);
			}


			$this->logs->add('login','manager ID '.$this->session->userdata('mid').': 登录成功！');
            if ($this->input->get('url')) {
                redirect(urldecode($this->input->get('url')));
            }else{
                redirect(site_url('admin/main'));
            }
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
					$this->form_validation->set_message('passwd', '这个输入密码次错误数超过，请于'.$forbidden_hours.'小时后登录！<br/>即：于 '.date('Y-m-d H:i:s',$info['login_time']+60*60*$forbidden_hours).' 之后登录' );;
					return FALSE;
				}else{
					$this->model->set_pwderr($mid,true);
				}
			}		
			
			if ($this->encrypt($pwd,$info['uname']) == $info['pwd']) {
				if ($info_group = $this->manager->get_group($info['gid'])) {
					$gname = $info_group['title'];
					$gpurview = $info_group['purview'];
				}else{
					$this->form_validation->set_message('passwd', '帐号异常，请联系管理员！');
					return FALSE;
				}				
				return TRUE;
			}else{
				$this->manager->set_pwderr($mid);
				$this->form_validation->set_message('passwd', '密码有误,请重新登录！');
				return FALSE;
			}			
		}
	}

	//退出登录
	public function logout()
	{
		$this->logs->add('login','manager ID '.$this->session->userdata('mid').': 退出登录！');
		$this->session->sess_destroy();
		$this->load->helper('cookie');
		delete_cookie('_rember');
		redirect(site_url('admin/login'));
	}
	
	//密码md5加密
	protected function encrypt($password, $user)
	{
		$key = md5($this->config->item('encryption_key').$user);		
		return md5($password.$key);
	}
	
	//获取设置信息
	public function mcfg_get($category,$key){
		$this->configs->get($category,$key);	
	}
}