<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Base_Controller{
	function __construct(){
		parent::__construct();
		
	}

	public function index(){
		$arr = array();
		
		$this->load->view('admin/user',$arr);
	}
}