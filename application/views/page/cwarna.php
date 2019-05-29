
<div class="jumbotron jj" style="border-radius: 0px;">
	<center>
		<h1 style="color: white">Template Warna</h1>
		<h2 style="color: white">Semua template warna yang telah</h2>
		<h2 style="color: white">disimpan admin</h2>
	</center>
</div>
<div class="container ctext" style="background: white;">
	<!-- <center><h2>Warna yang Tersimpan</h2></center> -->
	<center>
	<table>
		<tr>
			<th><h2>Warna yang Tersimpan&nbsp;</h2></th><th><button onclick="sw1();" class="btn btn-info"><i class="fas fa-plus"></i>Tambah</button></th>
		</tr>
	</table>
	</center>
	<div id="warna">
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
    // alert('yeah');
    $("#warna").load('<?php echo base_url('Custom/ewarna')?>');
	});
</script>