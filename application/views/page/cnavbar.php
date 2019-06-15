  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Edit Tampilan Sekolah / Pengaturan Posisi Navbar
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 20px;">
		<div class="col-6" style="">
			<div class="container menupage"  style="height: 600px;">
			<center><h2>Pengaturan Posisi & Struktur Navbar</h2></center>
			<hr>
			<table><tr>
				<td style="padding-top: 1px;"><button onclick="tam();" class="btn btn-success"><div style="color: white">Tambah</div><span><h2><i class="fas fa-plus" style="color: white"></i></h2></span></button>&nbsp;</td>
				<td><button class="btn btn-primary" onclick="sub();"><div style="color: white">Simpan</div><span><h2><i class="far fa-save"></i></h2></span></button>&nbsp;</td>	
				<td style="padding-top: 1px;"><button onclick="pop();" class="btn btn-info"><div style="color: white">Bantuan</div><span><h2><i class="fas fa-question" style="color: white"></i></h2></span></button>&nbsp;</td>
				</tr></table>
				<div id="navfirst" class="container-fluid" style="background: #335C81;height: 65px;padding-top: 10px;">
					<div class="floatlist" id="navlist">
					<?php foreach ($navbar as $key => $v): ?>
						<li <?php if ($v->tipe=='drop'): ?>
							style="background: #706E70"
						<?php endif ?> id="<?php echo $v->id_item ?>" ondblclick="getDrop('<?php echo $v->id_item ?>');" id="list"><?php echo $v->label; ?><a onclick="del(<?php echo $v->id_item ?>);" href="javascript:void(0);"><i class="fas fa-times"></i></a></li>
					<?php endforeach ?>
					</div>
				</div>
				<div style="background: #B2BFD0;height: 270px;">
					<center><h1 style="color: white;padding-top: 20px;">Content</h1></center>
				</div>
				</div>
		</div>
		<div class="col-6">
			<div class="container menupage" style="height: 600px;">
				<center><h2>Menu Edit Navigasi Bar</h2></center>
				<hr>
				<select id="select" class="custom-select">
							<!--  SELECT HERE  -->
					</select>
				<hr>
				<div class="row">
				<div class="col-12">
					<div class="container menupage" style="background: #6A88A3;border-radius: 0px;">
					<center><h4 style="color: white">Identitas Navigasi Bar&nbsp;<a onclick="Swal.fire('Tips', 'Pilih salah satu navigasi bar untuk menampilkan menu', 'info');" href="javascript:void(0);"><i class="fas fa-question-circle" style="color: white"></i></a></h4></center>
					</div>
					
					<div id="navedit" style="margin-top: 20px;">
							
					</div>
				</div>
				
				</div>
			</div>
					
				</div>
	</div>
	<div class="row" style="margin-top: 20px">
		<div class="col-12" >
			
		</div>
	</div>
	<div class="row" style="margin-top: 20px;" id="edit">
		
	</div>
	<div class="row"><div class="col-12"><hr></div></div>

	<script type="text/javascript">
	$(document).ready(function(){
	});
	
	$('#droplist').sortable({
		axis : "y",
		update: function(event, ui) {
            var iddrop = $('#droplist').sortable("toArray");
            console.log("idDROP");
            console.log(iddrop);
        }
	});
	$('#navlist').sortable({
		update: function(event, ui) {
            var beforeidsInOrder = $('#navlist').sortable("toArray");
            console.log(beforeidsInOrder);
        }

	});
	var beforeidsInOrder = $('#navlist').sortable("toArray");
	var a = JSON.stringify(beforeidsInOrder);
	console.log(beforeidsInOrder);
	dude();
	editn();

	function sub(){
		var idsInOrder = $('#navlist').sortable("toArray");
		var b = JSON.stringify(idsInOrder);
		console.log(idsInOrder);
		dude();
		$.ajax({
			url: '<?php echo base_url('Custom/upNav') ?>',
			type: "post",
			data: {a: a, b: b},
			error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           	// $('#drop').html('Dropdown navbar ke :  ' + data);
			dude();
			Swal.fire({
                 	title: 'Sukses',
                 	text: 'Posisi berhasil diatur !!',
                 	type: "success",
                 	timer: 3000
                 });
           }
		})
	}
	function del(aa) {
    Swal.fire({
    	title: 'Hapus Navbar',
    	text: 'Apakah anda ingin menghapus navbar ini?',
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
        	url: '<?php echo base_url('Custom/delNav') ?>',
            type: 'POST',
            data: {id: aa},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Navbar berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                dude();
           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Navbar tidak jadi dihapus !!', "error");
	}
	})
}

	function tam(){
		$.ajax({
			url: '<?php echo base_url('Custom/addNav') ?>',
			type: "post",
			error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           	// $('#drop').html('Dropdown navbar ke :  ' + data);
			dude();
			Swal.fire({
                 	title: 'Sukses',
                 	text: 'Navbar berhasil ditambah !!',
                 	type: "success",
                 	timer: 3000
                 });
           }
		})
	}

	function dude(){
		// $("#navfirst").load("<?php echo base_url('Custom/enavbarfirst') ?>");
		$.ajax({
        	url: '<?php echo base_url('Custom/enavbarfirst') ?>',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           		$('#navlist').empty();
           		$('#navlist').append(data);
           		editn();
           		var beforeidsInOrder = $('#navlist').sortable("toArray");
           		console.log(beforeidsInOrder);
           		
           }
        });
	}

	function getDrop(ab){
		alert(ab);
		$('#hasil').empty();
		// $('#hasil').load('<?php echo base_url('Custom/enavbar/') ?>' + ab);
	
		$.ajax({
        	url: '<?php echo base_url('Custom/enavbar') ?>',
            type: 'POST',
            data: {ab: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           		// $('#droplist').append(data);
           		$('#droplist').html(data);
           		$('#drop').html('Dropdown navbar ke :  ' + ab)
           		// $("#myList").append("<li>" + v + "</li>");
           }
        });
	}

	function pop(){
		Swal.mixin({
  		input: false,
  		confirmButtonText: 'Next &rarr;',
  		showCancelButton: true,
  		progressSteps: ['A', 'B']
		}).queue([
  		{
    		title: 'Tips 1 (Posisi Navbar)',
    		imageUrl: '<?php echo base_url("source/img/tutor1.gif") ?>',
  			imageWidth: 400,
  			imageHeight: 200,
  			imageAlt: 'Tutorial',
    		text: 'Anda dapat menggeser urutan navbar dengan mouse lalu menyimpannya !!'
  		},
  		{
  			title: 'Tips 2 (Nav item dan dropdown)',
    		imageUrl: '<?php echo base_url("source/img/urut.png") ?>',
  			imageWidth: 400,
  			imageHeight: 200,
  			imageAlt: 'Tutorial',
    		text: 'Yang memiliki warna abu abu adalah drop down !!'
  		}
		])
	}

	function editn(){
		$.ajax({
        	url: '<?php echo base_url('Custom/navEdit') ?>',
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           		// $('#droplist').append(data);
           		$('#select').empty();
           		$('#select').append(data);
           		// $("#myList").append("<li>" + v + "</li>");
           }
        });
	}	


	$('#select').change(function(){
	    console.log($(this).val());
	    var ab = $(this).val();
	    if (ab!="null") {
		$.ajax({
			url: '<?php echo base_url('Custom/navId') ?>',
			type: 'post',
			data: {ab: ab},
			error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           		// $('#navedit').empty();
           		$('#navedit').html(data);
           		// $("#myList").append("<li>" + v + "</li>");
           }

		})

		$.ajax({
        	url: '<?php echo base_url('Custom/enavbar') ?>',
            type: 'POST',
            data: {ab: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function(data) {	
           		// $('#droplist').append(data);
           		$('#droplist').html(data);
           		// $('#drop').html('Dropdown navbar ke :  ' + ab)
           		// $("#myList").append("<li>" + v + "</li>");
           }
        })
	    }
		else{
			$('#navedit').empty();
		}


	})
	function upidNav(){
		// alert($('#label').val());
		var ab = $('#label').val();
		var aa = $('#id_t').val()
		$.ajax({
			url: '<?php echo base_url('Custom/upidNav') ?>',
			type: 'POST',
            data: {kode: aa, label: ab},
            error: function() {
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           		alert(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Navigasi bar berhasil diperbaharui !!',
                 	type: "success",
                 	timer: 3000
                 });
			    if (aa!="null") {
				$.ajax({
					url: '<?php echo base_url('Custom/navId') ?>',
					type: 'post',
					data: {ab: aa},
					error: function() {
		           		// alert('Something is wrong');
		           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
		           	},
		           	success: function(data) {	
		           		// $('#navedit').empty();
		           		$('#navedit').html(data).hide().fadeIn('slow');
		           		// $("#myList").append("<li>" + v + "</li>");
		           }

				})
			}
				
           }
        });

		}

	</script>
