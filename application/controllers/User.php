<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	
public function daftar()
{
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['view'] = 'Users/Daftarsiswa';
		$this->load->view('layout/User', $data);
}

public function daftarsave()
{
		$post = $this->input->post();
		$this->cmodel->sendit($post);
}

public function daftarAkun()
{
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['view'] = 'Users/daftarakun';
		$this->load->view('layout/User', $data);
}

public function daftarFile()
	{
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['view'] = 'Users/Daftarsiswafile';
		$this->load->view('layout/User', $data);
	}	


public function index()
	{
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$data['view'] = 'Users/daftar';
		$this->load->view('layout/User', $data);
	}


public function home(){
	$data['datanav'] = $this->db->get('navitem')->result();
	$data['id'] = $this->db->get('identitas')->result();
	$data['vnav'] = "nav/home_v";
	$data['view'] = 'Users/home';
	$this->load->view('layout/User', $data);
}

}
 ?>

