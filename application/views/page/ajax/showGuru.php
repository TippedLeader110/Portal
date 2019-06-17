<div class="container-fluid menupage" >
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
          <input type="text" class="form-control" name="title" id="title">
          <div class="form-group">
          <hr>
        Alamat
          <input type="text" class="form-control" name="title" id="title2">
        <hr>
        Jabatan
        <span id="errorkat"></span>
        <select  id="select" class="form-control"> 
          <option id="null" value="null">Pilih Jabatan</option>
          <?php foreach ($m as $key => $v): ?>
            <option id="<?php echo $v->id_guru ?>" value="<?php echo $v->id_guru ?>">
              <?php echo $v->nama_guru ?>
            </option>
          <?php endforeach ?>
        </select>
        <div class="form-group">
        <hr>
        Mata Pelajaran Diampu
        <span id="errorkat"></span>
        <select  id="select2" class="form-control"> 
          <option id="null" value="null">Pilih Mata Pelajaran</option>
          <?php foreach ($m as $key => $v): ?>
            <option id="<?php echo $v->id_kategori ?>" value="<?php echo $v->id_kategori ?>">
              <?php echo $v->nama_kategori ?>
            </option>
          <?php endforeach ?>
        </select>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <center><button type="button"onclick="tambahguru();" class="btn btn-primary" data-dismiss="modal">Tambah</button></center>
        </div>

