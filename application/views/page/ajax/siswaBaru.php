<div class="row" style="margin-top: 50px;">
        <div class="col-12">
          <div class="table-responsive">
            <table class="table table-striped">
              <tr>
                <th>NIS</th><th>Nama</th><th>Status</th><th>Tahun Masuk</th><th>Sekolah Asal</th><th>Aksi</th>
              </tr>
              <?php foreach ($siswa as $key => $sval): ?>
                <tr>
                  <td><?php echo $sval->nis ?></td>
                  <td><?php echo $sval->nama_siswa ?></td>
                  <?php if ($sval->status=='pending'): ?>
                    <td>Belum Verifikasi</td>
                  <?php endif ?>
                  <?php if ($sval->status=='seleksi'): ?>
                    <td>Sedang Seleksi</td>
                  <?php endif ?>
                  <td><?php echo $sval->thn_ajaran ?></td>
                  <td><?php echo $sval->sekolah_asal ?></td>
                  <td><button class="btn btn-outline-primary" value="<?php echo $sval->nama_siswa ?>" onclick="infolb(<?php echo $sval->nis ?>)">Info Lebih</button><button class="btn btn-outline-danger" value="<?php echo $sval->nama_siswa ?>" onclick="hps(<?php echo $sval->nis ?>)">Hapus</button></td>
                </tr>
              <?php endforeach ?>
            </table>
          </div>
        </div>
      </div>
      <div class="modal fade" id="infoB" role="dialog">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Informasi Detail Siswa/i<span id="nismodal"></span></h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div id="modal-body">
              
            </div>
        </div>
        <div class="modal-footer">
            <div id="but"></div><button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        </div>
    </div>
    </div>
    </div>


      <script type="text/javascript">
        function infolb(nis){
          $('#modal-body').load('<?php echo base_url('Custom/siswaBEDIT/') ?>' + nis);
          $('#infoB').modal('show');
        }

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