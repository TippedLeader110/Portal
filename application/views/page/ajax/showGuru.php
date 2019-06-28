<div class="container-fluid menupage" style="margin-bottom: 50px;">
  <button class="btn btn-success" data-toggle="modal" data-target="#myModal" style="margin-bottom: 20px;"><div style="color: white">Tambah</div><span><h2><i class="fas fa-plus" style="color: white"></i></h2></span></button>&nbsp;
  <div class="table table-responsive">
    <table class="table table-striped">
      <tr class="table-active">
        <th>
          Nomor
        </th>
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
            <?php echo $i; $i++; ?>
          </td>
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
          <td><button class="btn btn-danger" onclick="gurudel(<?php echo $value->id_guru ?>);">Hapus</button></td>
        </tr>
      <?php endforeach ?>
    </table>
  </div>
</div>

        <form id="formguru">
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Tambah Guru</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <div class="form-group">
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
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <center><button type="button" class="btn btn-primary" name="go" data-dismiss="myModal" onclick="subGuru()" type="submit">Tambah</button></center>
        </div>
        </form>

<script type="text/javascript">
  console.log('done');
  function subGuru(){
    $('#formguru').submit();
  }

  $('#formguru').submit(function(e){    
    console.log('masuk');
    e.preventDefault(); 
    var s1 = $('#select').val();
    var s2 = $('#select2').val();
    var s3 = $('#nguru').val();
    var s4 = $('#alamat').val();
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
        success: function(){
          Swal.fire('Berhasil !!','Guru berhasi ditambah !!', 'success');
          $("#page").load('<?php echo base_url('Custom/guruShow') ?>');
          $('.modal-backdrop').remove();
          // $('#myModal').hide();
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
</script>

