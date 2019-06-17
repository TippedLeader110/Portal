<div class="row" style="padding-left: 18px">
	<?php if (!empty($galery)): ?>
		<?php foreach ($galery as $key => $value): ?>
		<div class="col-2" style="height: 200px;margin: 15px 15px 15px 15px;border-style: solid;border-color: black;border-width: 1px;">
			<div class="row" style="height: 170px;background-image: url(<?php echo base_url('source/gambar/galery/'); echo $value->link; ?>);" >
				<a href="javascript:void(0);" onclick="delImg('<?php echo $value->id_img ?>');"><i class="fas fa-times"></i></a>
				<div class="col-12">
					
				</div>
			</div>
			<div class="row" style="height: 30px;">
				<div class="col-12">
					<center><h4><?php echo $value->deskripsi ?></h4></center>
				</div>
			</div>
		</div>
		<?php endforeach ?>
	<?php endif ?>
	</div>

	<script type="text/javascript">
		function delImg(a){
			Swal.fire({
    	title: 'Hapus Warna',
    	text: 'Apakah anda ingin menghapus Gambar ini ?',
    	type: "question",
		showCancelButton: true,
		confirmButtonText: 'Ya, Hapus',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
			$.ajax({
				url: '<?php echo base_url('Custom/delImg') ?>',
				type: 'post',
				data: {a: a},
			error: function(){
				Swal.fire({
                 	title: 'Kesalahan !!',
                 	text: 'Koneksi ke gagal !!',
                 	type: "error",
                 	timer: 3000
                 });
			},
			success: function(){
				Swal.fire({
                 	title: 'Sukses',
                 	text: 'Gambar  berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
				$("#warna").load('<?php echo base_url('Custom/egalery')?>');
			}
			});
		}
		else{
		Swal.fire('Kesalahan !!','Gambar tidak jadi dihapus !!', "error");
	}
	})
}
	</script>