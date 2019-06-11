  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Data Web Sekolah / Kelolah Halaman / Postingan
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-4" style="margin-top: 20px;">
			<div class="contaner kolmenu" style="background: black;">
				
			</div>
								
			<!-- <div class="container" style="background: black">
				 	<button onclick="show();" class="btn btn-info"><div style="color: white">Tampilkan Data</div><span><h2><i class="fas fa-table" style="color: white"></i></h2></span></button><button class="btn btn-primary" onclick="create();"><div style="color: white">Buat Post</div><span><h2><i class="fas fa-pen"></i></h2></span></button>
			</div> -->
		</div>
		<div class="col-4" style="margin-top: 20px;">
			<div class="contaner kolmenu" style="background: black;">
				
			</div>
			
		</div>
		<div class="col-4" style="margin-top: 20px;">
			<div class="contaner kolmenu" style="background: black;">
				
			</div>
			
		</div>
	</div>
	<div class="row">
		<div class="col-12" id="page">
		
		</div>
	</div>
<script type="text/javascript">
	function create(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postCreate') ?>');
	}
	function show(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postShow') ?>');
	}
</script>