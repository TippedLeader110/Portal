  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Data Web Sekolah / Kelolah Halaman / Postingan
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 30px">
		<div class="col-12">
			<hr>
				<button class="btn btn-primary" onclick="create();"><div style="color: white">Buat Artikel</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;
							<button onclick="show();" class="btn btn-info"><div style="color: white">Semua Artikel</div><span><h2><i class="fas fa-table" style="color: white"></i></h2></span></button>&nbsp;
				<button class="btn btn-primary" onclick="create();"><div style="color: white">Artikel Saya</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;								 	
		</div>
	</div>
	<div class="row" style="margin-top: 30px;">
		<div class="col-12" id="page">
		
		</div>
	</div>
<script type="text/javascript">
	function create(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postCreate') ?>').hide().fadeIn('slow');
	}
	function show(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postShow') ?>').hide().fadeIn('slow');
	}
</script>