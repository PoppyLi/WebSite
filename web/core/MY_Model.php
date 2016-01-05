<?php if (!defined('BASEPATH')) exit('No direct access allowed.');

class MY_Model extends CI_Model{
	protected $table = 'configs';
	
	public function __construct(){
		parent::__construct();
	}

	public function get($category,$key){
		$query = $this->db->select('value')-> get_where($this->table,array('category'=>$category,"key"=>$key));
		if ($row = $query->row_array()) {
			return $row['value'];
		}else{
			return FALSE;
		}
	}	
}
