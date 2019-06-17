  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Edit Tampilan Sekolah / Pengaturan Layout Halama Utama <span style="color: transparent;">	untuk bacok ali</span>
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 20px;">
		<div class="col-12" style="">
			<div class="container menupage"  style="height: 600px;">
			<center><h2>Pengaturan Posisi & Struktur Halaman Utama</h2></center>
			<hr>
			<div class="d-flex justify-content-lg-start">
			</div>
				<div id="navfirst" class="container-fluid" style="background: #335C81;height: 65px;padding-top: 10px;">
					<div class="floatlist" id="navlist">
							<center><h3 style="color: white;padding-top: 5px;">Navigasi Bar</h3> </center>
					</div>
				</div>
				<div style="background: #B2BFD0;">
					<div class="container" style="padding-bottom: 50px;padding-top: 30px;">
						<div class="row">
							<div class="col-4 offset-2">
						<div id="konten">
							
						</div>
					</div>
					<div class="col-4">
						<div id="konten2">
							<div class="list-group static">
								<a href="#" class="static list-group-item list-group-item-action flex-column align-items-start active" style="margin-top: 10px; margin-bottom: 10px;">
								    <div class="d-flex static w-100 justify-content-between">
									      <h5 class="mb-1 static">Menu Konten yang Aktif</h5>
								    </div>
								</a>
							</div>
						</div>
					</div>
						</div>
					</div>
				</div>
				</div>
		</div>

	</div>
<script type="text/javascript">
	$('#konten').sortable({
		connectWith: '#konten2',
		items: '.move:not(.static)',
		update: function(event, ui) {
            // var iddrop = $('#konten').sortable("toArray");
            // console.log(iddrop);
        },
        receive:function(event, ui ){
            var reid1 = ui.item.attr('id');
            pindah(reid1, 'hapus');

        }
	});

	$('#konten2').sortable({
		connectWith: '#konten',
		items: '.move:not(.static)',
		update: function(event, ui) {
            // var iddrop2 = $('#konten2').sortable("toArray");
            // console.log(iddrop);
        },
        receive:function(event, ui ){
            var reid2 = ui.item.attr('id');
            console.log(reid2);
            pindah(reid2, 'tambah');

        }
	});
	$('#konten').load('<?php echo base_url("Custom/layoutView") ?>');
	$('#konten2').load('<?php echo base_url("Custom/layoutView2") ?>');

	function pindah(a,b){
		$.ajax({
			url: '<?php echo base_url('Custom/pindahLayout') ?>',
			type: 'post',
			data: {a:a, b:b},
			error: function(){
				console.log('Gagal');
			},
			success: function(){
				console.log('Sukses');
			}
		})
	}
</script>