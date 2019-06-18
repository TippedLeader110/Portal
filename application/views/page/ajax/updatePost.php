<script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/ckeditor.js') ?>"></script>
<!-- <script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/CKFinder/ckfinder.js') ?>"></script> -->
	<div class="container-fluid menupage">
		<center><h2 style="font-weight: bold;">Formulir Update Posting Artikel</h2></center>
		<hr>
		<?php foreach ($post as $key => $value): ?>
			
		<?php endforeach ?>
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
				<input value="<?php echo $value->judul; ?>" type="text" class="form-control" name="title" id="title">
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
				<select  name="tipe" id="select2" class="form-control">
					<?php if ($value->status=='public'): ?>
					<option value="public">Public</option>
					<option value="private">Private</option>
					<?php endif ?>
					<?php if ($value->status=='pirvate'): ?>
					<option value="private">Private</option>
						<option value="public">Public</option>
					<?php endif ?>
				</select>
				<hr>
				Waktu <input type="text" class="form form-control" id="waktu" name="waktu" value="<?php echo date("Y-m-d") ?>">	
				<button type="submit" style="margin-top: 20px;" class="btn btn-success">Perbaharui</button>
				</div>
			</div>
			<div class="col-8">
				Isi Artikel
				<textarea  name="isi" id="uppost" style="max-height: 450px;"></textarea>
				<input type="text" hidden id="temp" value="<?php echo $value->isi ?>" name="">
				</form>
			</div>
		</div>
	</div>
<?php $visi = $value->isi; ?>
<script type="text/javascript">
		var editor = CKEDITOR.replace( 'uppost', {
		height:500, removePlugins : 'resize', filebrowserBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html'); ?>', filebrowserImageBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Images'); ?>', 
		filebrowserFileBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=File'); ?>', 
			filebrowserFlashBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Flash'); ?>', 
			filebrowserUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'); ?>', 
			filebrowserImageUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'); ?>', 
			filebrowserFlashUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'); ?>'
	});

		var sheet = $('#temp').val();
		CKEDITOR.instances.uppost.setData(sheet);

			$('#select').change(function(){
			var ab = $(this).val();
			console.log(ab);
		})

	$('#submit').submit(function(e){		
		e.preventDefault(); 
		var stat = $('#select2').val();
		var Kategori = $('#select').val();

		if (stat=='null'||Kategori=='null') {
			Swal.fire('Kesalahan !!','Tolong isi kategori atau tipe publikasi !!', "error");
		}
		else{

		CKEDITOR.instances.uppost.updateElement();
		// var t = $('#title').val();
		// var waktu = $('#waktu').val();


		var isi = CKEDITOR.instances.uppost.getData();
		var form = new FormData(this)
		var old = '<?php echo $value->cover ?>'
		var id = '<?php echo $value->id_post ?>'
		form.append('isi', isi);
		form.append('old', old);
		form.append('id', id);

		// console.log(t);
		// console.log(waktu);
		// console.log(Kategori);

		$.ajax({
			url : '<?php echo base_url('Custom/updatePost') ?>',
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
				if (data==1) {
				Swal.fire('Sukses', 'Artikel berhasi disimpan !!!', 'success');
				console.log(data);
				$("#page").load('<?php echo base_url('Custom/postshow') ?>').hide().fadeIn('slow');
			}else
				Swal.fire('Error', 'Tolong upload cover !!!', 'error');
			}
		});
		}
	})
</script>