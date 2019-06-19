<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/customNav.css') ?>">
<?php foreach ($post as $key => $v): ?>
<?php endforeach ?>
<div class="container" >
	<div class="row">
			<div class="col-8" style="background: white;margin-top: 50px;padding: 0px 10px 10px 0px">
			
		    <div class=" menupage" style="margin-left: 15px;margin-top: 20px;">
		    	
			<h1><?php echo $v->judul ?></h1>

			Author : <?php echo $v->nama ?>&nbsp;|| <?php echo $v->tanggal ?> || Kategori : <?php echo $v->nama_kategori ?>
			<div class="container" style="height: 200px;background-image: url(<?php echo base_url('source/gambar/post/'); echo $v->cover; ?>);background-position: center center">
		    </div>
			<hr>
			<?php echo $v->isi ?>
		    </div>
		</div>
		<div class="col-4" style="background: white;margin-top: 50px;">
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
