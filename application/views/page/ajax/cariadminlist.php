<div class="table-responsive">
	  					<table class="table table-striped">
	  						<tr>
	  							<th>ID</th><th>Nama</th><th>Level</th><th colspan="">Aksi</th>
	  						</tr>
	  						<?php foreach ($data as $key => $vdata): ?>
	  							<tr>
	  								<td><?php echo $vdata->id_user ?></td>
	  								<td><?php echo $vdata->nama ?></td>
	  								<td><?php echo $vdata->level ?></td>
	  								<td><button onclick="edit(<?php echo $vdata->id_user ?>)" class="btn btn-primary">Edit Otoritas</button>&nbsp;<button onclick="delUser(<?php echo $vdata->id_user ?>)" class="btn btn-danger">Hapus</button></td>
	  							</tr>
	  						<?php endforeach ?>
	  					</table>
	  				</div>