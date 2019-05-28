<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="height: 80px;">
  <?php if ($home==1): ?>
  <a class="navbar-brand" href="javascript:void(0);" onclick="openNav();"><i class="fas fa-bars"></i></a>
  <?php endif ?>
  <a class="navbar-brand" href="#">Dashboard Admin</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item <?php if ($ac==1): ?>
        active
      <?php endif ?>">
        <a class="nav-link" href="<?php echo base_url() ?>Custom/">Awal</a>
      </li>
      <li class="nav-item <?php if ($ac==2): ?>
        active
      <?php endif ?>">
        <a class="nav-link" href="<?php echo base_url() ?>Custom/EWeb">Edit Tampilan Website</a>
      </li>
      <li class="nav-item <?php if ($ac==3): ?>
        active
      <?php endif ?>">
        <a class="nav-link" href="<?php echo base_url() ?>Custom/KWeb">Kelolah Data Website</a>
      </li>
      <li class="nav-item <?php if ($ac==4): ?>
        active
      <?php endif ?>">
        <a class="nav-link" href="<?php echo base_url() ?>Custom/KUser">Kelolah Pengguna</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>