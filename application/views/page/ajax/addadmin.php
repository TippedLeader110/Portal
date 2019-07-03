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
						Ganti Password
						<input class="form-control" type="password" id="addpass" name="pass">
						<div id="eral" class="alert alert-danger" role="alert">
				  			<span id="erl"></span>
						</div>
						<div id="ersuk" class="alert alert-success" role="alert">
				  			<span id="ers"></span>
						</div>
						Konfirmasi Password
						<input class="form-control" type="password" id="addpass1" name="pass1">
						<div id="erral" class="alert alert-danger" role="alert">
				  			<span id="err"></span>
						</div>
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
	var blok = 1;
		$('#addpass').keyup(function(event) {
			var panjang = $(this).val();
			$('#pass1').val('');
			if (panjang.length<12 && panjang.length>4 ) {
				$('#eral').hide();
				$('#ersuk').show('slow');
				$('#ers').html('Password Dapat Digunakan !!');
				blok = 1;
				console.log(blok);
			}
			else{
				$('#ersuk').hide();
				$('#eral').show('slow');
				$('#erl').html('Password Minimal 4 Karakter dan Maksimal 12 Karakter !!');
				blok = 0;
				console.log(blok);
			}
		})
		$('#addpass1').keyup(function(event) {
			if ($(this).val()!=$('#pass').val()) {
				$('#erral').show('slow');
				$('#err').html('Password Tidak Sama !!');
				blok = 0;
				console.log(blok);
			}
			else{
				$('#erral').hide('slow');
				$('#err').html('');	
				blok = 1;
				console.log(blok);
			}
		});
	$('#postlah').submit(function(event) {
		event.preventDefault();
		if (blok==0) {
				Swal.fire('Kesalahan', 'Password tidak sama atau tidak memenuhi syarat !!', 'error');
			}
		else{
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
		}
	})
</script>


