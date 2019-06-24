  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Edit Tampilan Sekolah / Pengaturan Layout Halama Utama <span style="color: transparent;">	untuk bacok ali</span>
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 20px;">

		<div class="col-12">
			<center><h2>Pengaturan Tata Letak	 Web Sekolah</h2></center>
			<hr>
		</div>
	</div>
	
	<div class="row" style="margin-top: 20px;">
		<div class="col-2">
			<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			  <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Layar Awal</a>
			  <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Artikel</a>
			  <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Artikel</a>
			  <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Pengaturan</a>
			</div>
		</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
	  <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
				<div class="row">
					<hr>
						<h3>Kelebaran Konten Web</h3>
						<hr>
				</div>
				<div class="row">
					<div class="col-6">
						<?php if ($awal==1): ?>
							<center><input type="radio" onclick="ktn(1)" id="rad1" name="kontenl" checked >Layout 1</center>
						<?php endif ?>
						<?php if ($awal==2): ?>
							<center><input type="radio" onclick="ktn(1)" id="rad1" name="kontenl" >Layout 1</center>
						<?php endif ?>
						<div style="background: gray">
						<div class="container-fluid" style="background: #335C81;padding: 10px 10px 10px 10px">
							<center><h4 style="color: white">Navigasi Bar</h4></center>
						</div>
							<div class="container-fluid" style="background: #B2BFD0;height: 300px;padding: 130px 0px 130px 0px">
								<center><h4>Konten</h4></center>
							</div>
						</div>
					</div>
					<div class="col-6">
						<?php if ($awal==2): ?>
							<center><input type="radio" onclick="ktn(2)" checked id="rad2" name="kontenl">Layout 2</center>
						<?php endif ?>
						<?php if ($awal==1): ?>
							<center><input type="radio" onclick="ktn(2)" id="rad2" name="kontenl">Layout 2</center>
						<?php endif ?>
						<div style="background: gray">
						<div class="container-fluid" style="background: #335C81;padding: 10px 10px 10px 10px">
							<center><h4 style="color: white">Navigasi Bar</h4></center>
						</div>
							<div class="container" style="background: #B2BFD0;height: 300px;padding: 130px 0px 130px 0px;width: 80%">
								<center><h4>Konten</h4></center>
							</div>
						</div>
					</div>
				</div>
	  </div>
	  <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
	  	<div class="row">
					<hr>
						<h3>Side Bar Artikel</h3>
						<hr>
				</div>
				<div class="row">
					<div class="col-6">
						<?php if ($art==1): ?>
					<center><input type="radio" onclick="art(1);" id="rad3" checked  value="art1" name="artl">Layout 1</center>
						<?php endif ?>
						<?php if ($art==2): ?>
							<center><input type="radio" onclick="art(1);" id="rad3"   value="art1" name="artl">Layout 1</center>
						<?php endif ?>
						<div style="background: gray">
						<div class="container-fluid" style="background: #335C81;padding: 10px 10px 10px 10px">
							<center><h4 style="color: white">Navigasi Bar</h4></center>
						</div>
							<div class="container-fluid" style="background: #B2BFD0;height: 250px;padding: 130px 0px 130px 0px;width: 80%">
								<center><h4>Konten Artikel</h4></center>
							</div>
							<div class="container-fluid" style="background: #B2BFD0;height: 50px;padding: 0px 0px 0px 0px;width: 80%;margin-top: 5px;">
								<center><h4>Artikel Lainnya</h4></center>
							</div>
						</div>
					</div>
					<div class="col-6">
						<?php if ($art==2): ?>
							<center><input type="radio" id="rad4" checked value="art2" onclick="art(2);" name="artl">Layout 2</center>
						<?php endif ?>
						<?php if ($art==1): ?>
							<center><input type="radio" onclick="art(2);" id="rad4" value="art2" name="artl">Layout 2</center>
						<?php endif ?>
						<div style="background: gray">
						<div class="container-fluid" style="background: #335C81;padding: 10px 10px 10px 10px">
							<center><h4 style="color: white">Navigasi Bar</h4></center>
						</div>
						<div class="row">
							
							<div class="col-8">
								<div class="container" style="background: #B2BFD0;height: 315px;padding: 130px 0px 130px 0px;">
								<center><h4>Konten Artikel</h4></center>
								</div>

							</div>
							<div class="col-4">
								<div class="container" style="background: #B2BFD0;height: 315px;padding: 130px 0px 130px 0px;">
								<center><h4>Artikel Lainnya</h4></center>
								</div>
							</div>
						</div>
						</div>
					</div>
				</div>
	  </div>
	  <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
	  <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
	</div>
	</div>

	</div>
<script type="text/javascript">
	function art(a){
		// Swal.fire('test ' + a , 'test' , 'success');
		$.ajax({
			url: '<?php echo base_url('Custom/layKonten') ?>',
			type: 'post',
			data: {art: a},
			error: function(){
				Swal.fire({
                 	title: 'Kesalahan',
                 	text: 'Layout gagal diganti !!',
                 	type: "error",
                 	timer: 3000
                 });	
			},
			success: function(){
				Swal.fire({
                 	title: 'Sukses',
                 	text: 'Layout berhasil diganti !!',
                 	type: "success",
                 	timer: 3000
                 });	
			}
		});
	}


	function ktn(a){
		$.ajax({
			url: '<?php echo base_url('Custom/layKonten') ?>',
			type: 'post',
			data: {awl: a},
			error: function(){
				Swal.fire({
                 	title: 'Kesalahan',
                 	text: 'Layout gagal diganti !!',
                 	type: "error",
                 	timer: 3000
                 });	
			},
			success: function(){
				Swal.fire({
                 	title: 'Sukses',
                 	text: 'Layout berhasil diganti !!',
                 	type: "success",
                 	timer: 3000
                 });	
			}
		});
	}
</script>