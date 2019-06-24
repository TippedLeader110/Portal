<htmL>
<head>
	<title>Bootstrap</title>
	  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/source/css/custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<div class="col-md-12" style="background: #335C81">
	<div class="row">
		<div class="col-md-7 offset-3" style="background: white; margin-top: 75px">
		<center><h1 style="color: #335C81; margin-top: 10PX">Daftar Siswa</h1></center><hr><br>
		<h4>Daftar Siswa -> Data Pribadi</h4>
			<form>
				<div class="form-group">
					<label>Nama</label>
					<input type="text" id="nama" name="nama" class="form-control"><br>
				    
				    <label>Jenis Kelamin</label> 
               	 	<select class="form-control" id="jk">
               		<option>Pria</option>
                	<option>Wanita</option>
                    </select><br>
					
					<label>Alamat</label>
					<textarea type="text" id="alamat" name="alamat" class="form-control" cols="40" rows="5"></textarea><br>

					<label>Tanggal Lahir</label>
					<input type="date" id="tanggal_lahir" name="tanggal_lahir"class="form-control"><br>

					<label>Tahun Ajaran</label>
					<input type="text" id="tahun_ajaran" name="tahun_ajaran" class="form-control"><br>
					
					<label>Nama Ayah</label>                  
                   	<input type="text" id="nama_ayah" name="nama_ayah" class="form-control"><br>

					<label>Pendidikan Ayah</label>                                      
                    <input type="text" id="pend_ayah" name="pend_ayah" class="form-control"><br>

					<label>Pekerjaan Ayah</label>                                      
                    <input type="text" id="pekerjaan_ayah" name="pekerjaan_ayah" class="form-control" ><br>

				    <label >Nama Ibu</label>                 
                    <input type="text" id="nama_ibu" name="nama_ibu" class="form-control" ><br>
                
				    <label >Pendidikan Ibu</label>                                
                    <input type="text" id="pend_ibu" name="pend_ibu" class="form-control" ><br>
                
				    <label >Pekerjaan Ibu</label>                                   
                    <input type="text" id="pekerjaan_ibu" name="pekerjaan_ibu" class="form-control"><br>
                
   					<label >Alamat Orangtua</label>                                
                	<textarea type="text" id="alamat_ortu" name="alamat_ortu" class="form-control" cols="40" rows="5"></textarea><br>
              
					<label >Nama Wali</label>
                    <input type="text" id="nama_wali" name="nama_wali" class="form-control"><br>

					<label>Pendidikan Wali</label>
                    <input type="text" id="pend_wali" name="pend_wali" class="form-control"><br>
         
					<label >Pekerjaan Wali</label>                                    
                    <input type="text" id="pekerjaan_wali" name="pekerjaan_wali" class="form-control" ><br>
               
					<label >Alamat Wali :</label>
               	    <textarea type="text" id="alamat_wali" name="alamat_wali" class="form-control" cols="40" rows="5"></textarea><br>
               
					<label >Sekolah Asal</label>                                   
                    <input type="text" id="sekolah_asal" name="sekolah_asal" class="form-control" ><br>
              
					<label >Alamat Sekolah</labe>                
                    <input type="text" id="alamat_sekolah" name="alamat_sekolah" class="form-control" ><br>            

					<label>Tahun Lulus</label>
                    <input type="text" id="tahun_lulus" name="tahun_lulus" class="form-control"><br>

					<label s>Status</label>                                    
                    <input type="text" id="status" name="status" class="form-control" ><br>
            



					<button class="btn btn-danger" type="submit">Simpan</button>
				</div>	
			</form>
		</div>	
	</div>	
</div>
</body>
</html>