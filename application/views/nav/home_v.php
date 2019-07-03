<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg  navmod  navbar-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse  navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav">
    	<li class="nav-item nav-item-c ">
        <a class="nav-link cl header" href="<?php echo base_url() ?>" style="">Home</a>
      </li>
    	<?php foreach ($datanav as $key => $v): ?>
	    <li class="nav-item nav-item-c">
        <a class="nav-link cl" href="<?php echo $v->link ?>" style=""><?php echo $v->label; ?><span class="sr-only">(current)</span></a>
      	</li>
    	<?php endforeach ?>
      
    </ul>
  </div>
  <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <?php if ($this->session->userdata('status') != "login"): ?>
              <li class="nav-item nav-item-c mr-auto">
              <a class="nav-link cl" href="<?php echo base_url('login') ?>" style="">Login <i class="fas fa-sign-in-alt"></i></a>
            </li>
            <?php endif ?>
            <?php if ($this->session->userdata('status') == "login"): ?>
              <li class="nav-item nav-item-c mr-auto">
              <a class="nav-link cl" href="<?php echo base_url('Custom') ?>" style="">Admin <i class="fas fa-columns"></i></a>
            </li>
            <?php endif ?>
          <li class="nav-item nav-item-c mr-auto" style="margin-left: 0px;width: 40%;margin-right: 10px;">
              <a data-toggle="collapse" class="nav-link cl" href="#search" style=""><i class="fas fa-search"></i></a>
            </li>
        </ul>
    </div>
</nav>
<div  id="search" class="collapse float-right" style="position: relative;margin-top: 10px;width: 400px;margin-bottom: -30px;" >
    <div class="form-group">
      <input type="text" name="cari" id="cari" class="form-control" placeholder="Cari Artikel">
    </div>
  </div>
<script type="text/javascript">
	 $('#cari').keypress(function (e) {
  if (e.which == 13) {
    window.location.href="<?php echo base_url('Artikel/Cari/') ?>"+ $('#cari').val();
  }
    });
</script>