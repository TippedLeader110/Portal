<div class="row">
	  <div class="col-12">
	  	<div class="container menupage" style="margin-top: 50px;">
	  		<form id="postlah">
	  		<div class="row">
	  			<div class="col-12">
	  				<center><h4>Tambah Admin/Staff Baru</h4></center>
	  				<hr>

	  			</div>
	  			<div class="col-4">
	  				<div class="form-group">
	  					<label>Nama</label>
	  					<input type="text" class="form-control" name="nama">
	  				</div>
	  				<div class="form-group">
	  					<label>Username</label>
	  					<input type="text" class="form-control" name="username">
	  				</div>
	  				<div class="form-group">
	  					<label>Password</label>
	  					<input type="password" class="form-control" name="pass">
	  				</div>
	  				<div class="form-group">
	  					<label>Tingkat Otoritas</label>
	  					<select name="otoritaslevel" class="form-control">
	  						<option value="1">Level 1</option>
	  						<option value="2">Level 2</option>
	  					</select>
	  				</div>
	  				<div class="form-group">
	  					<button class="btn btn-outline-primary" type="submit">Simpan</button>
	  				</div>
	  			</div>
	  		</div>
	  		</form>
	  	</div>
	  </div>
</div>

<script type="text/javascript">
	var boleh = 1;
	$('#postlah').submit(function(event) {
		event.preventDefault();
		$.ajax({
			url: '<?php echo base_url('Custom/addAdminSave') ?>',
			type: 'post',
			data: new FormData(this),
			processData:false,
            contentType:false,
            error: function(){
            	Swal.fire('Kesalahan !!', 'Gagal terhubung ke server !!', 'error');
            },
            success: function(hasil){
            	if (hasil=='gagal') {
            		Swal.fire('Kesalahan !!', 'Username telah di pakai !!', 'error');
            	}
            	if (hasil=='sukses') {
            		Swal.fire('Berhasi !!', 'Data berhasil disimpan !!', 'success');
            	activaTab('v-pills-profile');	
            	$('#adminlist').load('<?php echo base_url('Custom/adminlist') ?>');
            	}
            }
	});
	})
</script>


