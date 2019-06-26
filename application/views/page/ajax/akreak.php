<script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/ckeditor.js') ?>"></script>
<!-- <script type="text/javascript" src="<?php echo base_url('plugins/ckeditor/CKFinder/ckfinder.js') ?>"></script> -->
<?php foreach ($set as $key => $setval): ?>
<form id="datapenerimaan">        
      <?php endforeach ?>
      <div class="row" style="margin-top: 50px;">
        <div class="col-12">
          <div class="container-fluid menupage">
            <div class="row">
              <div class="col-12">
                <center><h3>Pengaturan Penerimaan Murid Baru</h3></center>
              <hr>
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                <span style="font-size: 20px;">Status Penerimaan :</span><?php if ($setval->penerimaan==1): ?>
                  <label class="switch"><input onclick="akreak(0)" type="checkbox" checked><span class="slider round"></span></label>
                <?php endif ?>
                <?php if ($setval->penerimaan==0): ?>
                  <label class="switch"><input onclick="akreak(1)" type="checkbox"><span class="slider round"></span></label>
                <?php endif ?>
                <hr>
              </div>
            </div>
            <div class="row">
              <div class="col-4">
                <?php if ($setval->penerimaan==1): ?>
                  
                  <div class="form-group">
                    Tahun Penerimaan
                    <input value="<?php echo $setval->tahun_penerimaan ?>" type="number" name="thn" class="form-control">
                    
                    Jumlah Maksismum Peserta Didik
                    <input type="number" value="<?php echo $setval->maks ?>" name="jumlah" class="form-control">
                    Waktu Tutup Pendaftaran
                    <input type="date" value="<?php echo $setval->tutup_pendaftaran ?>" name="tutup" class="form-control">
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-group-vertical btn-outline-primary">Simpan</button>
                  </div>
                  
                  
              </div>
              <div class="col-7">
                  <div class="form-group">
                    
                    Catatan Tambahan untuk Zona Pendaftaran
                    <textarea style="height: 200px;" name="note" id="note" class="form-control">
                      <?php echo $setval->note ?>
                    </textarea>
                  </div>
                    
              </div>
                <?php endif ?>
            </div>

          </div>
        </div>
      </div>
                  </form>

      <script type="text/javascript">
        var editor = CKEDITOR.replace( 'note', {
    height:500, removePlugins : 'resize', filebrowserBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html'); ?>', filebrowserImageBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Images'); ?>', 
    filebrowserFileBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=File'); ?>', 
      filebrowserFlashBrowseUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/ckfinder.html?type=Flash'); ?>', 
      filebrowserUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files'); ?>', 
      filebrowserImageUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'); ?>', 
      filebrowserFlashUploadUrl : '<?php echo base_url('plugins/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'); ?>'
  });

        $('#datapenerimaan').submit(function(e){
          e.preventDefault(); 
          var form = new FormData(this);
          var isi = CKEDITOR.instances.note.getData();
          form.append('isi', isi);

          $.ajax({
          url : '<?php echo base_url('Custom/siswaupdateSetting') ?>',
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
            Swal.fire('Suskses !!','Pengaturan tersimpan  !!', "success");
            $('#akreak').load('<?php echo base_url('Custom/sisSetting') ?>');
          }
        });

        })
      </script>