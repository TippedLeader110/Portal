<form id="doit" action="<?php echo 	base_url('User/daftarsave') ?>" method="post">
<div class="col-10 offset-1" id="sekunder" style="background: white;margin-top: 50px;"> 
	
	<div class="container mod" >
			<div class="row">
				<div class="col-12">
					<center><h1>Verifikasi Data</h1></center>
					<center>Tolong cek data kembali dengan benar</center>
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="container">
						<h4>Data Pribadi</h4>
						<hr>
						<table>
							<tr>
								<td>Nama</td><td>&nbsp;:&nbsp;<span id="vernama"></span></td>
							</tr>
							<tr>
								<td>Jenis Kelamin</td><td>&nbsp;:&nbsp;<span id="verkel"></span></td>
							</tr>
							<tr>
								<td>Alamat</td><td>&nbsp;:&nbsp;<span id="veralamat"></span></td>
							</tr>
							<tr>
								<td>Tanggal Lahir</td><td>&nbsp;:&nbsp;<span id="vertanggal"></span></td>
							</tr>
							<tr>
								<td>Agama</td><td>&nbsp;:&nbsp;<span id="veragama"></span></td>
							</tr>
						</table>
						<br>
						<h4>Data Asal Sekolah</h4>
						<hr>
						<table>
							<tr>
							<td>Sekolah Asal</td><td>&nbsp;:&nbsp;<span id="versekolah"></span></td>
						</tr>
						<tr>
							<td>Alamat Sekolah</td><td>&nbsp;:&nbsp;<span id="veralamatsekolah"></span></td>
						</tr>
						<tr>
							<td>Tahun Lulus</td><td>&nbsp;:&nbsp;<span id="vertahunlulu"></span></td>
						</tr>
						</table>
					</div>
				</div>
				<div class="col-6">
					<table>
					<h4>Data Orang Tua/Wali</h4>
					<hr>
					<tr>
						<td>Nama Ayah</td><td>&nbsp;:&nbsp;<span id="vernamaayah"></span></td>
					</tr>
					<tr>
						<td>Pendidikan Ayah</td><td>&nbsp;:&nbsp;<span id="verpendayah"></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Ayah</td><td>&nbsp;:&nbsp;<span id="verperayah"></span></td>
					</tr>
					<tr>
						<td>Nama Ibu</td><td>&nbsp;:&nbsp;<span id="vernamaibu"></span></td>
					</tr>
					<tr>
						<td>Pendidikan Ibu</td><td>&nbsp;:&nbsp;<span id="verpendibu"></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Ibu</td><td>&nbsp;:&nbsp;<span id="verperibu"></span></td>
					</tr>
					<tr>
						<td>Alamat Orang Tua</td><td>&nbsp;:&nbsp;<span id="veralamatortu"></span></td>
					</tr>
					<tr>
						<td>Nama Wali</td><td>&nbsp;:&nbsp;<span id="vernamawali"></span></td>
					</tr>
					<tr>
						<td>Pendidikan Wali</td><td>&nbsp;:&nbsp;<span id="verpendwali"></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Wali</td><td>&nbsp;:&nbsp;<span id="verperwali"></span></td>
					</tr>
					<tr>
						<td>Alamat Wali</td><td>&nbsp;:&nbsp;<span id="veralamatwali"></span></td>
					</tr>
					</table>
					<br>
					Saya yakin sudah benar !! <input onclick="EnableSubmit(this)" type="checkbox" name="" >
					<button id="cekcek" class="btn btn-outline-primary" type="submit" onclick="kirim();">Kirim</button>
				</div>
				
			</div>
		</div>
</div>

