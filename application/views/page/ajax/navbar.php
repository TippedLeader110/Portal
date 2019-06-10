			<?php if (empty($navbar)): ?>
				<span class="alert-warning">Navigasi ini tidak memiliki Dropdown (tipe item)</span>
			<?php endif ?>
			<?php if (!empty($navbar)): ?>
				<button class="btn btn-outline-dark">Simpan Posisi</button>
			<?php endif ?>
			<?php foreach ($navbar as $key => $v): ?>
				<li id="<?php echo $v->id_sub ?>" ><span style="font-size: 20px;"><?php echo $v->label; ?></span>&nbsp;<a onclick="editDrop(<?php echo $v->id_sub ?>);" href="javascript:void(0);" ><i class="fas fa-edit"  style="color: black"></i></a></li>
			<?php endforeach ?>

