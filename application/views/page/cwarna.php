<div class="jumbotron jj" style="border-radius: 0px;">
	<center>
		<h1 style="color: white">Template Warna</h1>
		<h2 style="color: white">Semua template warna yang telah</h2>
		<h2 style="color: white">disimpan admin</h2>
	</center>
</div>
<div class="container" style="background: white;">
	<center><h2>Warna yang Tersimpan</h2></center>
	<div class="row" style="padding-left: 18px">
		<?php foreach ($warna as $key => $value): ?>
		<div class="col-2" style="background: <?php echo $value->warna_tema ?>;height: 200px;margin: 15px 15px 15px 15px">
			<?php echo $value->warna_tema ?>
		</div>
		<?php endforeach ?>
	</div>
</div>