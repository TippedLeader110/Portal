<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{

	function __construct(){
		parent::__construct();		
		$this->load->model('cmlogin');
 
	}

	public function index()
	{
		$this->load->view('login');
	}

	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' => md5($password)
			);
		$cek = $this->cmlogin->cek_login("user",$where)->num_rows();
		if($cek > 0){
 			$ar = $this->db->query("select * from user where username = '".$username."'  ")->result();
 				foreach ($ar as $key => $v) {
 				}
			$data_session = array(
				'username' => $username,
				'status' => "login",
				'nama' => $v->nama,
				'id' => $v->id_user
				);
 
			$this->session->set_userdata($data_session);
 			echo "1";
			// redirect(base_url("Custom/"));
 
		}else{
			echo "0";
		}
	}
 
	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}

	function daft(){
		$this->load->view('savelogin');
	}
	function daftar_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$password = md5($password);
		$nama = $this->input->post('name');
			$data = array('username' => $username, 'password' => $password, 'nama' => $nama);
				$this->db->insert('user', $data);
				redirect(base_url('login'));


	}
}