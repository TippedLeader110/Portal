<form id="formdoit">
<?php foreach ($siswa as $key => $sisval): ?>
<?php endforeach ?>

<div class="row">
	<div class="col-6">
		<div class="form-group">
			<hr>
			<h5>Info Data Singkat</h5>
			<table>
				<tr>
					<td>Nama</td><td>: <?php echo $sisval->nama_siswa; ?></td>
				</tr>
				<tr>
					<td>NIS</td><td>: <?php echo $sisval->nis; ?></td>
				</tr>
				<tr>
					<td>Status</td><td>: <?php echo $sisval->status; ?></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="col-4">
		<hr>
		<h5>Input Jurusan yang dituju</h5>
		<div class="form-group">
			Jurusan
			<select name="jurusan" class="form-control">
				<option value="IPA">IPA</option>
				<option value="IPS">IPS</option>
			</select>
		</div>	
	</div>
</div>
<div class="row">
	<div class="col-12">
		<hr>
		<h5>Input Nilai</h5>
	</div>
</div>
<div class="row">
	<?php foreach ($pel as $key => $pelval): ?>
		<div class="col-3">
			<div class="form-group">
				<?php echo $pelval->nama_mujian ?>
				<input type="text" class="required form-control nilai" name="<?php echo $pelval->id_mujian ?>">
				
			</div>
		</div>
	<?php endforeach ?>
</div>	
<div class="row">
	<div class="col-12">
		<div class="form-group">
		
			Upload Berkas <br>
			<input type="text" id="nis" hidden name="nis" value="<?php echo $sisval->nis ?>">
		<input class="required" type="file" name="file">
		Saya yakin sudah benar !!
		<input type="checkbox" name="cek" onclick="EnableSubmit(this)">
		<button type="submit"  id="cekcek" class="btn btn-outline-primary">Verifikasi</button>
		</div>
	</form>
	</div>
</div>

<script type="text/javascript">
	$('#cekcek').hide();

	EnableSubmit = function(val)
	{
	    if (val.checked == true)
	    {
	        $('#cekcek').show('slow');
	    }
	    else
	    {
	        $('#cekcek').hide('slow');
	    }	
	}
	var req = true;
	function check() {
    $('.required').each(function(){
        if( $(this).val() == "" ){
          // alert('Please fill all the fields');

          req = false;
        }
    });
	};

	$('#formdoit').submit(function(e){
		e.preventDefault(); 
		check();
		// alert('do');
		
		if (req===true) {
			var form = new FormData(this);
		$('.nilai').each(function(){
        	var nilai = $(this).val();
        	var nis = $('#nis').val();
        	var id = $(this).attr('name');
        	$.ajax({
        		url: '<?php echo base_url('Custom/sisVerdo') ?>',
        		type: 'POST',
        		data: {nilai: nilai, id: id, nis: nis},
        		error: function(){
        			Swal.fire('Kesalahan !!', 'Terjadi kesalahan saat mencoba terhubung ke server !!', 'error');
        		},
        		success: function(data){
        				console.log(data);
        		}
        	});
        	
    });
	
		// alert('dot');
		console.log('dot');

       	$.ajax({
       		url: '<?php echo base_url('Custom/sisVerdofile') ?>',
       		type: 'POST',
       		data: new FormData(this),
       		processData: false,
			contentType: false,
       		error: function(){
       			console.log('gagal');
       			Swal.fire('Kesalahan !!', 'Terjadi kesalahan saat mencoba terhubung ke server !!', 'error');
       		},
       		success: function(data){
       			console.log(data);
				Swal.fire('Berhasil !!', 'Verifikasi berhasil !!', 'success');
				// $('#pengaturan').load();
		        $('#show').hide();
       		}
       	});
		}
		else if (req===false) {
			Swal.fire('Kesalahan', 'Tolong isi semua form !!', 'error');
			req = true;
		}
	})
</script>