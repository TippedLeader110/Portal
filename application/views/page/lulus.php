
<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/sekolah.css') ?>">
<?php foreach ($id as $key => $vid): ?>
<?php endforeach ?>
<div class="row" style="margin-top: 10px;margin-bottom: 10px;">
  <div class="col-12">
    <img class="img2" src="<?php echo base_url('source/gambar/logo/'); echo $vid->logo ?>"><span class="bottomright" style="color: #335C81;font-weight: bolder;font-size: 40px;"><?php echo $vid->nama_sekolah ?></span>

  </div>
</div>
  <div class="row">
  <div class="col-12">
    <?php $this->load->view($vnav) ?>
  </div>
</div>
<div class="row" style="margin-top: 20px;">
  <div class="col-12">
       <center><h3 class="bold">Daftar Lulus Seleksi</h3></center>
     <hr>
  </div>
</div>
<div class="row">
<!--   <div class="col-5 offset-1">
  	<div class="form-group">
  		<input type="text" onkeyup="cari()" name="cariterus" id="cariterus" class="form-control" placeholder="Cari Guru">
  	</div>
  </div> -->
  <div class="col-5 offset-1">
  	<div class="form-group">
  		<select class="form-control" name="selek" id="selek">
  			<option value="null">-Pilih Tahun</option>
  			<?php foreach ($mapel as $key => $vmapel): ?>
  				<option value="<?php echo $vmapel->thn_ajaran; ?>"><?php echo $vmapel->thn_ajaran; ?></option>
  			<?php endforeach ?>
  		</select>
  	</div>
  </div>
  <div class="col-10 offset-1">
  	
  	<div id="pageajax">
  		
  	</div>
  </div>
</div>



<div class="modal fade" id="ali" role="dialog">
    <div class="modal-dialog modal-lg">
	    <div class="modal-content">
		    <div class="modal-header">
		    	<h4 class="modal-title">Info Guru<span id="span"></span></h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>
		    <div class="modal-body">
	        		<div id="modalpage">
	        			

	        		</div>
		    </div>
		    <div class="modal-footer">
		        <div id="but"></div>&nbsp;<button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
		    </div>
		</div>
  	</div>
</div>



<script type="text/javascript">
	console.log($('#selek').val());

	$('#selek').change(function(event) {
		console.log($('#selek').val());
		var val = $('#selek').val();
		$('#pageajax').load("<?php echo base_url('Artikel/lulusCari/') ?>" + val);
	});	
</script>