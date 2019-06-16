<div class="container-fluid menupage" >
	<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">
				<th>Judul</th>
				<th>Author</th>
				<th>Tanggal</th>
				<th>Tipe Publikasi</th>
				<th>Kategori</th>
				<th>Aksi</th>
			</tr>
			<?php foreach ($quer as $key => $value): ?>
				<tr>
					<td>
						<?php echo $value->judul ?>
					</td>
					<td>
						<?php echo $value->nama ?>
					</td>
					<td>
						<?php echo $value->tanggal ?>
					</td>
					<td>
						<?php echo $value->status ?>
					</td>
					<td>
						<?php echo $value->nama_kategori; ?>
					</td>
					<td><button class="btn btn-danger" onclick="Gdel(<?php echo $value->id_post ?>);">Hapus</button></td>s
				</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>

<script type="text/javascript">
function Gdel(ab) {
    Swal.fire({
    	title: 'Hapus Post',
    	text: 'Apakah anda ingin menghapus Post ini?',
    	type: "question",
		showCancelButton: true,
		confirmButtonText: 'Ya, Hapus',
		cancelButtonText: 'Batal',
		cancelButtonColor: 'red',
		showLoaderOnConfirm: true
    }).then(result => {
  	if (result.value) {
  		// alert(ab + " " + aa);
		$.ajax({
        	url: '<?php echo base_url('Custom/delPost') ?>',
            type: 'POST',
            data: {id: ab,},
            error: function() {
           		// alert('Something is wrong');
           		Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");
           	},
           	success: function() {
                Swal.fire({
                 	title: 'Sukses',
                 	text: 'Post berhasil dihapus !!',
                 	type: "success",
                 	timer: 3000
                 });
                show();
           }
        });
  	}
  	else{
		Swal.fire('Kesalahan !!','Post tidak jadi dihapus !!', "error");
	}
	})
}