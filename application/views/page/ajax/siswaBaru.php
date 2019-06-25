<div class="row" style="margin-top: 50px;">
        <div class="col-12">
          <div class="table-responsive">
            <table class="table table-primary">
              <tr>
                <th>NIS</th><th>Nama</th><th>Jenis Kelamin</th><th>Tahun Masuk</th><th>Sekolah Asal</th><th>Aksi</th>
              </tr>
              <?php foreach ($siswa as $key => $sval): ?>
                <tr>
                  <td><?php echo $sval->nis ?></td>
                  <td><?php echo $sval->nama_siswa ?></td>
                  <td><?php echo $sval->jenis_kel ?></td>
                  <td><?php echo $sval->thn_ajaran ?></td>
                  <td><?php echo $sval->sekolah_asal ?></td>
                  <td><button class="btn btn-outline-primary">Info Lebih</button></td>
                </tr>
              <?php endforeach ?>
            </table>
          </div>
        </div>
      </div>