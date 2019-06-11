<?php foreach ($res as $key => $v): ?>
	
<?php endforeach ?>

<table class="table table-borderless">
	<tr>
		<td>
			<form method="post" id="labelnav">
			<h3 class="">Label Navigasi</h3><input type="text" class="form-control" id="label" value="<?php echo $v->label ?>" name="label">
		</td>
		<!-- <td>
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
		</td> -->
	</tr>
	<tr>
		<td colspan="2">
			<h3>Link Navigasi</h3><button class="btn btn-outline-primary">Pilih Link</button>
		</td>
	</tr>
	<tr>
		<td onclick="saveNav();" colspan="2"><center><button class="btn btn-primary">Simpan</button></center></td>
	</tr></form>
</table>

<script type="text/javascript">
	function saveNav(){
		alert($('#label').val());
	}
</script>

