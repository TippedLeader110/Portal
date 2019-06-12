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
			<h3>Link Navigasi</h3><button class="btn btn-outline-primary" onclick="Link();">Pilih Link</button>
		</td>
	</tr>
	<tr>
		<td onclick="upidNav();" colspan="2"><center><button class="btn btn-primary">Simpan</button></center></td>
	</tr></form>
</table>

<div id="linkSelect" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>

<script type="text/javascript">
function upidNav(){
		// alert($('#label').val());
		var ab = $('#label').val();
		var aa = $('#id_t').val();
		console.log(ab);console.log(aa);
		// 
		$.ajax({
        	url: '<?php echo base_url('Custom/upidNav') ?>',
            type: 'POST',
            data: {kode: aa, label: ab},
            error: function(data) {
           		Swal.fire('Galat !!','Koneksi ke server gagal !!', "error");
           		console.log(data);
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Label navigasi berhasil disimpan !!',
                 	type: "success",
                 	timer: 3000
                 });
                location.reload();
           }
        })
		}	
</script>

