<div class="container-fluid menupage" >
	<button onclick="tambahmapel();" class="btn btn-success" style="margin-bottom: 20px;"><div style="color: white">Tambah</div><span><h2><i class="fas fa-plus" style="color: white"></i></h2></span></button>&nbsp;
	<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">

				<th>Mata Pelajaran</th>
				<th>Aksi</th>
			</tr>
			<?php foreach ($quer as $key => $value): ?>
				<tr>
					<td>
						<?php echo $value->mapel ?>
					</td>
					<td><button class="btn btn-danger" onclick="delmapel(<?php echo $value->id_mapel ?>);">Hapus</button></td>
				</tr>
			<?php endforeach ?>
		</table>
	</div>
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
		$("#page").load('<?php echo base_url('Custom/smapel')?>' + href);

	});
	</script>

