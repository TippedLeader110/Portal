  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>source/css/customNav.css">
	<div class="row">
		<div class="col-12">
			<div class="head" style="margin-left: 0px;">
				Dashboard Admin / Edit Tampilan Sekolah / Pengaturan Posisi Navbar
			</div>
		</div>
	</div>
	<div class="row" style="margin-top: 20px;">
		<div class="col-12" style="">
			<hr>
			<ul class="floatlist" id="navlist">
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</ul>
		</div>
	</div>

	<script type="text/javascript">
		$('#navlist').sortable().disableSelection();

		$( "#navlist" ).data( "ui-sortable" ).floating = true;
	</script>