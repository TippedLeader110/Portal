<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/customNav.css') ?>">
<?php foreach ($post as $key => $v): ?>
<?php endforeach ?>
<div class="container" style="width: 80%">
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
			
		    	
			<div class="container-fluid">
				<h1><?php echo $v->judul ?></h1>

			Author : <?php echo $v->nama ?>&nbsp;|| <?php echo $v->tanggal ?> || Kategori : <?php echo $v->nama_kategori ?>
			<div class="container" style="height: 300px;background-image: url(<?php echo base_url('source/gambar/post/'); echo $v->cover; ?>);background-position: center center;background-size: cover;background-repeat: no-repeat;">
		    </div>
			<hr>
			<?php echo $v->isi ?>
			<hr>
		    <h3>Artikel Lainnya</h3>
				<div class="row">
				<?php foreach ($post2 as $key => $value): ?>
					<div class="col-4">
		            <div class="card mb-4 box-shadow">
		                    <a href="<?php echo base_url('Artikel/sekolah/'); echo $value->id_post; ?>"><img style="width: 100%;max-height: 160px;object-position: center;object-fit: cover;" class="card-img-top" src="<?php echo base_url('source/gambar/post/'); echo $value->cover ?>" alt="Card image cap">
		                    <div class="card-body" style="max-height: 100px;">
		                      <div style="width: 300px;height: 50px;overflow: hidden;"><?php echo $value->judul ?></div>
		                        <span style="max-width: 50px;"><?php echo $value->nama ?></span>&nbsp;<span><?php echo $value->tanggal ?></span></a>
		                </div>
		            </div>
		          </div>
				<?php endforeach ?>
				</div>
			</div>
			<footer class="footer">
		<div class="container foot"> 
			<span style="color: white">© Copyright <?php   echo $nama; ?></span>
		</div>
	</footer>
		</div>
		
	</div>
	
</div>
