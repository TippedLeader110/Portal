<style type="text/css">
  .switch {
  position: relative;
  display: inline-block;
  width: 40px;
  height: 27px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 22px;
  width: 17px;
  left: 2px;
  bottom: 2px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(19px);
  -ms-transform: translateX(19px);
  transform: translateX(19px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 4px;
}

.slider.round:before {
  border-radius: 4px;
}
</style>

  
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Kelolah Data Web Sekolah / Data Siswa
			</div>
		</div>
	</div>
	
<div class="row">
  <div class="col-2" style="margin-top: 50px;">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Laporan</a>
      <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" onclick="siswa();" role="tab" aria-controls="v-pills-profile" aria-selected="false">Daftar Siswa</a>
      <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" onclick="siswab()" aria-controls="v-pills-messages" aria-selected="false">Siswa Baru</a>
      <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" onclick="setting();" role="tab" aria-controls="v-pills-settings" aria-selected="false">Penerimaan</a>
      <a class="nav-link" id="v-pills-ver-tab" data-toggle="pill" href="#v-pills-ver" onclick="verifikasi();" role="tab" aria-controls="v-pills-ver" aria-selected="false">Verifikasi</a>
    </div>
  </div>
  <div class="col-10">
    <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
      <div class="row">
  <div class="container">
    <div class="row" style="margin-top: 20px;">
    <div class="col-3">
      <div class="container kolmenu" >
        <center><h1>50</h1></center>
      </div>
      
    </div>
    <div class="col-3">
      <div class="container kolmenu" style="background: #393E41" >
        <center><h1>50</h1></center>
      </div>
      
    </div>
    <div class="col-3">
      <div class="container kolmenu" style="background: #706E70" >
        <center><h1>50</h1></center>
      </div>
      
    </div>
    <div class="col-3">
      <div class="container kolmenu" style="background: #577399" >
        <center><h1>50</h1></center>
      </div>
      
    </div>
  </div>
  <div class="row">
    <div class="col-3" style="margin-top: 5px">
      <div class="container koltext" >
        <center><h4>Siswa Aktif</h4></center>
      </div>
    </div>
    <div class="col-3" style="margin-top: 5px">
      <div class="container koltext" style="background: #393E41" >
        <center><h4>Siswa Nonaktif</h4></center>
      </div>
    </div>
    <div class="col-3" style="margin-top: 5px">
      <div class="container koltext" style="background: #706E70" >
        <center><h4>Siswa Ditolak</h4></center>
      </div>
    </div>
    <div class="col-3" style="margin-top: 5px">
      <div class="container koltext" style="background: #577399" >
        <center><h4>Siswa Baru</h4></center>
      </div>
    </div>
  </div>
  </div>
</div>
    </div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
      <div id="siswa">
        
      </div>
    </div>
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
      <div id="siswabaru">
        
      </div>
    </div>
    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
      <div id="akreak">
        
      </div>
    </div>
    <div class="tab-pane fade" id="v-pills-ver" role="tabpanel" aria-labelledby="v-pills-ver-tab">
      <div id="verifi">
        
      </div>
    </div>
  </div>
  </div>
</div>

	<div class="row" style="margin-top: 30px;">
		<div class="col-12" id="page">
		    
		</div>
	</div>

  <script type="text/javascript">
    function siswab(){
      $('#siswabaru').load('<?php echo base_url('Custom/siswaBaru') ?>').hide().fadeIn('slow');
    }

    function siswa(){
      $('#siswa').load('<?php echo base_url('Custom/siswaFull') ?>').hide().fadeIn('slow');
    }

    function setting(){
      $('#akreak').load('<?php echo base_url('Custom/sisSetting') ?>').hide().fadeIn('slow');
    }

    function verifikasi(){
      $('#verifi').load('<?php echo base_url('Custom/sisVerifikasi') ?>').hide().fadeIn('slow');
    }
    
    function akreak(a){
      $.ajax({
        url: '<?php echo base_url('Custom/akreak') ?>',
        type: 'post',
        data: {awl: a},
        error: function(){
          Swal.fire({
                    title: 'Kesalahan',
                    text: 'Penerimaan gagal diganti !!',
                    type: "error",
                    timer: 3000
                   });  
        },
        success: function(){
          // Swal.fire({
          //           title: 'Sukses',
          //           text: 'Layout berhasil diganti !!',
          //           type: "success",
          //           timer: 3000
          //          });  
          $('#akreak').load('<?php echo base_url('Custom/sisSetting') ?>').hide().fadeIn('slow');
        }
      });
    }

  </script>