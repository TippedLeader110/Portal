<?php $no = $this->uri->segment('3')    ?>
<input type="number" hidden id="no" name="no">

<div class="row" style="padding-left: 18px">
	<?php if (!empty($galery)): ?>
		<?php foreach ($galery as $key => $value): ?>
			<div class="col-4">
				<div class="col-12" style="height: 200px;">
				<div class="img-wrapper">
		        <div class="img-overlay"></div>
		        <a data-fancybox="gallery" href="<?php echo base_url('Source/gambar/galery/'); echo $value->link ?>"><img style="width: 100%;height: 200px;object-position: center;object-fit: cover;" src="<?php echo base_url('Source/gambar/galery/'); echo $value->link ?>"></a>
		        <div style="position: absolute;top: 0px;left: 16px;"><h4 style="color: white"><a href="javascript:void(0);" onclick="delImg('<?php echo $value->id_img ?>');"><i style="color: red" class="fas fa-times"></i></a></h4></div>
		        <div style="position: absolute;  top: 50%;  left: 50%;  transform: translate(-50%, -50%);"><h4 style="color: white"><?php echo $value->deskripsi ?></h4></div>
		      </div>
				</div>
				<div class="col-12" style="">
					<center><div style="max-height: 30px;max-width: 400px;overflow: hidden;"><h4></h4></div></center>
				</div>
			</div>
		<?php endforeach ?>
	<?php endif ?>
	<?php 
	
	?>
</div>
	</div>
	<div class="row" style="padding-left: 18px">
		<div class="col-12">
			<?php echo $this->pagination->create_links(); ?>
		</div>
	</div>
	<script type="text/javascript">

	numberdude = '<?php echo $no ?>';
	console.log(numberdude);
	$("span.page-link a").click(function(e) {
    	e.preventDefault();
		var href = $(this).attr("href");
		// numberdude = href;
		// console.log(href);
		$("#warna").load('<?php echo base_url('Custom/egalery/')?>' + href);

	});
	

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
				$("#warna").load('<?php echo base_url('Custom/egalery/')?>' +numberdude);
			}
			});
		}
		else{
		Swal.fire('Kesalahan !!','Gambar tidak jadi dihapus !!', "error");
	}
	})
}



	
	</script>