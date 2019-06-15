<?php foreach ($res as $key => $v): ?>
	
<?php endforeach ?>

<table class="table table-borderless">
	<tr>
		<td>
			<form method="post" id="labelnav">
			<h3 class="">Label Navigasi</h3><input type="text" class="form-control" id="label" value="<?php echo $v->label ?>" name="label">
			<input type="text" id="id_t" hidden name="" value="<?php echo $v->id_item ?>">
		</td>
		<!-- <td>
			<h3 class="">Tipe Navigasi</h3>
			<select class="custom-select">
				<?php if ($v->tipe==item): ?>
				<option>Navigasi Item</option>
				<option>Navigasi Dropdown</option>
				<?php endif ?>
				<?php if ($v->tipe==drop): ?>
				<option>Navigasi Dropdown</option>
				<option>Navigasi Item</option>
				<?php endif ?>
			</select>
		</td> -->
	</tr>
	<tr>
		<td colspan="2">
			<div class="form-group">
			<h3>Link Navigasi</h3>
			<input class="form-control" type="text" name="link" placeholder="Ketik Manual" value="<?php echo $v->link ?>" id="link"> &nbsp;atau <br><button class="btn btn-outline-primary"  onclick="Link();">Pilih Link</button>
			</div>
		</td>
	</tr>
	<tr>
		<td onclick="upidNav();" colspan="2"><center><button class="btn btn-primary">Simpan</button></center></td>
	</tr></form>
</table>

<div class="modal fade" id="linkSelect" role="dialog">
    <div class="modal-dialog modal-xl">
	    <div class="modal-content">
		    <div class="modal-header">

		    	<h4 class="modal-title">Pilih Link</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
		    	<div class="row">
		    		<div class="col-4">
		    			<div class="form-group">
		    				<h3>Filter Pencarian</h3>
		    				<hr>
		    				Cari
		    				<input type="text" class="form-control" name="cari" oninput="search(this);" placeholder="Cari Judul">
		    				Kategori
		    				<select id="selectlink" class="form-control">
		    					<option>Pilih Kategori</option>
		        <?php foreach ($kate as $key => $ww): ?>
		    			<option value="<?php echo $ww->id_kategori ?>"><?php echo $ww->nama_kategori ?></option>
		        <?php endforeach ?>
		        		</select>
		        		</div>
		    		</div>
		    		<div class="col-8">
		    			<div class="container-fluid ex3">
		    			<div class="table-responsive">
		    			<div id="tabledit">
		    				
		    			</div>
		    			</div>
		    			</div>
		    		</div>
		    	</div>
		        	
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div><button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
		    </div>
		</div>
  	</div>
</div>

<script type="text/javascript">
	var tempdata = '';
	var valueselect = $('#selectlink').val();
	var tempdata2 = '';

		


	$.ajax({
		url: '<?php echo base_url('Custom/') ?>',
		type: 'post',
		data: {da:valueselect},
		error: function(){
			Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           		console.log(data);
		}
	})


	$("#table").selectable({
    filter: 'tr'
	});
	$("table").selectable({
    filter: 'tr'
	});

	function search(d){
		console.log($(d).val());
		tempdata = $(d).val();
	    if (tempdata=='') {
	    	$('#tabledit').empty();
	    	$('#tabledit').load('<?php echo base_url("Custom/naveditkate/") ?>' + tempdata2);
	    }
	    else
	    {
	    	$('#tabledit').empty();
	    $('#tabledit').load('<?php echo base_url("Custom/naveditkate2/") ?>' + tempdata2 +  '/'  +tempdata);
	    }
	}
function upidNav(){

		// alert($('#label').val());
		var ab = $('#label').val();
		var aa = $('#id_t').val();
		var ac = $('#link').val();
		console.log(ab);console.log(aa);
		// 
		$.ajax({
        	url: '<?php echo base_url('Custom/upidNav') ?>',
            type: 'POST',
            data: {kode: aa, label: ab, link: ac},
            error: function(data) {
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           		console.log(data);
           	},
           	success: function(dat) {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Label navigasi berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
                console.log(dat);
                location.reload();
           }
        })
		}	

$('#selectlink').change(function(){
	console.log($(this).val());
	    var linkval = $(this).val();
	    tempdata2 = linkval;
	    $('#tabledit').empty();
	    $('#tabledit').load('<?php echo base_url("Custom/naveditkate/") ?>' + linkval);
	    // $.ajax({
	    // 	url : '<?php echo base_url('Custom/naveditkate') ?>',
	    // 	type : 'post',
	    // 	data : {id:linkval},
	    // 	error: function(data) {
     //       		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
     //       		console.log(data);
     //       	},
     //       	success: function(data) {
     //            #('tabledit').load
     //       }
	    // })

})

function Link(){
	$('#linkSelect').modal('toggle');
	

}


</script>

