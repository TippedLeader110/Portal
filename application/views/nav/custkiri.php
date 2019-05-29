<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/source/css/Custom.css">
<div id="mySidenav" class="sidenav bg-dark">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a class="<?php if ($navact==1): ?>
  	actnav
  <?php endif ?>" href="#">Identitas Sekolah</a>
  <a class="<?php if ($navact==2): ?>
  	actnav
  <?php endif ?>" href="#">Services</a>
  <a class="<?php if ($navact==3): ?>
  	actnav
  <?php endif ?>" href="#">Clients</a>
  <a class="<?php if ($navact==4): ?>
  	actnav
  <?php endif ?>" href="<?php echo base_url() ?>Custom/warna">Warna</a>
</div>