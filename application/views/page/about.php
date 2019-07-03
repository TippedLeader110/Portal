<?php foreach ($id as $key => $vid): ?>
<?php endforeach ?>
<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/sekolah.css') ?>">
<div class="row" style="margin-top: 10px;margin-bottom: 10px;">
  <div class="col-12">
    <img class="img2" src="<?php echo base_url('source/gambar/logo/'); echo $vid->logo ?>"><span class="bottomright" style="color: #335C81;font-weight: bolder;font-size: 40px;"><?php echo $vid->nama_sekolah ?></span>

  </div>
</div>
  <div class="row">
  <div class="col-12">
    <?php $this->load->view($vnav) ?>
  </div>
</div>

<div class="row" style="padding-top: 30px;">
	<div class="col-12">
		<h3>Informasi Sekolah</h3>
		<hr>
	</div>
</div>
<div class="row" style="padding-top: 10px;padding-bottom: 10px;">
	<div class="col-2">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link active" id="v-VisiMisi-tab" data-toggle="pill" href="#v-VisiMisi" role="tab" aria-controls="v-VisiMisi" aria-selected="true">Visi Misi</a>

	      <a class="nav-link" id="v-Sejarah-tab" data-toggle="pill" href="#v-Sejarah" role="tab" aria-controls="v-Sejarah" aria-selected="true">Sejarah Kami</a>

	      <a class="nav-link" id="v-struktur-tab" data-toggle="pill" href="#v-struktur" role="tab" aria-controls="v-struktur" aria-selected="true">Struktur Sekolah</a>
    	</div>
	</div>
	<div class="col-10">
		<div class="tab-content" id="v-pills-tabContent">
			<div class="tab-pane fade show active" id="v-VisiMisi" role="tabpanel" aria-labelledby="v-VisiMisi-tab">
				<h4>Visi</h4>
				<hr>
				<?php echo $vid->visi ?>
				<h4>Misi</h4>
				<hr>
				<?php echo $vid->misi ?>
			</div>

			<div class="tab-pane fade " id="v-Sejarah" role="tabpanel" aria-labelledby="v-Sejarah-tab">
				<h4>Sejarah</h4>
				<hr>
				<?php echo $vid->sejarah ?>
			</div>

			<div class="tab-pane fade " id="v-struktur" role="tabpanel" aria-labelledby="v-struktur-tab">
				<h4>Struktur Sekolah</h4>
				<hr>
				<?php foreach ($guru as $key => $value): ?>
						<div class="row menupage">
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
				<?php endforeach ?>
			</div>
		</div>
	</div>
</div>