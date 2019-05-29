<script type="text/javascript" src="<?php echo base_url() ?>/source/js/j.js"></script>
<script type="text/javascript">
 function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}

function sw1() {
    Swal.fire({
    	title: 'Tambah warna baru',
		html:
		  	'<form method="post" class="form-user">'+
		    '<input id="s1" name="kode" class="swal2-input" placeholder="Kode Warna">' +
		    '<input id="s2" name="label" class="swal2-input" placeholder="Label Warna">'+
		    '</form>',
		showCancelButton: true,
		confirmButtonText: 'Simpan',
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
        	url: 'http://localhost/Portal/Custom/saveWarna',
            type: 'POST',
            data: {kode: aa, label: ab},
            error: function() {
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           		alert(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Warna berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
                setTimeout(function() 
  				{
    			location.reload();  //Refresh page
  				}, 3100);
           }
        });
  	}
	else{
		Swal.fire('Galat !!','Warna tidak disimpan !!', "error");
	}
	})
}

function delWarna(ab, aa) {
    Swal.fire({
    	title: 'Hapus Warna',
    	text: 'Apakah anda ingin menghapus warna ini ( ' + aa + ' ) ?',
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
        	url: 'http://localhost/Portal/Custom/remWarna',
            type: 'POST',
            data: {id: ab,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Warna berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                setTimeout(function() 
  				{
    			location.reload();  //Refresh page
  				}, 3100);
           }
        });
  	}
  	else{
		Swal.fire('Galat !!','Warna tidak jadi dihapus !!', "error");
	}
	})
}
</script>
