<div class="jumbotron ja" style="border-radius: 0px;">
	<center>
		<h1 style="color: white">Pengaturan Identitas Website</h1>
		<h2 style="color: white">###</h2>
		<h2 style="color: white">Pilih menu <i class="fas fa-bars"></i> Untuk edit lebih lanjut</h2>
	</center>
</div>
<div class="container" style="background: white">
	<div class="row">
		<div class="col-12 " class="ctext">
			<div id="mainpage" style="padding: 40px 20px 40px 20px">
				<?php foreach ($sek as $key => $v): ?>
				<?php endforeach ?>
				<table class="table-borderless">
					<tr>
						<td>
							<h2>Nama Sekolah : <?php echo $v->nama_sekolah ?></h2>
						</td>
					</tr>
					<tr>
						<td>
							<h2>Visi Sekolah : <?php echo $v->visi ?></h2>
						</td>
					</tr>
					<tr>
						<td>
							<h2>Misi Sekolah : <?php echo $v->misi ?></h2>
						</td>
					</tr>
					<tr>
						<td>
							<h2>Sejarah Sekolah : <?php echo $v->sejarah ?></h2>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
    // alert('yeah');
    // $("#mainpage").load('<?php echo base_url('Home')?>');
	});
</script>