<?php foreach ($set as $key => $setval): ?>
        
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
                  <form id="datapenerimaan">
                  <div class="form-group">
                    Tahun Penerimaan
                    <input value="<?php echo $setval->tahun_penerimaan ?>" type="number" name="thn" class="form-control">
                    Jumlah Maksismum Peserta Didik
                    <input type="number" value="<?php echo $setval->maks ?>" name="jumlah" class="form-control">

                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-group-vertical btn-outline-primary">Simpan</button>
                  </div>
                  </form>
                <?php endif ?>
              </div>
            </div>

          </div>
        </div>
      </div>

      <script type="text/javascript">
        $('#datapenerimaan').submit(function(e){
          e.preventDefault(); 
          var form = new FormData(this);

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
            $('#akreak').load('<?php echo base_url('Custom/sisSetting') ?>').hide().fadeIn('slow');
          }
        });

        })
      </script>