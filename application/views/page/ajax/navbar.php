  
			<?php foreach ($navbar as $key => $v): ?>
				<li data-id="<?php echo $v->id_sub ?>" ondblclick="getDrop('<?php echo $v->id_sub ?>');" id="list"><?php echo $v->label; ?><span></span></li>
			<?php endforeach ?>
