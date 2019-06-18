<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/Artikel
	 *	- or -
	 * 		http://example.com/index.php/Artikel/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/Artikel/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['v1'] = "page/Artikel_v";
		$data['post'] = $this->db->get('allpost')->result();
		$data['vnav'] = "nav/Artikel_v";
		$this->load->view('layout/Artikel_v', $data);
	}
	public function portal(){
		$data['v1'] = "page/portal";
		$data['vnav'] = "nav/Artikel_v";
		$this->load->view('layout/Artikel_v', $data);
	}
	public function Sekolah($a){
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['v1'] = "page/artikel_v";
		$data['post'] = $this->db->query("select * from allpost where id_post = ".$a."")->result();
		$data['vnav'] = "nav/home_v";
		$data['post2'] = $this->db->query("select * from allpost where id_post = ".$a." ORDER BY RAND() limit 5")->result();
		$this->load->view('layout/home_v2', $data);
	}
}
