<div class="container-fluid menupage" >
  <button onclick="tambah();" class="btn btn-success" style="margin-bottom: 20px;"><div style="color: white">Tambah</div><span><h2><i class="fas fa-plus" style="color: white"></i></h2></span></button>&nbsp;
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

