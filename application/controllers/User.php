<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	
public function daftar()
{
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['view'] = 'Users/Daftarsiswa';
		$data['id'] = $this->db->get('identitas')->result();
		$this->load->view('layout/User', $data);
}

public function daftarsave()
{		
            $post = $this->input->post();
			$data = $this->cmodel->sendit($post);
			redirect(base_url("user/Sukses/".$data.""), 'refresh');
}

public function Sukses($d)
{
		$this->db->where('nis', $d);
		$d = $this->db->get('verifikasi')->result();
		foreach ($d as $key => $value) {
			$d = $value->nomor_verifikasi;
		}
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['view'] = 'Users/success';
		$data['val'] = $d;
		$this->load->view('layout/User', $data);
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

public function export(){
		$this->db->where('status', 'aktif');
		echo json_encode($this->db->get('siswa')->result());
	}

}
 ?>

