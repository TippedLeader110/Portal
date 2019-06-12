
<?php foreach ($navbar as $key => $v): ?>
						<li id="<?php echo $v->id_item ?>" ondblclick="getDrop('<?php echo $v->id_item ?>');" id="list"><?php echo $v->label; ?><a onclick="del(<?php echo $v->id_item ?>);" href="javascript:void(0);">&nbsp;<i class="fas fa-times"></i></a></li>
<?php endforeach ?>