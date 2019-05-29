
<div class="jumbotron jj" style="border-radius: 0px;">
	<center>
		<h1 style="color: white">Template Warna</h1>
		<h2 style="color: white">Semua template warna yang telah</h2>
		<h2 style="color: white">disimpan admin</h2>
	</center>
</div>
<div class="container" style="background: white;padding-top: 30px;">
	<!-- <center><h2>Warna yang Tersimpan</h2></center> -->
	<center>
	<table>
		<tr>
			<th><h2>Warna yang Tersimpan&nbsp;</h2></th><th><button onclick="sw1();" class="btn btn-info"><i class="fas fa-plus"></i>Tambah</button></th>
		</tr>
	</table>
	</center>
	<div class="row" style="padding-left: 18px">
		<?php foreach ($warna as $key => $value): ?>
		<div class="col-2" style="height: 200px;margin: 15px 15px 15px 15px;border-style: solid;border-color: black;border-width: 1px;">
			<div class="row" style="height: 170px;background: <?php echo $value->warna_tema ?>">
				<a href="javascript:void(0);" onclick="delWarna('<?php echo $value->id_tema ?>','<?php echo $value->label ?>');"><i class="fas fa-times"></i></a>
				<div class="col-12">
					<center><h5 style="color: white">Kode : <?php echo $value->warna_tema ?></h5></center>
				</div>
			</div>
			<div class="row" style="height: 30px;">
				<div class="col-12">
					<center><h4><?php echo $value->label ?></h4></center>
				</div>
			</div>
		</div>
		<?php endforeach ?>
	</div>
</div>
<!-- <script type="text/javascript">
	function sw12(){
		Swal.fire({
  title: 'Tambah warna baru',
  html:
  	'<form method="post" class="form-user">'+
    '<input id="swal-input1" name="kode" class="swal2-input" placeholder="Kode Warna">' +
    '<input id="swal-input2" name="label" class="swal2-input" placeholder="Label Warna">'+
    '</form>',
  showCancelButton: true,
  confirmButtonText: 'Simpan',
  cancelButtonText: 'Batal',
  cancelButtonColor: 'red',
  showLoaderOnConfirm: true
}),then(function () {
	alert('w');
	var data = $('.form-user').serialize();
	$.ajax({
		type: 'POST',
		url: "<?php echo base_url('Custom/saveWarna') ?>",
		data : data
	})
})
}
</script> -->