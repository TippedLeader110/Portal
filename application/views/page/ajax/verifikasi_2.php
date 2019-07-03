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
				<tr>
					<td><a onclick="infolb(<?php echo $sisval->nis ?>)" href="javascript:void(0);">Info Lebih Lanjut</a></td>
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
		<button type="submit"  id="cekcek" class="btn btn-outline-primary">Terima Pendaftaran</button>&nbsp;|&nbsp;
		<button class="btn btn-danger" onclick="tolak(<?php echo $sisval->nis ?>)">Tolak Pendaftaran</button>
		</div>
	</form>
	</div>
</div>
<div class="modal fade" id="infoB" role="dialog">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Informasi Detail Siswa/i<span id="nismodal"></span></h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div id="modal-body">
              
            </div>
        </div>
        <div class="modal-footer">
            <div id="but"></div><button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        </div>
    </div>
    </div>
    </div>

<script type="text/javascript">
	$('#cekcek').hide();

	function tolak(id){
		$.ajax({
			url: '<?php echo base_url('Custom/sisTolak/') ?>',
			type: 'POST',
			data: {nis: id},
			error: function(){
				Swal.fire('Kesalahan !!', 'Terjadi kesalahan saat mencoba terhubung ke server !!', 'error');
			},
			success: function(){
				Swal.fire('Berhasil !!', 'Siswa berhasil di tolak !!', 'success');
				$('#show').hide();		
			}
		})

		
	}

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
       			Swal.fire('Kesalahan !!', 'File Tidak didukung jpg/png !!', 'error');
       		},
       		success: function(data){
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
	function infolb(nis){
          $('#modal-body').load('<?php echo base_url('Custom/siswaBEDIT/') ?>' + nis);
          $('#infoB').modal('show');
        }
</script>