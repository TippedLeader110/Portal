
<?php foreach ($navbar as $key => $v): ?>
						<li <?php if ($v->tipe=='drop'): ?>
							style="background: #706E70"
						<?php endif ?> id="<?php echo $v->id_item ?>" ondblclick="getDrop('<?php echo $v->id_item ?>');" id="list"><?php echo $v->label; ?></li>
<?php endforeach ?>