<div class="container-fluid menupage" style="margin-top: 20px;">
<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">
				<th>Judul</th>
				<th>Author</th>
				<th>Tanggal</th>
				<th>Tipe Publikasi</th>
				<th>Kategori</th>
				<th colspan="2">Aksi</th>
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
					<td><button class="btn btn-danger" onclick="Gdel(<?php echo $value->id_post ?>);">Hapus</button></td>
					<td><button class="btn btn-warning" onclick="Gedit(<?php echo $value->id_post ?>);">Edit</button></td>
				</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>

	<div class="row" style="padding-left: 18px">
		<div class="col-12">
			<?php echo $this->pagination->create_links(); ?>
		</div>
	</div>

	<script type="text/javascript">
		
	var numberdude;
	$("span.page-link a").click(function(e) {
    	e.preventDefault();
		var href = $(this).attr("href");
		numberdude = href;
		console.log(href);
		$("#page").load('<?php echo base_url('Custom/quer')?>' + href);

	});
	</script>