<div class="row">
	<div class="col-4">
		<input type="text" name="cari" id="cari" class="form-control" placeholder="Cari Artikel">
	</div>
	<div class="col-4">
		<button id="carishow" onclick="reset()" class="btn btn-primary">Tampilkan Semua</button>
	</div>
</div>

<div id="kecarian">
	
</div>


<script type="text/javascript">
	$('#kecarian').load('<?php echo base_url('Custom/quer') ?>')
	function Gedit(a){
		$("#page").load('<?php echo base_url('Custom/postUpdate/') ?>' + a).hide().fadeIn('slow');
		

	}

	var numberdude;
	$("span.page-link a").click(function(e) {
    	e.preventDefault();
		var href = $(this).attr("href");
		numberdude = href;
		console.log(href);
		$("#page").load('<?php echo base_url('Custom/postShow')?>' + href);

	});

function Gdel(ab) {
    Swal.fire({
    	title: 'Hapus Post',
    	text: 'Apakah anda ingin menghapus Post ini?',
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
        	url: '<?php echo base_url('Custom/delPost') ?>',
            type: 'POST',
            data: {id: ab,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Post berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                show();
           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Post tidak jadi dihapus !!', "error");
	}
	})
}

$('#cari').keypress(function (e) {
  if (e.which == 13) {
  	// $('#kecarian').empty();
  	$("#kecarian").load('<?php echo base_url('Custom/kecarian/') ?>' + $('#cari').val()).hide().fadeIn('slow');	
  	console.log($('#cari').val());
  	$('$carishow').show();
  }
    });
	
function reset(){
	$("#page").load('<?php echo base_url('Custom/postShow') ?>').hide().fadeIn('slow');
}
    </script>
