					<option value="null">-Pilih Navbar-</option>
					<?php foreach ($nav as $key => $v): ?>
						<option value="<?php echo $v->id_item ?>"><?php echo $v->label ?></option>
					<?php endforeach ?>