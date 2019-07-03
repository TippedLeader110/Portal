<div class="row">
	  <div class="col-12">
	  	<div class="container" style="margin-top: 50px;">
	  		<div class="row">
	  			<div class="col-12">
	  				<div class="form-group" style="width: 40%">
	  					<input type="text" name="cari" class="form-control" placeholder="Cari Nama" id="cari" oninput="cari()">
	  				</div>
	  				<div id="cariadminlist">
	  					<div class="table-responsive">
	  					<table class="table table-striped">
	  						<tr>
	  							<th>ID</th><th>Nama</th><th>Level</th><th colspan="">Aksi</th>
	  						</tr>
	  						<?php foreach ($data as $key => $vdata): ?>
	  							<tr>
	  								<td><?php echo $vdata->id_user ?></td>
	  								<td><?php echo $vdata->nama ?></td>
	  								<td><?php echo $vdata->level ?></td>
	  								<td><button onclick="edit(<?php echo $vdata->id_user ?>)" class="btn btn-primary">Edit Otoritas</button>&nbsp;<button onclick="delUser(<?php echo $vdata->id_user ?>)" class="btn btn-danger">Hapus</button></td>
	  							</tr>
	  						<?php endforeach ?>
	  					</table>
	  				</div>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
	  </div>
</div>

<div class="modal fade" id="editModal" role="dialog">
    <div class="modal-dialog">
	    <div class="modal-content">
		    <div class="modal-header">
		    	<h4 class="modal-title">Edit Otoritas<span id="span"></span></h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
	        		<div class="form-group">
					Ganti Nama
					<input class="form-control" type="text" id="namaSaya" name="namaSaya">
					</div>
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div><button class="btn btn-outline-primary" onclick="simNama(<?php echo $sva->id_user ?>)">Simpan</button>&nbsp;<button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
		    </div>
		</div>
  	</div>
</div>



<script type="text/javascript">
	function edit(id) {
    Swal.fire({
    	title: 'Ganti Tingkat Otoritas',
		html:
		  	'<form method="post" class="form-user">'+
		    '<select id="s1" class="form-control"><option value="1">Level 1</option><option value="2">Level 2</option></select>' +
		    '</form>',
		showCancelButton: true,
		confirmButtonText: 'Perbaharui',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
  		var data = $('.form-user').serialize();
  		var ab = id;
  		var aa = $('#s1').val();
  		// alert(ab + " " + aa);
		$.ajax({
        	url: 'http://localhost/Portal/Custom/otoAkun',
            type: 'POST',
            data: {level: aa,id: ab},
            error: function() {
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           		console.log(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Tingkat otoritas berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
				$("#adminlist").load('<?php echo base_url('Custom/adminlist')?>');
           }
        });
  	}
	else{
		Swal.fire('Kesalahan !!','Tingkat otoritas tidak disimpan !!', "error");
	}
	})
}


	function delUser(id) {
    Swal.fire({
    	title: 'Hapus Akun',
    	text: 'Apakah anda ingin menghapus akun ini  ?',
    	type: "question",
		showCancelButton: true,
		confirmButtonText: 'Ya, Hapus',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
  		var ab = id;
		$.ajax({
        	url: 'http://localhost/Portal/Custom/remAkun',
            type: 'POST',
            data: {id: ab},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Akun berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                $("#adminlist").load('<?php echo base_url('Custom/adminlist')?>');
      //           setTimeout(function() 
  				// {
    		// 	location.reload();  //Refresh page
  				// }, 100);
           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Akun tidak jadi dihapus !!', "error");
	}
	})
}

	function cari(){
		if ($('#cari').val()!='') {
			$("#cariadminlist").load('<?php echo base_url('Custom/adminlistCari/')?>'+ $('#cari').val());
		}
		else{
			$("#cariadminlist").load('<?php echo base_url('Custom/adminlistCarino')?>');	
		}
		// alert($('#cari').val());
	}
</script>