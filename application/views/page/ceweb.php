<div class="jumbotron ja" style="border-radius: 0px;">
	<center>
		<h1 style="color: white">Pengaturan Identitas Website</h1>
		<h2 style="color: white">###</h2>
		<h2 style="color: white">Pilih menu <i class="fas fa-bars"></i> Untuk edit lebih lanjut</h2>
	</center>
</div>
<div class="container-fluid" style="background: white">
	<div class="row">
		<div class="col-12 " class="ctext">
			<div id="mainpage" style="padding: 40px 20px 40px 20px">
				<?php foreach ($sek as $key => $v): ?>
				<?php endforeach ?>
				<table class="table table-bordered">
				<thead class="thead-dark">
					<tr>
						<th><center>Nama Sekolah</center></th>
						<th><center>Visi Sekolah</center></th>
						<th><center>Misi Sekolah</center></th>
						<th><center>Hapus</center></th>
						<th><center>Edit</center></th>
						</tr>
						<td><center><?php echo $v->nama_sekolah?></center></td>
						<td><center><?php echo $v->visi ?></center></td>
						<td><center><?php echo $v->misi ?></center></td>
						<th><a href="#" class="btn btn-danger" role="button">Hapus</a></th>
						<th><a href="#" class="btn btn-primary" role="button">Edit</a></th>

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