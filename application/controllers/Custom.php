<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Custom extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/Custom
	 *	- or -
	 * 		http://example.com/index.php/Custom/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/Custom/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __construct(){
        parent::__construct();
        $data['home']=1;
    }
	public function index()
	{
		$data['cmain'] = "page/cmain";
		$data['home'] = 0;	
		$data['ac'] = 1;
		$data['navact'] = 0;
		$data['nav'] = 'nav/custkiri';
		$this->load->view('cust/main', $data);
	}
	public function EWeb(){
		$data['home'] = 1;	
		$data['cmain'] = "page/ceweb";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 0;
		$this->load->view('cust/main', $data);
	}
	public function KWeb(){
		$data['home'] = 2;	
		$data['cmain'] = "page/ckweb";
		$data['ac'] = 3;
		$data['nav'] = 'nav/custkiri2';
		$data['navact'] = 0;
		$this->load->view('cust/main', $data);
	}
	public function KUser(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cmain";
		$data['ac'] = 4;
		$data['navact'] = 0;
		$this->load->view('cust/main', $data);
	}
	// --------------------EWeb----------------------

	public function warna(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cwarna";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 4;
		$data['warna'] = $this->cmodel->getWarna();
		$this->load->view('cust/main', $data);
	}
	public function saveWarna(){
		$a = $this->input->post('kode');
		$b = $this->input->post('label');
		$this->cmodel->setWarna($a,$b);
	}
	public function remWarna(){
		$a = $this->input->post('id');
		$this->cmodel->delWarna($a);
	}

	// --------------------KWeb----------------------

}
