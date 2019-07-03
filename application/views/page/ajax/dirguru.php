<center>Double Klik nama untuk info lebih lanjut</center>
<div class="table-responsive">
	<table class="table table-striped">
	<tr>
		<th>NIP</th><th>Nama</th><th>Jabatan</th><th>Mata Pelajaran</th>
	</tr>
	<?php foreach ($guru as $key => $vguruv): ?>
		<tr id="<?php echo $vguruv->nip ?>">
			<td><?php echo $vguruv->nip ?></td>
			<td><?php echo $vguruv->nama_guru ?></td>
			<td><?php echo $vguruv->jabatan ?></td>
			<td><?php echo $vguruv->mapel ?></td>
		</tr>
	<?php endforeach ?>
</table>
</div>

<script type="text/javascript">
	$('tr').dblclick(function(){
  		var id = $(this).attr('id');
  		$("#modalpage").load('<?php echo base_url('Artikel/modalpage/') ?>' + id);
  		$("#ali").modal('show');
	})
</script>