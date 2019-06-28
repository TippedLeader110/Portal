<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/customNav.css') ?>">
<?php foreach ($post as $key => $v): ?>
<?php endforeach ?>
<div class="container" >
	<div class="row">
			<div class="col-10 offset-1" style="background: white;margin-top: 50px;padding: 10px 10px 10px 10px">
			
		    	
			<div class="container-fluid menupage">
				<h1><?php echo $v->judul ?></h1>

			Author : <?php echo $v->nama ?>&nbsp;|| <?php echo $v->tanggal ?> || Kategori : <?php echo $v->nama_kategori ?>
			<div class="container" style="height: 200px;background-image: url(<?php echo base_url('source/gambar/post/'); echo $v->cover; ?>);background-position: center center">
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
									<a href="<?php echo base_url('Artikel/sekolah/'); echo $value->id_post ?>"><?php echo $value->judul ?></a>
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
