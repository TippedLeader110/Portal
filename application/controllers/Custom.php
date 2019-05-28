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
	
	public function index()
	{
		$data['cmain'] = "page/cmain";
		$data['home'] = 0;	
		$data['ac'] = 1;
		$this->load->view('cust/main', $data);
	}
	public function EWeb(){
		$data['home'] = 1;	
		$data['cmain'] = "page/ceweb";
		$data['ac'] = 2;
		$this->load->view('cust/main', $data);
	}
	public function KWeb(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cmain";
		$data['ac'] = 3;
		$this->load->view('cust/main', $data);
	}
	public function KUser(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cmain";
		$data['ac'] = 4;
		$this->load->view('cust/main', $data);
	}
	// ---------------------------------------------

	public function warna(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cwarna";
		$data['ac'] = 2;
		$data['warna'] = $this->cmodel->getWarna();
		$this->load->view('cust/main', $data);
	}
}
