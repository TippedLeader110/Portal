<?php foreach ($id as $key => $setval): ?>
	
<?php endforeach ?>

<div class="row">
	<div class="container-fluid mod" style="width: 80%;margin-bottom: 50px;margin-top: 50px;background: white;padding: 20px 10px 20px 10px">
		<center><h2>Selamat Datang di zona pendaftaran Online</h2></center>
		<center><h2><?php echo $setval->nama_sekolah ?></h2></center>
		<center><a href="user/daftar">Daftar Disini !!</a></center>
		<hr>
		<div class="container">
				<?php foreach ($id as $key => $vlist): ?>
					<?php echo $vlist->note ?>
				<?php endforeach ?>
		</div>
	</div>
</div>