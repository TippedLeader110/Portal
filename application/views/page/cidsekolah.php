<script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/ckeditor.js') ?>"></script>
<!-- <script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/CKFinder/ckfinder.js') ?>"></script> -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
<?php foreach ($sek as $key => $val): ?>
<?php endforeach ?>
	<div class="row">
		<div class="col-12">
			<div class="head">
				Dashboard Admin / Edit Tampilan Sekolah / Pengaturan Identitas Sekolah
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 20px;">
		<div class="col-3 ">
			<div class="container-fluid" > 
				<div class="row">
					<div class="cc">
						<div class="image" style="background-image: url('<?php echo base_url('source/gambar/logo/'); echo $logo;?>');width: 240px;">
						</div>
						<div class="overlay">
							<form id="logoWeb">
							<input hidden type="file" name="file" id="imgupload" style="display:none"/> 
						    <a href="javascript:void(0);" class="icon" title="User Profile" id="OpenImgUpload">
						  	  <i class="fas fa-upload"></i>
						  	  </form>
						    </a>
						</div>
					</div>
				</div>
			</div>
				<div class="row" style="margin-top: 270px;">
					<div class="col-12">
						<button onclick="lokkok()" class="btn btn-outline-primary">Ubah Info Lokasi dan Kontak</button>
					</div>
				</div>
		</div>
		
<div class="ccontainer">
		<div class="col-12">
			<!-- // <?php $this->load->view('nav/cidnav') ?> -->
			<hr>
			<table>
				<tr>
					<th colspan="3" align="left"><h2 id="seknama" style="font-weight: normal;"></h2></th><th><a onclick="nama();" href="javascript:void(0);"><i class="fas fa-edit"></a></th>
				</tr>
			</table>
				<hr>
			<table>
				<tr>
					<td class="tdp" id="tdd1"><a onclick="getVisi();" href="javascript:void(0);" class="nava">&nbsp;<h5 >Visi Sekolah</h5></a></td>
					<td class="tdp" id="tdd2"><a onclick="getMisi();" href="javascript:void(0);" class="nava">&nbsp;<h5 >Misi Sekolah</h5></a></td>
					<td class="tdp" id="tdd3"><a onclick="getSejarah();" href="javascript:void(0);" class="nava">&nbsp;<h5 >Sejarah Sekolah</h5></a></td>
				</tr>
			</table>
			<hr>
			

			<div id="sek">
				
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-xl">
	    <div class="modal-content">
		    <div class="modal-header">
		    	<h4 class="modal-title">Edit Data</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
		        <textarea id="sekid" name="sekid">
				</textarea>
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div><button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
		    </div>
		</div>
  	</div>
</div>


<div class="modal fade" id="logok" role="dialog">
    <div class="modal-dialog">
	    <div class="modal-content">
		    <div class="modal-header">
		    	<h4 class="modal-title">Edit Lokasi dan Kontak</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
		        <textarea id="logokganti" name="logokganti" style="height: 300px;">
				</textarea>
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div><button onclick="savelokasi()"  class="btn btn-primary" >Simpan</button>&nbsp;<button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
		    </div>
		</div>
  	</div>
</div>



