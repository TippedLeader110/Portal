
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
        </ul>
    </div>
</nav>
<script type="text/javascript">
	
</script>