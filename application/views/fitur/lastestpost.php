<?php $table = $this->db->query('select * from post limit 4')->result() ?>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			
			<h2><u>Artikel Terbaru</u></h2>
			<hr>
		</div>
	</div>
	<div class="row">
		<?php foreach ($table as $key => $valpost): ?>
			<div class="col-3">
			<div class="container" style="height: 250px;background-image: url(<?php echo base_url('source/gambar/post/');echo $valpost->cover; ?>);background-repeat: no-repeat;background-position: center center;background-attachment: fixed;background-size: cover;background-color: #464646;">
			</div>
			<div class="container" style="height: 50px;background: transparent;padding-top: 10px;border-left: 2px solid #384a62;border-right: 2px solid #384a62; border-bottom: 2px solid #384a62">
				<center><span style="overflow: auto;max-width: 100px;"><?php echo $valpost->judul ?></span></center>

			</div>
		</div>
		<?php endforeach ?>
	</div>
</div>

