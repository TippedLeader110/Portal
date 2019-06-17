  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Data Web Sekolah / Kelolah Halaman / Data Guru
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 30px">
		<div class="col-12">
			<h2>Kelolah Data Guru</h2>
			<hr>
				<button class="btn btn-primary" onclick="guru();"><div style="color: white">Data Guru</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;
							<button class="btn btn-primary" onclick="jabat();"><div style="color: white">Jabatan</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;	
							<button class="btn btn-primary" onclick="mapel();"><div style="color: white">Mata Pelajaran</div><span><h2><i class="fas fa-pen"></i></h2></span></button>&nbsp;
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
	function mapel(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/smapel') ?>').hide().fadeIn('slow');
	}
	function jabat(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/sJabatan') ?>').hide().fadeIn('slow');
	}
	function guru(){
		// alert('go');
		$("#page").load('<?php echo base_url('Custom/guruShow') ?>').hide().fadeIn('slow');
	}
	
	function gurudel(ab) {
    Swal.fire({
    	title: 'Hapus Guru',
    	text: 'Apakah anda ingin menghapus Guru ini?',
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
        	url: '<?php echo base_url('Custom/delGuru') ?>',
            type: 'POST',
            data: {id: ab,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Guru berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                guru();

           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Jabatan tidak jadi dihapus !!', "error");
	}
	})
}

	function tambahguru() {
    var n = $('#title').val();
    var jabatan = $('#select').val();
    var alamat = $('#title2').val();
    var mapel = $('#select2').val();
    console.log(n);
    console.log(jabatan);
    console.log(alamat);
    console.log(mapel);
    $.ajax({
      url : '<?php echo base_url('Custom/saveGuru') ?>',
      type: 'post',
      data: {n:n, jabatan:jabatan, alamat:alamat, mapel:mapel},
      error: function(data){
        Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
              console.log(data);
      },
      success: function(data){
        Swal.fire('Sukses', 'Artikel berhasi disimpan !!!', 'success'),
        console.log(data);
      }
    })
  }
	function Jdel(ab) {
    Swal.fire({
    	title: 'Hapus Jabatan',
    	text: 'Apakah anda ingin menghapus Jabatan ini?',
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
        	url: '<?php echo base_url('Custom/delJabat') ?>',
            type: 'POST',
            data: {id: ab,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Jabatan berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                jabat();

           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Jabatan tidak jadi dihapus !!', "error");
	}
	})
}

function delmapel(bc) {
    Swal.fire({
    	title: 'Hapus Mata Pelajaran',
    	text: 'Apakah anda ingin menghapus Mata Pelajaran ini?',
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
        	url: '<?php echo base_url('Custom/delmapel') ?>',
            type: 'POST',
            data: {id: bc,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Mata Pelajaran berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                mapel();

           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Mata Pelajaran tidak jadi dihapus !!', "error");
	}
	})
}

	function tambahmapel(aa) {
    Swal.fire({
    	title: 'Tambah Mata Pelajaran',
		html:
		  	'<form method="post" class="form-user">'+
		    '<input id="s1" name="kode" class="swal2-input" placeholder="Nama Mata Pelajaran">' +
		    '</form>',
		showCancelButton: true,
		confirmButtonText: 'Tambah',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
  		var data = $('.form-user').serialize();
  		var bc = $('#s2').val();
  		var aa = $('#s1').val();
  		// alert(ab + " " + aa);
		$.ajax({
        	url: '<?php echo base_url('Custom/mapelTambah') ?>',
            type: 'POST',
            data: {kode: aa},
            error: function() {
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           		alert(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Nama Mata Pelajaran berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
                mapel();
           }
        });
  	}
	else{
		Swal.fire('Kesalahan !!','Nama Mata Pelajaran tidak disimpan !!', "error");
	}
	})
}
	function tambah(aa) {
    Swal.fire({
    	title: 'Tambah Jabatan',
		html:
		  	'<form method="post" class="form-user">'+
		    '<input id="s1" name="kode" class="swal2-input" placeholder="Nama Jabatan">' +
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
        	url: '<?php echo base_url('Custom/JabatTambah') ?>',
            type: 'POST',
            data: {kode: aa},
            error: function() {
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           		alert(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Nama Jabatan berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
                jabat();
           }
        });
  	}
	else{
		Swal.fire('Kesalahan !!','Nama Jabatan tidak disimpan !!', "error");
	}
	})
}

</script>