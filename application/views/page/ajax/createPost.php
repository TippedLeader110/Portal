<script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/ckeditor.js') ?>"></script>
<!-- <script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/CKFinder/ckfinder.js') ?>"></script> -->
	<div class="container-fluid menupage">
		<center><h2 style="font-weight: bold;">Formulir Posting Artikel</h2></center>
		<hr>
		<!-- <nav>
		  <div class="nav nav-tabs" id="nav-tab" role="tablist">
		    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Identitas Artikel</a>
		    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Isi Artikel</a>
		  </div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
		  	<div class="table-responsive">
		  		<div class="table">
		  			<tr>
		  				<td>Judul <input type="text" class="form form-control" id="title" name="">
		  	</td>
		  			</tr>
		  		</div>
		  	</div>
		  	</div>
		  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab"><textarea name="createpost" id="createpost"></textarea>
			</div>
		</div> -->
		<div class="row">
			<div class="col-4">
				<form id="submit">
				<div class="form-group">
					Gambar Sampul
					<input type="file" name="file" >
				</div>
				<div class="form-group">
				Judul 
				<input type="text" class="form-control" name="title" id="title">
				<hr>
				Kategori 
				<span id="errorkat"></span>
				<select name="select" id="select" class="form-control"> 
					<option id="null" value="null">Pilih Kategori</option>
					<?php foreach ($m as $key => $v): ?>
						<option id="<?php echo $v->id_kategori ?>" value="<?php echo $v->id_kategori ?>">
							<?php echo $v->nama_kategori ?>
						</option>
					<?php endforeach ?>
				</select>
				<hr>
				Tipe Publikasi
				<span id="errorpub"></span>
				<select name="tipe" id="select2" class="form-control">
					<option>Pilih tipe publikasi</option>
					<option value="public">Public</option>
					<option value="private">Private</option>
				</select>
				<hr>
				Waktu <input type="text" class="form form-control" id="waktu" name="waktu" value="<?php echo date("Y-m-d") ?>">	
				<button type="submit" style="margin-top: 20px;" class="btn btn-success">Post</button>
				</div>
			</div>
			<div class="col-8">
				Isi Artikel
				<textarea  name="isi" id="createpost" style="max-height: 450px;"></textarea>
				</form>
			</div>
		</div>
	</div>

<script type="text/javascript">
		var editor = CKEDITOR.replace( 'createpost', {
		height:500, removePlugins : 'resize', filebrowserBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html'); ?>', filebrowserImageBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Images'); ?>', 
		filebrowserFileBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=File'); ?>', 
			filebrowserFlashBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Flash'); ?>', 
			filebrowserUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'); ?>', 
			filebrowserImageUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'); ?>', 
			filebrowserFlashUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'); ?>'
	});


		$('#createpost').change(function () {
   			var $textarea = $(this);
   			console.log($textarea);
   			$textarea.val(CKEDITOR.instances[$textarea.attr('name')].getData());
		});
		$('#select').change(function(){
			var ab = $(this).val();
			console.log(ab);
		})

	$('#submit').submit(function(e){		
		e.preventDefault(); 
		CKEDITOR.instances.createpost.updateElement();
		// var stat = $('#select2').val();
		// var t = $('#title').val();
		// var waktu = $('#waktu').val();
		// var Kategori = $('#select').val();


		var isi = CKEDITOR.instances.createpost.getData();
		var form = new FormData(this)
		form.append('isi', isi);

		// console.log(t);
		// console.log(waktu);
		// console.log(Kategori);

		$.ajax({
			url : '<?php echo base_url('Custom/savePost') ?>',
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
			
				Swal.fire('Sukses', 'Artikel berhasi disimpan !!!', 'success'),
				console.log(data);

			}
		});
	})
</script>