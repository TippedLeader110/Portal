<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/Home
	 *	- or -
	 * 		http://example.com/index.php/Home/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/Home/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['title'] = "Homepage";
		
		$data['datanav'] = $this->db->get('navitem')->result();
		$this->db->limit(4);
		$data['postmain'] = $this->db->get('allpost')->result();
		$this->db->limit(9);
		$data['postmain3'] = $this->db->get('allpost')->result();
		$data['post'] = $this->db->get('post')->result();
		$this->db->limit(6);
		$data['img'] = $this->db->get('img')->result();
		$data['kate'] = $this->db->get('kategori')->result();
		$data['vnav'] = "nav/home_v";
		$data['postmain2'] = $this->db->query('SELECT * FROM allpost 			ORDER BY RAND() LIMIT 4')->result();
		$data['rand'] = $this->db->query('SELECT link FROM img ORDER BY RAND() LIMIT 1')->result();
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lhome==1) {
			$data['v1'] = "page/home_v_2";
		$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/home_v_2";
			$this->load->view('layout/home_v_2', $data);
		}
	}
	public function portal(){
		$data['title'] = "Homepage";
		$data['v1'] = "page/portal";
		$data['vnav'] = "nav/home_v";
		$this->load->view('layout/home_v', $data);
	}

	public function cekweb(){
		$this->db->where('tipe', 'public');
		$data['carousel'] = $this->db->get('img')->result();
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['v1'] = "fitur/lastestpost";
		$data['vnav'] = "nav/home_v";
		$this->load->view('layout/home_v', $data);
	}
}
