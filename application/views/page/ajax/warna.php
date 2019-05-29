<div class="row" style="padding-left: 18px">
		<?php foreach ($warna as $key => $value): ?>
		<div class="col-2" style="height: 200px;margin: 15px 15px 15px 15px;border-style: solid;border-color: black;border-width: 1px;">
			<div class="row" style="height: 170px;background: <?php echo $value->warna_tema ?>">
				<a href="javascript:void(0);" onclick="delWarna('<?php echo $value->id_tema ?>','<?php echo $value->label ?>');"><i class="fas fa-times"></i></a>
				<div class="col-12">
					<center><h5 style="color: white">Kode : <?php echo $value->warna_tema ?></h5></center>
				</div>
			</div>
			<div class="row" style="height: 30px;">
				<div class="col-12">
					<center><h4><?php echo $value->label ?></h4></center>
				</div>
			</div>
		</div>
		<?php endforeach ?>
	</div>