<div class="col-md-6 offset-3 mod" style="background: white;margin-top: 50px;">
		<div class="container mod">
			<center><h1 style="color: #335C81; margin-top: 10PX">Daftar Siswa</h1></center><hr><br>

			<form id="doit">
				<div class="form-group">
					<div id="pribadi">
						<center><h4>Data Pribadi</h4></center>
						<label>Nama</label>
						<input type="text" id="nama" name="nama" class="form-control required"><br>
					    
					    <label>Jenis Kelamin</label> 
	               	 	<select name="jeniskel" class="form-control required" id="jk">
	               		<option value="Laki-Laki">Laki-Laki</option>
	                	<option value="Perempuan">Perempuan</option>
	                    </select><br>
						
						<label>Alamat</label>
						<textarea type="text" id="alamat" name="alamat" class="form-control required" cols="40" rows="5"></textarea><br>

						<label>Tanggal Lahir</label>
						<input type="date" id="tanggal_lahir" name="tanggal_lahir"class="form-control required"><br>
						
						<button id="pribadi1" class="btn btn-outline-primary">Data Orang Tua</button>
					</div>

					<div id="orangtua">
						<center><h4>Data Orang Tua</h4></center>
						
						<label>Nama Ayah</label>                  
	                   	<input type="text" id="nama_ayah" name="nama_ayah" class="form-control required"><br>

						<label>Pendidikan Ayah</label>                                      
	                    <input type="text" id="pend_ayah" name="pend_ayah" class="form-control required"><br>

						<label>Pekerjaan Ayah</label>                                      
	                    <input type="text" id="pekerjaan_ayah" name="pekerjaan_ayah" class="form-control required" ><br>

					    <label >Nama Ibu</label>                 
	                    <input type="text" id="nama_ibu" name="nama_ibu" class="form-control required" ><br>
	                
					    <label >Pendidikan Ibu</label>                                
	                    <input type="text" id="pend_ibu" name="pend_ibu" class="form-control required" ><br>
	                
					    <label >Pekerjaan Ibu</label>                                   
	                    <input type="text" id="pekerjaan_ibu" name="pekerjaan_ibu" class="form-control required"><br>
	                
	   					<label >Alamat Orangtua</label>                                
	                	<textarea type="text" id="alamat_ortu" name="alamat_ortu" class="form-control required" cols="40" rows="5"></textarea><br>
	              
						<label >Nama Wali</label>
	                    <input type="text" id="nama_wali" name="nama_wali" class="form-control "><br>

						<label>Pendidikan Wali</label>
	                    <input type="text" id="pend_wali" name="pend_wali" class="form-control "><br>
	         
						<label >Pekerjaan Wali</label>                                    
	                    <input type="text" id="pekerjaan_wali" name="pekerjaan_wali" class="form-control " ><br>
	               
						<label >Alamat Wali :</label>
	               	    <textarea type="text" id="alamat_wali" name="alamat_wali" class="form-control " cols="40" rows="5"></textarea><br>

	               	  	<div class="row">
	               	  		<div class="col-4">
	               	  			<button id="kiri" class="btn btn-outline-primary">Data Pribadi</button>
	               	  		</div>
	               	  		<div class="col-4"></div>
	               	  		<div class="col-4">
	               	  			<button id="kanan" class="btn btn-outline-primary">Data Sekolah</button>
	               	  		</div>
	               	  	</div>

					</div>


					<div id="sekolah">
						<center><h4>Data Sekolah Asal</h4></center>
	               
						<label >Sekolah Asal</label>                                   
	                    <input type="text" id="sekolah_asal" name="sekolah_asal" class="form-control required" ><br>
	              
						<label >Alamat Sekolah</label>                
	                    <input type="text" id="alamat_sekolah" name="alamat_sekolah" class="form-control required" ><br>            

						<label>Tahun Lulus</label>
	                    <input type="text" id="tahun_lulus" name="tahun_lulus" class="form-control required"><br>

	                    <div class="row">
	               	  		<div class="col-4">
	               	  			<button id="sekolah1" class="btn btn-outline-primary">Data Orang Tua</button>
	               	  		</div>
	               	  		<div class="col-4"></div>
	               	  		<div class="col-4">
	               	  			<button class="btn btn-danger" type="submit">Simpan</button>
	               	  		</div>
	               	  	</div>
						
					</div>
				</div>	
			</form>
		</div>	
	</div>	
</div>

<script type="text/javascript">
	function check() {
    };

	$('#sekolah').hide();
	$('#orangtua').hide();

	 $("#pribadi1").click(function(e) {
		e.preventDefault(); 
		$('#pribadi').hide();		
		$('#orangtua').show();
	})

	 $("#kanan").click(function(e) {
		e.preventDefault(); 
		$('#orangtua').hide();
		$('#sekolah').show();
	}	)

	 $("#kiri").click(function(e) {
		e.preventDefault(); 
		$('#orangtua').hide();
		$('#pribadi').show();
	}	)

	 $("#sekolah1").click(function(e) {
	 	e.preventDefault(); 
		$('#sekolah').hide();
		$('#orangtua').show();
	})

	$('#doit').submit(function(e){
		e.preventDefault(); 
		var form = new FormData(this);

		$('.required').each(function(){
        if($(this).val() == "" ){
        	Swal.fire('Kesalahan', 'Tolong isi semua form nya !!', 'error');
        	gocan();
        }
        elseif{
        	go(form);
        }
    	})
	}) 

	function go(form){
		$.ajax({
          url : '<?php echo base_url('user/daftarsave') ?>',
          type: 'post',
          data:form,
          processData:false,
                         contentType:false,
                         cache:false,
                         async:false,
          error: function(data){
            Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
                  console.log(data);
          },
          success: function(data){
            Swal.fire('Suskses !!','Akun tersimpan  !!', "success");
            $('#akreak').load('<?php echo base_url('Custom/sisSetting') ?>');
          }
        });
	}

	function gocan(){
		console.log('nope');
	}

</script>