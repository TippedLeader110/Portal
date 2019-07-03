<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">

				<th>NIS</th>
				<th>Nama Siswa</th>
				<th>Alamat</th>
				<th>Jenis Kelamin</th>
				<th>Alamat</th>
				<th>Waktu</th>
				<th>Status</th>
			</tr>
			<?php foreach ($blabla as $key => $value): ?>
				<tr>

					<td>
						<?php echo $value->nis ?>
					</td>
					<td><?php echo $value->nis ?></td>
					<td><?php echo $value->nama_siswa ?></td>
					<td><?php echo $value->alamat ?></td>
					<td><?php echo $value->jenis_kelamin?></td>
					<td><?php echo $value->waktu ?></td>
					<td><?php echo $value->status ?></td>
				</tr>
			<?php endforeach ?>
		</table>
	</div>
