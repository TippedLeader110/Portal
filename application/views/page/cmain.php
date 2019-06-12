<link rel="stylesheet" type="text/css" href="<?php echo base_url("source/css/customNav.css") ?>">
<div class="jumbotron" style="background: #577399;border-radius: 0px;padding-bottom: 0px;">
	<center>
		<h1 style="color: white">Selamat Datang ## di Halaman Admin</h1>
		<h2 style="color: white">Di Halaman ini anda dapat memodifikasi tampilan awal website</h2>
		<h2 style="color: white">dan mengubahnya menjadi sesuai dengan keinginan</h2>
		<table style="margin-top: 50px;">
				<tr>
					<td class="tdp" id="tdd1"><a onclick="getR();" href="javascript:void(0);" class="nava"><h5  style="color: white">Laporan Singkat</h5></a></td>
					<td class="tdp" id="tdd2"><a onclick="getLog();" href="javascript:void(0);" class="nava"><h5  style="color: white">Log Terakhir</h5></a></td>
					<td class="tdp" id="tdd3"><a onclick="getSejarah();" href="javascript:void(0);" class="nava"><h5  style="color: white">User Saya</h5></a></td>
				</tr>
		</table>
	</center>
</div>



<div class="row">
	<div class="col-12">
		<div class="container-fluid">
			<div id="view">
				
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	function getR(){
		var ab = 'report';
		$.ajax({
        	url: '<?php echo base_url('Custom/getCmain') ?>',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
			$('#view').html(data).hide().fadeIn('slow');
			    // $('').load('url').hide().fadeIn('slow');

           }
        });
	}

	function getLog(){
		var ab = 'log';
		$.ajax({
        	url: '<?php echo base_url('Custom/getCmain') ?>',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
			$('#view').html(data);
           }
        });
	}
</script>