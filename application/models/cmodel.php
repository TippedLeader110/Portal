<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cmodel extends CI_Model {

	public function getWarna(){
		$query = $this->db->get("tema");
		return $query->result();		
	}

	public function setWarna($a,$b){
		$data = array('warna_tema' => $a, 'label' => $b);
		$this->db->insert('tema', $data);
	}

}

?>