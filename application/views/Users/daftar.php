<?php foreach ($id as $key => $setval): ?>
	
<?php endforeach ?>

<div class="row">
	<div class="container-fluid mod" style="width: 80%;margin-top: 50px;background: white;padding: 20px 10px 20px 10px">
		<center><h2>Selamat Datang di zona pendaftaran Online</h2></center>
		<center><h2><?php echo $setval->nama_sekolah ?></h2></center>
		<hr>
		<div class="container">
			<h4>Syarat Pendaftaran</h4>
			<ol>
				<li>Telah dinyatakan lulus dan memiliki Ijazah/SKL dari SMP/ MTs/ SMPLB/ Paket B;
				</li>
				<li>Berusia paling tinggi 21 (dua puluh satu) ( awal Tahun Pelajaran <?php echo $setval->tahun_penerimaan-2 ?>/<?php echo $setval->tahun_penerimaan-1 ?>).</li>
			</ol>
			<h4>Pemberkasan</h4>
			<ol>
				<li>Foto Copy Ijazah/SHUN/Surat Keterangan Lulus dari sekolah asal dan dilegalisir sebanyak 1 lembar, serta menyerahkan aslinya pada sekolah tempat mendaftar ( dijadwal yang di tentukan ).</li>
				<li>
					Pas foto berwarna ukuran 3 x 4 cm sebanyak 2 lembar.
				</li>
			</ol>
			<h4>Cara Mendaftar</h4>
			<ol>
				<li>Daftar akun pada halaman ini <a href="daftar">link</a></li>
				<li>
					Setelah mendaftar akun , peserta didik diharapkan login lalu menambah data pada form yang ditampilkan
				</li>
				<li>Setelah mengisi semua form pendaftaran , peserta didik baru dapat menunggu hasil seleksi di halaman utama pada profile pada tanggal yang di tentukan</li>
			</ol>

		</div>
	</div>
</div>