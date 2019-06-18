<?php foreach ($post as $key => $v): ?>
<?php endforeach ?>
<div class="container" >
	<div class="row">
		<div class="col-8" style="background: white;margin-top: 50px;padding: 40px 10px 10px 10px">
			<h1><?php echo $v->judul ?></h1>
			Author : <?php echo $v->nama ?>&nbsp;|| <?php echo $v->tanggal ?> || Kategori : <?php echo $v->nama_kategori ?>
			<hr>
			<?php echo $v->isi ?>
		</div>
		<div class="col-4" style="background: white;margin-top: 50px;">
			<div class="container-fluid" style="margin-top: 50px;border:1px solid #A4A9B7;border-radius: 5px;padding-top: 10px;">
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
