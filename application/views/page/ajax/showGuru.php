<div class="container-fluid menupage" style="margin-bottom: 50px;">
  <button class="btn btn-success" data-toggle="modal" data-target="#myModal" style="margin-bottom: 20px;"><div style="color: white">Tambah</div><span><h2><i class="fas fa-plus" style="color: white"></i></h2></span></button>&nbsp;
  <div class="table table-responsive">
    <table class="table table-striped">
      <tr class="table-active">

        <th>Nama Guru</th>
        <th>Alamat</th>
        <th>Jabatan</th>
        <th>Mata Pelajaran Diampu</th>
        <th>Aksi</th>
      </tr>
      <?php $i=1; ?>
      <?php foreach ($quer as $key => $value): ?>
        <tr>

          <td>
            <?php echo $value->nama_guru ?>
          </td>
          <td>
            <?php echo $value->alamat ?>
          </td>
          <td>
            <?php echo $value->jabatan ?>
          </td>
          <td>
            <?php echo $value->mapel ?>
          </td>
          <td><button class="btn btn-primary" onclick="gurudit(<?php echo $value->nip ?>);">Edit</button>&nbsp;<button class="btn btn-danger" onclick="gurudel(<?php echo $value->nip ?>);">Hapus</button></td>
        </tr>
      <?php endforeach ?>
    </table>
  </div>
</div>

<div class="row" style="padding-left: 18px">
    <div class="col-12">
      <?php echo $this->pagination->create_links(); ?>
    </div>
  </div>

<form id="formguru">
  <div class="modal fade" tabindex="-1" role="dialog" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Tambah Guru</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                Nama Guru
          <input type="text" class="form-control" name="nguru" id="nguru">
          <hr>
        NIP
          <input type="number" class="form-control" name="nip" id="nip">
          <div class="form-group">
          <hr>
        Alamat
          <input type="text" class="form-control" name="alamat" id="alamat">
        <hr>
        Jabatan
        <span id="errorkat"></span>
        <select name="jabatan" id="select" class="form-control"> 
          <option id="null" value="">Pilih Jabatan</option>
          <?php foreach ($m as $key => $v): ?>
            <option id="<?php echo $v->id_jabatan ?>" value="<?php echo $v->id_jabatan?>">
              <?php echo $v->jabatan ?>
            </option>
          <?php endforeach ?>
        </select>
      </div>
        <div class="form-group">
        <hr>
        Mata Pelajaran Diampu
        <span id="errorkat"></span>
        <select name="mapel" id="select2" class="form-control"> 
          <option id="null" value="">Pilih Mata Pelajaran</option>
          <?php foreach ($k as $key => $v): ?>
            <option id="<?php echo $v->id_mapel ?>" value="<?php echo $v->id_mapel ?>">
              <?php echo $v->mapel ?>
            </option>
          <?php endforeach ?>
        </select>
        <hr>
        <label>Foto</label><br>
        <input type="file" name="file" >
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" onclick="subGuru()" class="btn btn-primary">Tambah</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>
</form>


<form id="guruform">
  <div class="modal fade" id="guruD" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Guru</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="pageeditguru">
          
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" onclick="subGuru2()" class="btn btn-primary">Simpan</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>
</form>



<script type="text/javascript">
  console.log('done');
  function subGuru(){
    $('#formguru').submit();
  }

  function subGuru2(){
    $('#guruform').submit();
  }

  function gurudit(id){
    $('#pageeditguru').load('<?php echo base_url('Custom/gurudit/') ?>' + id);
    $('#guruD').modal('show');
  }

  $('#formguru').submit(function(e){    
    console.log('masuk');
    e.preventDefault(); 
    var s1 = $('#select').val();
    var s2 = $('#select2').val();
    var s3 = $('#nguru1').val();
    var s4 = $('#alamat1').val();
    console.log(s1);
    console.log(s2);
    if (s1!='' && s2!='' && s3!='' && s4!='') {
      $.ajax({
        url: '<?php echo base_url('Custom/guruSave') ?>',
        type: 'POST',
        data: new FormData(this),
        processData:false,
        contentType:false,
        error: function(){
          Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
              console.log(data);
        },
        success: function(data){
          if (data==1) {
            Swal.fire('Berhasil !!','Guru berhasi ditambah !!', 'success');
          $("#page").load('<?php echo base_url('Custom/guruShow') ?>');
          $('.modal-backdrop').remove();
          // $('#myModal').hide();
          }
          else{
            Swal.fire('Kesalahan !!','Format fle tidak didukung !!', "error");
          }
        }
      });
      
    }
    else if(s1=='' && s2==''){
      Swal.fire('Kesalahan !!', 'Tolong pilih jabatan dan mata pelajaran  !!', 'error');
    }
    else{
      Swal.fire('Kesalahan !!', 'Tolong isi semua form input !!', 'error');
    }
  })


  $('#guruform').submit(function(e){    
    console.log('masuk');
    e.preventDefault(); 
    
    var s1 = $('#select3').val();
    var s2 = $('#select4').val();
    var s3 = $('#nguru1').val();
    var s4 = $('#alamat1').val();
    if (s1!='' && s2!='' && s3!='' && s4!='') {
      $.ajax({
        url: '<?php echo base_url('Custom/guruSave2 ') ?>',
        type: 'POST',
        data: new FormData(this),
        processData:false,
        contentType:false,
        error: function(){
          Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
              console.log(data);
        },
        success: function(data){
          if (data==1) {
            Swal.fire('Berhasil !!','Guru berhasi diedit !!', 'success');
          location.reload();
          // $('#myModal').hide();
          }
          else{
            Swal.fire('Kesalahan !!','Format fle tidak didukung !!', "error");
          }
        }
      });
      
    }
    else if(s1=='' && s2==''){
      Swal.fire('Kesalahan !!', 'Tolong pilih jabatan dan mata pelajaran  !!', 'error');
    }
    else{
      Swal.fire('Kesalahan !!', 'Tolong isi semua form input !!', 'error');
    }
  })

  var numberdude;
  $("span.page-link a").click(function(e) {
      e.preventDefault();
    var href = $(this).attr("href");
    numberdude = href;
    console.log(href);
    $("#page").load('<?php echo base_url('Custom/guruShow')?>' + href);

  });
</script>

