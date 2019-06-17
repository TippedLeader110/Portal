
		<div class="list-group static">
								<a href="#" class="static list-group-item list-group-item-action flex-column align-items-start active" style="margin-top: 10px; margin-bottom: 10px;">
								    <div class="d-flex static w-100 justify-content-between">
									      <h5 class="mb-1 static">Menu Konten yang Tersedia</h5>
								    </div>
								</a>
							</div>	
<?php foreach ($konten as $key => $kv): ?>
								<span id="<?php echo $kv->id_fitur ?>" class="move list-group-item list-group-item-action flex-column align-items-start justify-content-between"  style="cursor: move;"><?php echo $kv->label ?></span>
<?php endforeach ?>