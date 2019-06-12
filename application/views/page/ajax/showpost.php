<div class="container-fluid menupage" >
	<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">
				<th>Judul</th>
				<th>Author</th>
				<th>Tanggal</th>
				<th>Tipe Publikasi</th>
				<th>Kategori</th>
			</tr>
			<?php foreach ($quer as $key => $value): ?>
				<tr>
					<td>
						<?php echo $value->judul ?>
					</td>
					<td>
						<?php echo $value->nama ?>
					</td>
					<td>
						<?php echo $value->tanggal ?>
					</td>
					<td>
						<?php echo $value->status ?>
					</td>
					<td>
						<?php echo $value->nama_kategori; ?>
					</td>
				</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>
