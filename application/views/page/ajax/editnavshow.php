<?php foreach ($res as $key => $v): ?>
	
<?php endforeach ?>

<table class="table table-borderless">
	<tr>
		<td>
			<h3 class="">Label Navigasi</h3><input type="text" class="form-control" value="<?php echo $v->label ?>" name="label">
		</td>
		<td>
			<h3 class="">Tipe Navigasi</h3>
			<select class="custom-select">
				<?php if ($v->tipe==item): ?>
				<option>Navigasi Item</option>
				<option>Navigasi Dropdown</option>
				<?php endif ?>
				<?php if ($v->tipe==drop): ?>
				<option>Navigasi Dropdown</option>
				<option>Navigasi Item</option>
				<?php endif ?>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<center><h3>Link Navigasi</h3></center>
			<center><button class="btn btn-outline-primary">Pilih Link</button></center>

		</td>
	</tr>
</table>

