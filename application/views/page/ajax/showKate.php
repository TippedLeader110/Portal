<div class="container-fluid menupage" >
	<button onclick="tamK();" class="btn btn-success" style="margin-bottom: 20px;"><div style="color: white">Tambah</div><span><h2><i class="fas fa-plus" style="color: white"></i></h2></span></button>&nbsp;
	<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">
				<th>
					Nomor
				</th>
				<th>Nama Kategori</th>
				<th>Aksi</th>
			</tr>
			<?php $i=1; ?>
			<?php foreach ($quer as $key => $value): ?>
				<tr>
					<td>
						<?php echo $i; $i++; ?>
					</td>
					<td>
						<?php echo $value->nama_kategori ?>
					</td>
					<td><button class="btn btn-danger" onclick="Kdel(<?php echo $value->id_kategori ?>);">Hapus</button></td>
				</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>

