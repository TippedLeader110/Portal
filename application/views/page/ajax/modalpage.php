<?php foreach ($guru2 as $key => $value): ?>
	
<?php endforeach ?>
<div class="row">
	        			<div class="col-4">
	        				<div class="form-group">
	        					<div style="background-size: contain;background-position: center;width: 180px;height: 208px;background-image: url(<?php echo base_url('Source/img/blank.png') ?>);">
	        					<a data-fancybox="gallery" href="<?php echo base_url('source/gambar/guru/'); echo $value->foto ?>">
	        						<img style="width: 180px;height: 208px;object-fit: cover;" src="<?php echo base_url('source/gambar/guru/'); echo $value->foto ?>">	
	        					</a>
	        					</div>
	        				</div>
	        			</div>
	        			<div class="col-8">
	        				<div class="form-group">
	        					<table>
	        						<tr>
	        							<td><h4>NIP</h4></td><td><h4>: <span id="nip"><?php echo $value->nip ?></span></h4></td>
	        						</tr>
	        						<tr>
	        							<td><h4>Nama</h4></td><td><h4>: <span id="nama"><?php echo $value->nama_guru ?></span></h4></td>
	        						</tr>
	        						<tr>
	        							<td><h4>Jabatan</h4></td><td><h4>: <span id="jabatan"><?php echo $value->jabatan ?></span></h4></td>
	        						</tr>
	        						<tr>
	        							<td><h4>Mata Pelajaran</h4></td><td><h4>: <span id="mapel"><?php echo $value->mapel ?></span></h4></td>
	        						</tr>
	        						<tr>
	        							<td><h4>Alamat</h4></td><td><h4>: <span id="alamat"><?php echo $value->alamat ?></span></h4></td>
	        						</tr>

	        					</table>
	        				</div>
	        			</div>
	        			
	        		</div>