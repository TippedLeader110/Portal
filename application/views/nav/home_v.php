<nav class="navbar navbar-expand-lg  navmod  navbar-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse  navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    	<li class="nav-item nav-item-c mr-auto">
        <a class="nav-link cl header" href="<?php echo base_url() ?>" style="">Home</a>
      </li>
    	<?php foreach ($datanav as $key => $v): ?>
	    <li class="nav-item nav-item-c">
        <a class="nav-link cl" href="<?php echo $v->link ?>" style=""><?php echo $v->label; ?><span class="sr-only">(current)</span></a>
      	</li>
    	<?php endforeach ?>
      <li class="nav-item nav-item-c mr-auto">
        <a class="nav-link cl" href="<?php echo base_url('login') ?>" style="">Login</a>
      </li>
    </ul>
  </div>
</nav>
<script type="text/javascript">
	
</script>