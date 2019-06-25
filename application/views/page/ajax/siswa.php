<div class="row" style="margin-top: 50px;">
        <div class="col-12">
          <div class="table-responsive">
            <table class="table table-primary">
              <tr>
                <th>NIS</th><th>Nama</th><th>Jenis Kelamin</th><th>Tahun Ajaran</th><th>Status</th><th>Aksi</th>
              </tr>
              <?php foreach ($siswa1 as $key => $siswaval): ?>
                <tr>
                  <td><?php echo $siswaval->nis ?></td>
                  <td><?php echo $siswaval->nama_siswa ?></td>
                  <td><?php echo $siswaval->jenis_kel ?></td>
                  <td><?php echo $siswaval->thn_ajaran ?></td>
                  <td><?php echo $siswaval->status ?></td>
                  <td><button class="btn btn-outline-primary">Info Lebih</button></td>
                </tr>
              <?php endforeach ?>
            </table>
          </div>
        </div>
      </div>