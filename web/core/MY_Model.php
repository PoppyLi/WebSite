<?php if (!defined('BASEPATH')) exit('No direct access allowed.');

class MY_Model extends CI_Model{
	protected $table = '';
	
	public function __construct(){
		parent::__construct();
	}

	public function get($category,$key){
		$query = $this->db->select('value')
			-> where(array('category'=>$category,"key"=>$key))
			-> get('configs');
		if ($row = $query->row_array()) {
			return $row['value'];
		}else{
			return FALSE;
		}
	}	
}
