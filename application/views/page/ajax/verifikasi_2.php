<?php foreach ($set as $key => $setval): ?>
<?php endforeach ?>
<?php foreach ($siswa as $key => $sisval): ?>
<?php endforeach ?>

<div class="row">
	<div class="col-12">
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
				<input type="text" class="form-control nilai" name="<?php echo $pelval->id_mujian ?>">
				
			</div>
		</div>
	<?php endforeach ?>
</div>	
<div class="row">
	<div class="col-5">
		<div class="form-group">
		<form id="formdoit">
			Upload Berkas
			<input type="text" id="nis" hidden name="nis" value="<?php echo $sisval->nis ?>">
		<input type="file" name="file">
		<button type="submit"  class="btn btn-outline-primary">Verifikasi</button>
		</div>
	</form>
	</div>
</div>

<script type="text/javascript">
	$('#formdoit').submit(function(e){
		e.preventDefault(); 
		alert('do');
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
				// $('#pengaturan').empty();
		  //       $('#show').hide();
       		}
       	});
	})
</script>