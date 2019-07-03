<!-- <center>Double Klik nama untuk info lebih lanjut</center> -->
<div class="table-responsive">
	<table class="table table-striped">
	<tr>
		<th>Nomor Pendaftaran</th><th>Nama</th><th>Tanggal Lahir</th><th>Sekolah Asal</th>
	</tr>
	<?php foreach ($siswa as $key => $vguruv): ?>
		<tr id="<?php echo $vguruv->nis ?>">
			<td><?php echo $vguruv->nis ?></td>
			<td><?php echo $vguruv->nama_siswa ?></td>
			<td><?php echo $vguruv->tgl_lahir ?></td>
			<td><?php echo $vguruv->sekolah_asal ?></td>
		</tr>
	<?php endforeach ?>
</table>
</div>

<script type="text/javascript">
	$('tr').dblclick(function(){
  		var id = $(this).attr('id');
  		$("#modalpage").load('<?php echo base_url('Artikel/modalpage2/') ?>' + id);
  		$("#ali").modal('show');
	})
</script>