
<div class="row">
	<div class="container">
		<div class="row" style="margin-top: 20px;">
		<div class="col-4">
			<div class="container kolmenu" >
			<?php foreach ($blabla as $key => $value): ?>
				<center><h1><?php echo $value->jumlah_post?></h1></center>
			<?php endforeach?>
			</div>
								
			
		</div>
		<div class="col-4">
			<div class="container kolmenu" style="background: #393E41" >
			<?php foreach ($blabla as $key => $value): ?>
				<center><h1><?php echo $value->jumlah_guru?></h1></center>
			<?php endforeach?>
			</div>
			
		</div>
		<div class="col-4">
			<div class="container kolmenu" style="background: #706E70" >
				<?php foreach ($blabla as $key => $value): ?>
				<center><h1><?php echo $value->jumlah_siswa_aktif?></h1></center>
				<?php endforeach?>
			</div>
			
		</div>
	</div>
	<div class="row">
		<div class="col-4" style="margin-top: 5px">
			<div class="container koltext" >
				<center><h4>Jumlah Semua Artikel</h4></center>
			</div>
		</div>
		<div class="col-4" style="margin-top: 5px">
			<div class="container koltext" style="background: #393E41" >
				<center><h4>Jumlah Semua Guru</h4></center>
			</div>
		</div>
		<div class="col-4" style="margin-top: 5px">
			<div class="container koltext" style="background: #706E70" >
				<center><h4>Jumlah Siswa Aktif</h4></center>
			</div>
		</div>
	</div>
	</div>
</div>