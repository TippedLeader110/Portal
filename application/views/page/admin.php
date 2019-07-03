
<?php foreach ($ids as $key => $sva): ?>
	
<?php endforeach ?>
<input type="text" name="id" id="iduser" value="<?php echo $sva->id_user ?>" hidden>
<input type="text" name="id" id="leveluser" value="<?php echo $sva->level ?>" hidden>

<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Staff-Admin 
			</div>
		</div>
	</div>
	
<div class="row">
  <div class="col-2" style="margin-top: 50px;">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Info Saya</a>
      <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" onclick="adminlist();" role="tab" aria-controls="v-pills-profile" aria-selected="false">Daftar Staff/Admin</a>
      <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" onclick="addadmin()" aria-controls="v-pills-messages" aria-selected="false">Tambah Staff/Admin</a>
    </div>
  </div>
  <div class="col-10">
    <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
      <div class="row">
	  <div class="col-12">
	  	<div class="container menupage" style="margin-top: 50px;">
	  		<div class="row">
	  			<div class="col-12">
	  				<center><h3>Info Saya</h3></center>
			  		<hr>
	  			</div>
	  		</div>
	  		<div class="row">
	  			<div class="col-6">
	  				<div class="form-group">
	  					<table>
	  						<tr>
	  							<td><h5>Nama</h5></td><td> <h5>: <?php echo $sva->nama ?></h5></td>
	  						</tr>
	  						<tr>
	  							<td><h5>Tingkat Otoritas</h5></td><td><h5> : <?php if ($sva->level==1): ?>
	  								Level 1 (Staff Biasa)<a data-toggle="tooltip" data-placement="right" data-html="true" title="Dapat Mengakses semua fitur staff tetapi tidak dapat menghapus/membuat akun staff lain" href="javascript:void(0);"><i class="fas fa-question-circle"></i></a>
	  							<?php endif ?><?php if ($sva->level==2): ?>
	  								Level 2 (Admin/Ketua Staff)<a data-toggle="tooltip" data-placement="right" title="Dapat Mengakses semua fitur staff dan dapat menghapus/membuat akun staff lain" href="javascript:void(0);"><i class="fas fa-question-circle"></i></a>
	  							<?php endif ?></h5></td>
	  						</tr>
	  					</table>
	  					<a onclick="pass()" href="javascript:void(0);">Ganti Password</a> | <a onclick="namaSaya()" href="javascript:void(0);">Ganti Nama</a>
	  				</div>
	  			</div>
	  		</div>
	  		<div class="row">
	  			<div id="oto">
	  				
	  			</div>
	  		</div>
	  	</div>
	  </div>
</div>
    </div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
      <div id="adminlist">
        
      </div>
    </div>
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
      <div id="addadmin">
        
      </div>
    </div>
  </div>
  </div>
</div>

	<div class="modal fade" id="passwordModal" role="dialog">
    <div class="modal-dialog">
	    <div class="modal-content">
		    <div class="modal-header">
		    	<h4 class="modal-title">Edit Password<span id="span"></span></h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
		    	<form id="passdo">

		        		<div class="form-group">
						Ganti Password
						<input class="form-control" type="password" id="pass" name="pass">
						<div id="eral" class="alert alert-danger" role="alert">
				  			<span id="erl"></span>
						</div>
						<div id="ersuk" class="alert alert-success" role="alert">
				  			<span id="ers"></span>
						</div>
						Konfirmasi Password
						<input class="form-control" type="password" id="pass1" name="pass1">
						<div id="erral" class="alert alert-danger" role="alert">
				  			<span id="err"></span>
						</div>
					</div>
				</form>
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div><button class="btn btn-outline-primary" onclick="simPass(<?php echo $sva->id_user ?>)">Simpan</button>&nbsp;<button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
		    </div>
		</div>
  	</div>
</div>


<div class="modal fade" id="namaModal" role="dialog">
    <div class="modal-dialog">
	    <div class="modal-content">
		    <div class="modal-header">
		    	<h4 class="modal-title">Edit Nama<span id="span"></span></h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
	        		<div class="form-group">
					Ganti Nama
					<input class="form-control" type="text" id="namaSaya" name="namaSaya">
					</div>
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div><button class="btn btn-outline-primary" onclick="simNama(<?php echo $sva->id_user ?>)">Simpan</button>&nbsp;<button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
		    </div>
		</div>
  	</div>
</div>






	<script type="text/javascript">
		$(function () {
  		$('[data-toggle="tooltip"]').tooltip()
		})
		$('#ersuk').hide();
		$('#eral').hide();
		$('#erral').hide();
		var blok = 1;
		$('#pass').keyup(function(event) {
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
		$('#pass1').keyup(function(event) {
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
		function pass(){
			$('#passwordModal').modal('show');

		}
		function namaSaya(){
			$('#namaModal').modal('show');

		}
		function nama(){
			$('#oto').load('<?php echo base_url('Custom/Knama') ?>');
		}
		function simPass(id){
			if (blok==0) {
				Swal.fire('Kesalahan', 'Password tidak sama atau tidak memenuhi syarat !!', 'error');
			}else{
				console.log('masuk');
				var id = $('#iduser').val();
				var pass = $('#pass').val();
				$.ajax({
					url: '<?php echo base_url('Custom/savePass') ?>',
					type: 'post',
					data: {pass: pass, id: id},
					error: function(){
						Swal.fire('Kesalahan', 'Terjadi kesalahan saat mencoba terhubung ke server !!', 'error');
					},
					success: function(){
						Swal.fire('Sukses', 'Password berhasil di ganti !!', 'success');	
						$('#passwordModal').modal('hide');
						$('.modal-backdrop').remove();
					}
				})
			}
		}

		function simNama(id){
				console.log('masuk');
				var pass = $('#namaSaya').val();
				$.ajax({
					url: '<?php echo base_url('Custom/saveNama') ?>',
					type: 'post',
					data: {pass: pass, id: id},
					error: function(){
						Swal.fire('Kesalahan', 'Terjadi kesalahan saat mencoba terhubung ke server !!', 'error');
					},
					success: function(){
						Swal.fire('Sukses', 'Nama berhasil di ganti !!', 'success');	
						$('#namaModal').modal('hide');
						$('.modal-backdrop').remove();
						location.reload();
					}
				})
		}

		function adminlist(){
			if ($('#leveluser').val()==1) {
				Swal.fire('Kesalahan Otoritas', 'Akun anda tidak memiliki otoritas untuk melihat daftar akun !!', 'error');
				activaTab('v-pills-home');
			}else{
				$('#adminlist').load('<?php echo base_url('Custom/adminlist') ?>');
			}
			
		}

		function addadmin(){
			if ($('#leveluser').val()==1) {
				Swal.fire('Kesalahan Otoritas', 'Akun anda tidak memiliki otoritas untuk menambah akun !!', 'error');
				$('#v-pills-home').tab('show');
				activaTab('v-pills-home');
			}else{
				$('#addadmin').load('<?php echo base_url('Custom/addadmin') ?>');
			}
		}

		function activaTab(tab){
	    $('.nav-tabs a[href="#' + tab + '"]').tab('show');
		};


		
	</script>