<script type="text/javascript">
	 window.onload = function() {
		var editor = CKEDITOR.replace( 'sekid', {
		height:500, removePlugins : 'resize', filebrowserBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html'); ?>', filebrowserImageBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Images'); ?>', 
		filebrowserFileBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=File'); ?>', 
			filebrowserFlashBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Flash'); ?>', 
			filebrowserUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'); ?>', 
			filebrowserImageUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'); ?>', 
			filebrowserFlashUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'); ?>'
	});

		var editor = CKEDITOR.replace( 'logokganti', {
		height:500, removePlugins : 'resize', filebrowserBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html'); ?>', filebrowserImageBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Images'); ?>', 
		filebrowserFileBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=File'); ?>', 
			filebrowserFlashBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Flash'); ?>', 
			filebrowserUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'); ?>', 
			filebrowserImageUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'); ?>', 
			filebrowserFlashUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'); ?>'
		});
    };

    function lokkok(){
    	$('#logok').modal('show');

    	
    }

    function savelokasi(){
    	var a = CKEDITOR.instances.logokganti.getData();
    	console.log(a);
    	$.ajax({
    		url: '<?php echo base_url('Custom/savelokasi') ?>',
    		type: 'post',
    		data: {a: a},
    		error: function(){
    			Swal.fire('Kesalahan!!', 'Terjadi masalah saat mencoba terhubung ke server !!', 'error');
    		},
    		success: function(){
    			Swal.fire('Berhasil !!', 'Data berhasil disimpan !!', 'success');
    			CKEDITOR.instances.logokganti.setData(a);
    			$('#logok').modal('hide');
    			$('.modal-backdrop').remove();
    		}

    	})
    }

	$(document).ready(function(){
    // alert('yeah');
    // $('#myModal').modal('toggle');
    getSek();
    visi();
    // $("#sek").load('<?php echo base_url('Custom/ewarna')?>');
	});

	function modallol(ab){
		var htm;
		htm = "";
	}

	function al(){
		
	}

	function getSek(){
		var ab = 'visi';
		var html = '';
		$.ajax({
        	url: '<?php echo base_url('Custom/getSek') ?>',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
           		var nama = result[0].nama_sekolah;
           		CKEDITOR.instances.sekid.setData(visi);
           		visi = '<button class="tombol" style="background: #335C81;color: white" data-toggle="modal" data-target="#myModal" onclick="mod();">Edit Visi</button><br>' + visi;
           		var tombol = '<button type="button" onclick="SaveVisi();" class="btn btn-primary" data-dismiss="modal">Simpan</button>'
                $("#but").html(tombol);
                $("#seknama").html(nama);
                $("#sek").html(visi);
                $("#tdd1").toggleClass("acttd", true);
                $("#tdd2").toggleClass("acttd", false);
                $("#tdd3").toggleClass("acttd", false);
                
           }
        });
	}

	function getVisi(){
		var ab = 'visi';
		$.ajax({
        	url: '<?php echo base_url('Custom/getSek') ?>',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
           		CKEDITOR.instances.sekid.setData(visi);
           		$("#sek1").html(visi).hide().fadeIn('slow');
                visi = '<button class="tombol" style="background: #335C81;color: white" data-toggle="modal" data-target="#myModal" onclick="mod();">Edit Visi</button><br>' + visi;
                var tombol = '<button type="button" onclick="SaveVisi();" class="btn btn-primary" data-dismiss="modal">Simpan</button>'
                $("#sek").html(visi).hide().fadeIn('slow');
                $("#but").html(tombol).hide().fadeIn('slow');
                $("#tdd1").toggleClass("acttd", true);
                $("#tdd2").toggleClass("acttd", false);
                $("#tdd3").toggleClass("acttd", false);
           }
        });
	}

	function getMisi(){
		var ab = 'visi';
		var html = '';
		$.ajax({
        	url: '<?php echo base_url('Custom/getSek') ?>',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
           		CKEDITOR.instances.sekid.setData(misi);
           		misi = '<button class="tombol" style="background: #335C81;color: white" data-toggle="modal" data-target="#myModal" onclick="mod();">Edit Misi</button><br>' + misi;
                $("#sek").html(misi).hide().fadeIn('slow');
                var tombol = '<button type="button" onclick="SaveMisi();" class="btn btn-primary" data-dismiss="modal">Simpan</button>'
                $("#but").html(tombol).hide().fadeIn('slow');
                $("#tdd1").toggleClass("acttd", false);
                $("#tdd2").toggleClass("acttd", true);
                $("#tdd3").toggleClass("acttd", false);
           }
        });
	}

	function getSejarah(){
		var ab = 'visi';
		var html = '';
		$.ajax({
        	url: '<?php echo base_url('Custom/getSek') ?>',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
           		CKEDITOR.instances.sekid.setData(sejarah);
           		sejarah = '<button class="tombol" style="background: #335C81;color: white" data-toggle="modal" data-target="#myModal" onclick="mod();">Edit Sejarah</button><br>' + sejarah;
                $("#sek").html(sejarah).hide().fadeIn('slow');
                var tombol = '<button type="button" onclick="SaveSejarah();" class="btn btn-primary" data-dismiss="modal">Simpan</button>'
                $("#but").html(tombol).hide().fadeIn('slow');
                $("#tdd1").toggleClass("acttd", false);
                $("#tdd2").toggleClass("acttd", false);
                $("#tdd3").toggleClass("acttd", true);
           }
        });
	}
	function mod(){

	}

	function SaveVisi(){
		var a = CKEDITOR.instances.sekid.getData();
		$.ajax({
			url: '<?php echo base_url('Custom/upVisi') ?>',
			type: "post",
			data: {data: a},
			error: function(){
				Swal.fire('Kesalahan !', 'Sesuatu tidak beres !!!', 'error');
			},
			success: function(){
				getVisi();
				Swal.fire('Sukses', 'Visi Terpebaharui', 'success');	
			}
		})
	}

	function SaveSejarah(){
		var a = CKEDITOR.instances.sekid.getData();
		$.ajax({
			url: '<?php echo base_url('Custom/upSejarah') ?>',
			type: "post",
			data: {data: a},
			error: function(){
				Swal.fire('Kesalahan !', 'Sesuatu tidak beres !!!', 'error');
			},
			success: function(){
				getSejarah();
				Swal.fire('Sukses', 'Sejarah Terpebaharui', 'success');	
			}
		})
	}

	function SaveMisi(){
		var a = CKEDITOR.instances.sekid.getData();
		$.ajax({
			url: '<?php echo base_url('Custom/upMisi') ?>',
			type: "post",
			data: {data: a},
			error: function(){
				Swal.fire('Kesalahan !', 'Sesuatu tidak beres !!!', 'error');
			},
			success: function(){
				getMisi();
				Swal.fire('Sukses', 'Misi Terpebaharui', 'success');	
			}
		})
	}

	// function SaveMisi(){
	// 	var a = CKEDITOR.instances.sekid.getData();
	// 	$.ajax({
	// 		url: '<?php echo base_url('Custom/upNama') ?>',
	// 		type: "post",
	// 		data: {data: a},
	// 		error: function(){
	// 			Swal.fire('Kesalahan !', 'Sesuatu tidak beres !!!', 'error');
	// 		},
	// 		success: function(){
	// 			getMisi();
	// 			Swal.fire('Sukses', 'Nama Sekolah Terpebaharui', 'success');	
	// 		}
	// 	})
	// }

	$('#OpenImgUpload').click(function(){ $('#imgupload').trigger('click'); });

	$('#imgupload').change(function(event) {
		$("#logoWeb").submit();
	});

	$("#logoWeb").submit(function(event) {
		event.preventDefault();
		$.ajax({
			url: '<?php echo base_url('Custom/upLogo') ?>',
			type: 'post',
			processData:false,
            contentType:false,
			data: new FormData(this),
			error: function(){
				Swal.fire('Kesalahan !', 'Terjadi Kesalahan saat mencoba terhubung ke server','error');
			},
			success: function(){
				location.reload();
			}
		})
	});
</script>

