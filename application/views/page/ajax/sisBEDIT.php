<?php foreach ($siswaBEDIT as $key => $sbdt): ?>
	
<?php endforeach ?>
<div class="row">
				<div class="col-12">
					<center><h1>Verifikasi Data</h1></center>
					<center>Tolong cek data kembali dengan benar</center>
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="container">
						<h4>Data Pribadi</h4>
						<hr>
						<table>
							<tr>
								<td>Nama</td><td>&nbsp;:&nbsp;<span id="vernama"></span></td>
							</tr>
							<tr>
								<td>Jenis Kelamin</td><td>&nbsp;:&nbsp;<span id="verkel"></span></td>
							</tr>
							<tr>
								<td>Alamat</td><td>&nbsp;:&nbsp;<span id="veralamat"></span></td>
							</tr>
							<tr>
								<td>Tanggal Lahir</td><td>&nbsp;:&nbsp;<span id="vertanggal"></span></td>
							</tr>
							<tr>
								<td>Agama</td><td>&nbsp;:&nbsp;<span id="veragama"></span></td>
							</tr>
						</table>
						<br>
						<h4>Data Asal Sekolah</h4>
						<hr>
						<table>
							<tr>
							<td>Sekolah Asal</td><td>&nbsp;:&nbsp;<span id="versekolah"></span></td>
						</tr>
						<tr>
							<td>Alamat Sekolah</td><td>&nbsp;:&nbsp;<span id="veralamatsekolah"></span></td>
						</tr>
						<tr>
							<td>Tahun Lulus</td><td>&nbsp;:&nbsp;<span id="vertahunlulu"></span></td>
						</tr>
						</table>
					</div>
				</div>
				<div class="col-6">
					<table>
					<h4>Data Orang Tua/Wali</h4>
					<hr>
					<tr>
						<td>Nama Ayah</td><td>&nbsp;:&nbsp;<span id="vernamaayah"></span></td>
					</tr>
					<tr>
						<td>Pendidikan Ayah</td><td>&nbsp;:&nbsp;<span id="verpendayah"></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Ayah</td><td>&nbsp;:&nbsp;<span id="verperayah"></span></td>
					</tr>
					<tr>
						<td>Nama Ibu</td><td>&nbsp;:&nbsp;<span id="vernamaibu"></span></td>
					</tr>
					<tr>
						<td>Pendidikan Ibu</td><td>&nbsp;:&nbsp;<span id="verpendibu"></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Ibu</td><td>&nbsp;:&nbsp;<span id="verperibu"></span></td>
					</tr>
					<tr>
						<td>Alamat Orang Tua</td><td>&nbsp;:&nbsp;<span id="veralamatortu"></span></td>
					</tr>
					<tr>
						<td>Nama Wali</td><td>&nbsp;:&nbsp;<span id="vernamawali"></span></td>
					</tr>
					<tr>
						<td>Pendidikan Wali</td><td>&nbsp;:&nbsp;<span id="verpendwali"></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Wali</td><td>&nbsp;:&nbsp;<span id="verperwali"></span></td>
					</tr>
					<tr>
						<td>Alamat Wali</td><td>&nbsp;:&nbsp;<span id="veralamatwali"></span></td>
					</tr>
					</table>
					<br>
					Saya yakin sudah benar !! <input onclick="EnableSubmit(this)" type="checkbox" name="" >
					<button id="cekcek" class="btn btn-outline-primary" type="submit" onclick="kirim();">Kirim</button>
				</div>
				
			</div>
		</div>
</div>