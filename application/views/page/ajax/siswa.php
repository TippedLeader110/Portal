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
                  <td><button onclick="info(<?php echo $siswaval->nis ?>)" class="btn btn-primary">Info Lebih</button><button class="btn btn-danger" value="<?php echo $siswaval->nama_siswa ?>" onclick="hps(<?php echo $siswaval->nis ?>)">Hapus</button></td>
                </tr>
              <?php endforeach ?>
            </table>
          </div>
        </div>
      </div>

      <script type="text/javascript">
        function hps(id){
          $.ajax({
            url: '<?php echo base_url('Custom/hpssiswa') ?>',
            type: 'post',
            data: {id: id},
            error: function(){
                  Swal.fire({
                            title: 'Kesalahan',
                            text: 'Gagal Hapus !!',
                            type: "error",
                            timer: 3000
                           });  
                },
                success: function(){
                  Swal.fire({
                            title: 'Sukses',
                            text: 'Berhasil Hapus !!',
                            type: "success",
                            timer: 3000
                           });  
                  $('#siswabaru').load('<?php echo base_url('Custom/siswaBaru') ?>').hide().fadeIn('slow');
            }
          })
        
          
        }
      </script>