<div class="container-fluid menupage" >
	<div class="table table-responsive">
		<table class="table table-striped">
			<tr class="table-active">
				<th>
					Judul
				</th>
			</tr>
			<?php foreach ($quer as $key => $value): ?>
				<tr>
					<td>
						<?php echo $value->judul ?>
					</td>
				</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>
