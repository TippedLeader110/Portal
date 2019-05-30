<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
<?php foreach ($sek as $key => $val): ?>
<?php endforeach ?>
<div class="container-fluid">
	<div class="row">
		<div class="col-3 ">
			<div class="container-fluid" > 
				<div class="row">
					<div class="cc">
						<div class="image" style="background-image: url('<?php echo base_url('source/img/b.jpg') ?>');width: 240px;">
						</div>
						<div class="overlay">
						    <a href="javascript:void(0);" onclick="upLogo();" class="icon" title="User Profile">
						  	  <i class="fas fa-upload"></i>
						    </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="col-1">
			
		</div> -->
		<div class="col-9 ">
			<!-- // <?php $this->load->view('nav/cidnav') ?> -->
			<table>
				<tr>
					<td id="tdd1" align="center"><a onclick="getVisi();" href="javascript:void(0);" class="nava"><h5 >Visi Sekolah</h5></a></td>
					<td id="tdd2" align="center"><a onclick="getMisi();" href="javascript:void(0);" class="nava"><h5 >Visi Sekolah</h5></a></td>
					<td id="tdd3" align="center"><a onclick="getSejarah();" href="javascript:void(0);" class="nava"><h5 >Visi Sekolah</h5></a></td>
				</tr>
			</table>
			<hr>
			<div id="sek">
				
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
    // alert('yeah');
    getSek();
    visi();
    // $("#sek").load('<?php echo base_url('Custom/ewarna')?>');
	});

	function getSek(){
		var ab = 'visi';
		var html = '';
		$.ajax({
        	url: 'http://localhost/Portal/Custom/getSek',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
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
        	url: 'http://localhost/Portal/Custom/getSek',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
                $("#sek").html(visi);
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
        	url: 'http://localhost/Portal/Custom/getSek',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
                $("#sek").html(misi);
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
        	url: 'http://localhost/Portal/Custom/getSek',
            type: 'POST',
            data: {id: ab},
            // dataType: 'json',
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Galat !!','Ada yang salah dengan controller', "error");
           	},
           	success: function(data) {	
           		var result = $.parseJSON(data);
           		// alert(result[0]);
           		var visi = result[0].visi;
           		var sejarah = result[0].sejarah;
           		var misi = result[0].misi;
                $("#sek").html(sejarah);
                $("#tdd1").toggleClass("acttd", false);
                $("#tdd2").toggleClass("acttd", false);
                $("#tdd3").toggleClass("acttd", true);
           }
        });
	}
</script>