<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/customNav.css') ?>">
<?php foreach ($ids as $key => $vid): ?>
	
<?php endforeach ?>
<?php foreach ($post as $key => $v): ?>
<?php endforeach ?>
<div class="container" >
	<div class="row" style="margin-top: 10px;margin-bottom: 10px;">
	  <div class="col-12">
	    <img class="img2" src="<?php echo base_url('source/gambar/logo/'); echo $vid->logo ?>"><span class="bottomright" style="color: #335C81;font-weight: bolder;font-size: 40px;"><?php echo $vid->nama_sekolah ?></span>

	  </div>
	</div>
	<?php $this->load->view($vnav) ?>
	
	<div class="row">
			<div class="col-8" style="margin-top: 20px;padding: 0px 10px 10px 0px">
			
		    <div class=" menupage" style="margin-left: 15px;margin-top: 20px;">
		    	
			<h1><?php echo $v->judul ?></h1>

			Author : <?php echo $v->nama ?>&nbsp;|| <?php echo $v->tanggal ?> || Kategori : <?php echo $v->nama_kategori ?>
			<div class="container" style="height: 200px;background-image: url(<?php echo base_url('source/gambar/post/'); echo $v->cover; ?>);background-position: center center">
		    </div>
			<hr>
			<?php echo $v->isi ?>
		    </div>
		</div>
		<div class="col-4" style="margin-top: 20px;">
			<div class="container-fluid menupage" style="margin-top: 20px;padding-top: 10px;">
				<center><h3>Artikel Lainya</h3></center>
				<hr>
				<ul>
				<?php foreach ($post2 as $key => $value): ?>
					<li><a href="<?php echo base_url('Artikel/sekolah/'); echo $value->id_post ?>"><?php echo $value->judul ?></a></li>
				<?php endforeach ?>
				</ul>
			</div>
		</div>
	</div>
</div>