<div class="col-md-6 offset-3 mod" id="main" style="background: white;margin-top: 50px;">

		
		<div class="container mod" id="main">
			<center><h1 style="color: #335C81; margin-top: 10PX">Daftar Siswa</h1></center><hr><br>

			
				<div class="form-group">

					<div id="pribadi">
						<center><h4>Data Pribadi</h4></center>
						<label>Nama</label>
						<input type="text" id="nama" name="nama" class="form-control required"><br>
					    
					    <label>Jenis Kelamin</label> 
	               	 	<select name="jeniskel" class="form-control " id="jk">
	               		<option value="Laki-Laki">Laki-Laki</option>
	                	<option value="Perempuan">Perempuan</option>
	                    </select><br>
						
						<label>Agama</label> 
	               	 	<select name="agama" class="form-control " id="agama">
	               		<option value="Islam">Islam</option>
	                	<option value="Kristen">Kristen</option>
	                	<option value="Budha">Budha</option>
	                	<option value="Hindu">Hndu</option>
	                    </select><br>

						<label>Alamat</label>
						<textarea type="text" id="alamat" name="alamat" class="form-control required" cols="40" rows="5"></textarea><br>
						<?php foreach ($id as $key => $valid): ?>
              
            			<?php endforeach ?>
            			<input type="text" hidden name="tahun_p" value="<?php echo $valid->tahun_penerimaan ?>">

						<label>Tanggal Lahir</label>
						<input type="date" id="tanggal_lahir" name="tanggal_lahir"class="form-control required"><br>
						
						<div class="row">
							<div class="col-4">
							</div>
							<div class="col-6">
							</div>
							<div class="col-2">
								<button id="pribadi1" class="btn btn-outline-primary">Lanjut</button>
							</div>
						</div>
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
	               	  			<button id="kiri" class="btn btn-outline-warning">Kembali</button>
	               	  		</div>
	               	  		<div class="col-6"></div>
	               	  		<div class="col-2">
	               	  			<button id="kanan" class="btn btn-outline-primary" type="submit">Lanjut</button>
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
	               	  			<button id="sekolah1" class="btn btn-outline-warning">Kembali</button>
	               	  		</div>
	               	  		<div class="col-6"></div>
	               	  		<div class="col-2">
	               	  			<button class="btn btn-danger" >Verifikasi</button>
	               	  		</div>
	               	  	</div>
						
					</div>
				</div>	
		</div>	
	</div>	
</div>
</form>

<script type="text/javascript">
	var req = true;
	function check() {
    $('.required').each(function(){
        if( $(this).val() == "" ){
          // alert('Please fill all the fields');

          req = false;
        }
    });
	};


	$('#sekolah').hide();
	$('#orangtua').hide();
	// $('#main').hide();
	$('#sekunder').hide();

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

	$('#doit').submit(function(e) {
		e.preventDefault();
		check();
		if (req===true) {
			$('#main').hide();
			$('#sekunder').show().fadeIn('slow');
			$('#vernama').html($('#nama').val());
			$('#verkel').html($('#jk').val());
			$('#veralamat').html($('#alamat').val());
			$('#vertanggal').html($('#tanggal_lahir').val());
			$('#vernamaayah').html($('#nama_ayah').val());
			$('#verpendayah').html($('#pend_ayah').val());
			$('#verperayah').html($('#pekerjaan_ayah').val());
			$('#vernamaibu').html($('#nama_ibu').val());
			$('#verpendibu').html($('#pend_ibu').val());
			$('#verperibu').html($('#pekerjaan_ibu').val());
			$('#veralamatortu').html($('#alamat_ortu').val());
			$('#vernamawali').html($('#nama_wali').val());
			$('#verpendwali').html($('#pend_wali').val());
			$('#verperwali').html($('#pekerjaan_wali').val());
			$('#veralamatwali').html($('#alamat_wali').val());
			$('#versekolah').html($('#sekolah_asal').val());
			$('#veralamatsekolah').html($('#alamat_sekolah').val());
			$('#vertahunlulu').html($('#tahun_lulus').val());			
			$('#veragama').html($('#agama').val());
			// $(this).unbind('submit').submit();
		}
		else if (req===false) {
			Swal.fire('Kesalahan', 'Tolong isi semua form !!', 'error');
			req = true;

		}
	});
	EnableSubmit = function(val)
	{
	    if (val.checked == true)
	    {
	        $('#cekcek').show('slow');
	    }
	    else
	    {
	        $('#cekcek').hide('slow');
	    }	
	}
$('#cekcek').hide('slow');

function kirim(){
	$('#doit')[0].submit();
}
</script>