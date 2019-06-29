<?php foreach ($siswaBEDIT as $key => $sbdt): ?>
	
<?php endforeach ?>
			<div class="row">
				<div class="col-6">
					<div class="container">
						<h4>Data Pribadi</h4>
						<hr>
						<table>
							<tr>
								<td>Nama</td><td>&nbsp;:&nbsp;<span id="vernama"><?php echo $sbdt->nama_siswa ?></span></td>
							</tr>
							<tr>
								<td>Jenis Kelamin</td><td>&nbsp;:&nbsp;<span id="verkel"><?php echo $sbdt->jenis_kel ?></span></td>
							</tr>
							<tr>
								<td>Alamat</td><td>&nbsp;:&nbsp;<span id="veralamat"><?php echo $sbdt->alamat ?></span></td>
							</tr>
							<tr>
								<td>Tanggal Lahir</td><td>&nbsp;:&nbsp;<span id="vertanggal"><?php echo $sbdt->tgl_lahir ?></span></td>
							</tr>
							<tr>
								<td>Agama</td><td>&nbsp;:&nbsp;<span id="veragama"><?php echo $sbdt->agama ?></span></td>
							</tr>
						</table>
						<br>
						<h4>Data Asal Sekolah</h4>
						<hr>
						<table>
							<tr>
							<td>Sekolah Asal</td><td>&nbsp;:&nbsp;<span id="versekolah"><?php echo $sbdt->sekolah_asal ?></span></td>
						</tr>
						<tr>
							<td>Alamat Sekolah</td><td>&nbsp;:&nbsp;<span id="veralamatsekolah"><?php echo $sbdt->alamat_sekolah ?></span></td>
						</tr>
						<tr>
							<td>Tahun Lulus</td><td>&nbsp;:&nbsp;<span id="vertahunlulu"><?php echo $sbdt->thn_ajaran ?></span></td>
						</tr>
						</table>
					</div>
				</div>
				<div class="col-6">
					<table>
					<h4>Data Orang Tua/Wali</h4>
					<hr>
					<tr>
						<td>Nama Ayah</td><td>&nbsp;:&nbsp;<span id="vernamaayah"><?php echo $sbdt->nama_ayah ?></span></td>
					</tr>
					<tr>
						<td>Pendidikan Ayah</td><td>&nbsp;:&nbsp;<span id="verpendayah"><?php echo $sbdt->pend_akhir_ayah ?></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Ayah</td><td>&nbsp;:&nbsp;<span id="verperayah"><?php echo $sbdt->pekerjaan_ayah ?></span></td>
					</tr>
					<tr>
						<td>Nama Ibu</td><td>&nbsp;:&nbsp;<span id="vernamaibu"><?php echo $sbdt->nama_ibu ?></span></td>
					</tr>
					<tr>
						<td>Pendidikan Ibu</td><td>&nbsp;:&nbsp;<span id="verpendibu"><?php echo $sbdt->pend_akhir_ibu ?></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Ibu</td><td>&nbsp;:&nbsp;<span id="verperibu"><?php echo $sbdt->pekerjaan_ibu ?></span></td>
					</tr>
					<tr>
						<td>Alamat Orang Tua</td><td>&nbsp;:&nbsp;<span id="veralamatortu"><?php echo $sbdt->alamat_ortu ?></span></td>
					</tr>
					<tr>
						<td>Nama Wali</td><td>&nbsp;:&nbsp;<span id="vernamawali"><?php echo $sbdt->nama_wali ?></span></td>
					</tr>
					<tr>
						<td>Pendidikan Wali</td><td>&nbsp;:&nbsp;<span id="verpendwali"><?php echo $sbdt->pend_akhir_wali ?></span></td>
					</tr>
					<tr>
						<td>Pekerjaan Wali</td><td>&nbsp;:&nbsp;<span id="verperwali"><?php echo $sbdt->pekerjaan_wali ?></span></td>
					</tr>
					<tr>
						<td>Alamat Wali</td><td>&nbsp;:&nbsp;<span id="veralamatwali"><?php echo $sbdt->alamat_wali ?></span></td>
					</tr>
					</table>
					<br>
				</div>
				
			</div>
		</div>
</div>