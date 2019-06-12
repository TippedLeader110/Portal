  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Data Web Sekolah / Kelolah Halaman / Postingan
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 30px">
		<div class="col-12">
			<h2>Kelolah Artikel Sekolah</h2>
			<hr>
				<button class="btn btn-primary" onclick="create();"><div style="color: white">Buat Artikel</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;
							<button onclick="show();" class="btn btn-info"><div style="color: white">Semua Artikel</div><span><h2><i class="fas fa-table" style="color: white"></i></h2></span></button>&nbsp;
				<button class="btn btn-primary" onclick="create();"><div style="color: white">Artikel Saya</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;								 	
							<button class="btn btn-primary" onclick="kate();"><div style="color: white">Kategori</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;	
		</div>
	</div>
	<div class="row" style="margin-top: 30px;">
		<div class="col-12" id="page">
		
		</div>
	</div>
<script type="text/javascript">
	function create(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postCreate') ?>').hide().fadeIn('slow');
	}
	function show(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postShow') ?>').hide().fadeIn('slow');
	}
	function kate(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/postKate') ?>').hide().fadeIn('slow');
	}

	function Kdel(ab) {
    Swal.fire({
    	title: 'Hapus Kategori',
    	text: 'Apakah anda ingin menghapus kategori ini?',
    	type: "question",
		showCancelButton: true,
		confirmButtonText: 'Ya, Hapus',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
  		// alert(ab + " " + aa);
		$.ajax({
        	url: '<?php echo base_url('Custom/delKate') ?>',
            type: 'POST',
            data: {id: ab,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Kategori berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                kate();
           }
        });
  	}
  	else{
		Swal.fire('Galat !!','Kategori tidak jadi dihapus !!', "error");
	}
	})
}
	function tamK() {
    Swal.fire({
    	title: 'Tambah Kategori',
		html:
		  	'<form method="post" class="form-user">'+
		    '<input id="s1" name="kode" class="swal2-input" placeholder="Nama Kategori">' +
		    '</form>',
		showCancelButton: true,
		confirmButtonText: 'Tambah',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
  		var data = $('.form-user').serialize();
  		var ab = $('#s2').val();
  		var aa = $('#s1').val();
  		// alert(ab + " " + aa);
		$.ajax({
        	url: '<?php echo base_url('Custom/kateTambah') ?>',
            type: 'POST',
            data: {kode: aa},
            error: function() {
           		Swal.fire('Galat !!','Koneksi ke server gagal !!', "error");
           		alert(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Nama Kategori berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
				kate();
           }
        });
  	}
	else{
		Swal.fire('Galat !!','Nama Kategori tidak disimpan !!', "error");
	}
	})
}

</script>