<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/customNav.css') ?>">
<?php foreach ($post as $key => $v): ?>
<?php endforeach ?>
<div class="container" >
	<?php foreach ($ids as $key => $vid): ?>
	
	<?php endforeach ?>
	<div class="row" style="margin-top: 10px;margin-bottom: 10px;">
	  <div class="col-12">
	    <img class="img2" src="<?php echo base_url('source/gambar/logo/'); echo $vid->logo ?>"><span class="bottomright" style="color: #335C81;font-weight: bolder;font-size: 40px;"><?php echo $vid->nama_sekolah ?></span>
	    	<?php $this->load->view($vnav) ?>

	  </div>
	</div>
	<div class="row">
			<div class="col-12" style="background: white;margin-top: 50px;padding: 10px 10px 10px 10px">
			
		    	
			<div class="container-fluid menupage">
				<h1><?php echo $v->judul ?></h1>

			Author : <?php echo $v->nama ?>&nbsp;|| <?php echo $v->tanggal ?> || Kategori : <?php echo $v->nama_kategori ?>
			<div class="container" style="height: 300px;background-image: url(<?php echo base_url('source/gambar/post/'); echo $v->cover; ?>);background-position: center center">
		    </div>
			<hr>
			<?php echo $v->isi ?>
			<hr>
		    <h3>Artikel Lainnya</h3>
				<div class="row">
				<?php foreach ($post2 as $key => $value): ?>
					<div class="col-3">
						<div class="row">
							<div class="col-12" >
								<div class="container-fluid" style="background-image: url(<?php echo base_url('source/gambar/post/'); echo $value->cover; ?>);height: 180px;background-position: center center;border-style: solid;border-width: 1px;border-color: black;">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="container-fluid" style="border-style: solid;border-width: 1px;border-color: black;border-top-width: 0px;max-height: 50px;overflow: hidden;">
									<a href="<?php echo base_url('Artikel/'); echo $value->slug ?>"><?php echo $value->judul ?></a>
								</div>
							</div>
						</div>
					</div>	
				<?php endforeach ?>
				</div>
			</div>
		</div>
		
	</div>
	
</div>
