<div class="container menupage" style="margin-top: 50px;">
	<div class="row">
		<div class="col-12">
			<center><h3>Verifikasi Berkas Siswa/Siswi Baru</h3></center>
			<hr>
		</div>
	</div>
	<div class="row">
		<div class="col-4">
			<div class="form-group">
				<table class="table table-borderless">
					<tr>
						<td><input placeholder="Nomor Verifikasi" type="number" name="nomor" id="nomor" class="form-control"></td>
						<td><button onclick="cari();" class="btn btn-outline-warning">Cari</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div id="show" class="row">
		<div class="col-12">
			<div id="pengaturan">
				
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$('#show').hide();
	function cari(){
		var no = $('#nomor').val();
		$('#pengaturan').load('<?php echo base_url('Custom/sisCari/') ?>'  + no);
		$('#show').show('slow');
	}
</script>