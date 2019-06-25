

  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Data Web Sekolah / Kelolah Halaman / Postingan
			</div>
		</div>
	</div>
	
<div class="jumbotron jj" style="border-radius: 0px;margin-top: 20px;">
	<center>
		<h1 style="color: white">Galeri Sekolah</h1>
		<h2 style="color: white">Semua gambar yang telah</h2>
		<h2 style="color: white">disimpan admin </h2>
	</center>
</div>
<div class="container ctext menuborder" style="border-radius: 0px;">
	<!-- <center><h2>Warna yang Tersimpan</h2></center> -->
	<center>
	<table>
		<tr>
			<th><h2>Gambar yang Tersimpan&nbsp;</h2></th><th><button onclick="$('#modal').modal('show');" class="btn btn-info"><i class="fas fa-plus"></i>Tambah</button></th>
		</tr>
	</table>
	</center>
	<div id="warna">
	</div>

</div>

<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Upload Gambar ke Galeri</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <form class="form-horizontal" id="submit">
                <div class="form-group">
                    <input type="text" name="deskripsi" class="form-control" placeholder="Deskripsi Gambar">
                </div>
                <div class="form-group">
                    <input type="file" name="file">
                </div>
 			
                <div class="form-group">
            		<select id="tipe" name="tipe" class="form-control"><option value="public">Public</option><option value="private">Private</option></select>

                </div>
                <div class="form-group">
                	<button type="submit" class="btn btn-primary">Upload</button>
                </div>
            </form>   
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
        
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
    // alert('yeah');
    $("#warna").load('<?php echo base_url('Custom/egalery')?>');
       
    
	});	
	$('#submit').submit(function(e){
            e.preventDefault(); 
                 $.ajax({
                     url:'<?php echo base_url('Custom/do_upload');?>',
                     type:"post",
                     data:new FormData(this),
                     processData:false,
                     contentType:false,
                     cache:false,
                     async:false,
                      success: function(data){
                           	if (data==1) {
                           		Swal.fire({
			                 	title: 'Sukses',
			                 	text: 'Gambar berhasil disimpan !!',
			                 	type: "success",
			                 	timer: 3000
			                 });
                              if (numberdude=='undefined') {
                              $("#warna").load('<?php echo base_url('Custom/egalery')?>'+numberdude);
                              }
                              else{
                               $("#warna").load('<?php echo base_url('Custom/egalery')?>'); 
                              }
                            $('#modal').modal('hide');
                           	}
                           	else{
                           		Swal.fire({
			                 	title: 'Gagal',
			                 	text: 'Tidak ada gambar yg di pilih !!',
			                 	type: "error",
			                 	timer: 3000
			                 });
                           		$('#modal').modal('hide');
                           	}
                   },
                   error: function(data){
                   	console.log(data);
                   }
                 });
            });
// 	function swimg() {
//     Swal.fire({
//     	title: 'Upload Gambar',
// 		html:
// 		  	'<form class="" id="submit">'+
// 		    '<input type="file" id="file" name="file" class="" placeholder="">'+
// 		    '<input id="desk" name="deskripsi" class="swal2-input" placeholder="Deskripsi Gambar">'+
// 		    '<select id="tipe" name="tipe" class="form-control"><option value="public">Public</option><option value="private">Private</option></select>'+
// 		    '</form>',
// 		showCancelButton: true,
// 		confirmButtonText: 'Simpan',
// 		cancelButtonText: 'Batal',
// 		cancelButtonColor: 'red',
// 		showLoaderOnConfirm: true
//     }).then(result => {
//   	if (result.value) {
//   		// var data = $('#submit').serialize();
//   		// console.log(data);
//   		// var sib = $('#submit')
//   		// console.log($('#sib'));
//   		// var formData = new FormData();
//   		// formData.append('file', $('input[type=file]')[0].files[0]);
//   		// console.log(formData);
//   		var file = $('#file').val();
//   		var desk = $('#desk').val();
//   		var tipe = $('#tipe').val();
//   		console.log(file);
//   		console.log(desk);
//   		console.log(tipe);
//   		// alert(ab + " " + aa);
// 		$.ajax({
//         	url: 'http://localhost/Portal/Custom/do_upload',
//             type: 'POST',
//             // data: {file: aa, desk: ab, tipe:ac},
//             data: { file:file, deskripsi:desk, tipe:tipe },
//             error: function() {
//            		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
//            		console.log(data);
//            	},
//            	success: function() {
//                 Swal.fire({
//                  	title: 'Sukses',
//                  	text: 'Gambar berhasil disimpan !!',
//                  	type: "success",
//                  	timer: 3000
//                  });
// 				$("#warna").load('<?php echo base_url('Custom/egalery')?>');
//       //           setTimeout(function() 
//   				// {
//     		// 	location.reload();  //Refresh page
//   				// }, 100);
//            }
//         });
//   	}
// 	else{
// 		Swal.fire('Kesalahan !!','Gambar tidak disimpan !!', "error");
// 	}
// 	})
// }

</script>