
<?php foreach ($navbar as $key => $v): ?>
						<li id="<?php echo $v->id_item ?>" ondblclick="getDrop('<?php echo $v->id_item ?>');" id="list"><?php echo $v->label; ?></li>
<?php endforeach ?>