<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	function __construct(){
		parent::__construct();
	}
}

class Admin_Controller extends MY_Controller {
	function __construct(){
		parent::__construct();
		
		$this->load->model('configs_model','configs');		
	}
	
	public function mcfg_get($category,$key){
		$this->configs->get($category,$key);	
	}	
	
	public function set_pwd($pwd){
		return $this->encryption->encrypt($pwd);
	}
	
	public function get_pwd($pwd){
		return $this->encryption->decrypt($pwd);	
	}
}