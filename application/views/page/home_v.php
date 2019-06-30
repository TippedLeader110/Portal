<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<style type="text/css">
  
  .paral { 
  /* The image used */
  /*background-image: url("../img/back.jpg");*/

  /* Set a specific height */
    min-height: 500px; 

  /* Create the paral scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
  @media only screen and (max-device-width: 1366px) {
  .paral {
    /*background-attachment: scroll;*/
  }
}

</style>
  <div class="containerss  ">
<div class="row">
  <div class="col-12">
    <div style="border-style: solid;border-color: black;border-width: 2px">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <?php $i=1 ?>
        <?php foreach ($img as $key => $val): ?>
        <?php if ($i==1): ?>
          <div class="carousel-item active">
          <img class="d-block w-100" src="<?php echo base_url('source/gambar/galery/');echo $val->link; ?>" alt="<?php echo $val->deskripsi ?>">
            <div style="position:absolute;top:0;left:0;height:0;bottom:0;width:100%;height:100%;background:rgba(0,0,0,0.1);"></div>
          <div class="carousel-caption d-none d-md-block">
            <h5><?php echo $val->deskripsi ?></h5>
          </div>
        </div>
        <?php endif ?>
        <?php if ($i!=1): ?>
        <div class="carousel-item">
          <img class="d-block w-100" src="<?php echo base_url('source/gambar/galery/');echo $val->link; ?>" alt="<?php echo $val->deskripsi ?>">
          <div style="position:absolute;top:0;left:0;height:0;bottom:0;width:100%;height:100%;background:rgba(0,0,0,0.1);"></div>
        </div>
        <?php endif ?>
        <?php $i++; ?>
        <?php if ($i==4): ?>
          <?php break; ?>
        <?php endif ?>
        <?php endforeach ?>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    </div>
  </div>
</div>
    
</div>
<?php foreach ($id as $key => $idv): ?>
  
<?php endforeach ?>
<?php foreach ($rand as $key => $vrand): ?>
  
<?php endforeach ?>
<div class="row" style="margin-top: 10px;"> 
  <div class="container">
    <div class="col-12">
      <hr>
      <center><h2>Selamat Datang Di Website Sekolah</h2></center>  
      <center><h2><?php echo $idv->nama_sekolah ?></h2></center>
      <center><?php echo $idv->sejarah ?></center>
      <center><a data-toggle="collapse" data-target="#demo" href="javascript:void(0);"><h4><span><i class="fas fa-arrow-down"></i></span><span style="text-decoration: none;">Visi Misi</span> <span><i class="fas fa-arrow-down"></i></span></h4></a></center>
      <hr>
    </div>
  </div>
</div>
<div id="demo" class="collapse">
<div class="row" style="background: #335C81;margin-top: 40px;padding-bottom: 50px;">
  <div class="col-12">
    <div class="container" style="padding-top: 50px;">
      <center><h3 style="color: white">Visi Sekolah</h3></center>
      <div class="white" style="color: white"><?php echo $idv->visi ?></div>
    </div>
  </div>
  <div class="col-12">
    <div class="container" style="padding-top: 50px;">
      <center><h3 style="color: white">Misi Sekolah</h3></center>
      <div class="white" style="color: white"><?php echo $idv->misi ?></div>
    </div>
  </div>
  <div class="col-12">
    <?php if ($idv->penerimaan==1): ?>
      <center><a href="<?php echo base_url('User') ?>"><h3 style="color: white">Daftar Sekarang</h3></a></button></center>
    <?php endif ?>
  </div>
</div>
</div>
<div class="row">
  <div class="col-12">
    <div class="container" style="margin-top: 50px;margin-bottom: 50px">
      <hr>
      <center><h2>Artikel Sekolah</h2></center>
      <hr>
    </div>
  </div>
</div>
<div class="row" style="background: $">
  <?php foreach ($post as $key => $valp): ?>
    <div class="col-3"><a href="<?php echo base_url('Artikel/sekolah/'); echo $valp->id_post; ?>">
    
    <div class="container" style="border-style: solid;border-width: 1px;border-color: black;padding: 0px 0px 0px 0px;background: #335C81">
    <div class="container" style="height: 200px;background-image: url(<?php echo base_url('source/gambar/post/'); echo $valp->cover; ?>);background-position: center center">
    </div>
      <center><span style="overflow: hidden;max-width: 0px;color: white"><?php echo $valp->judul ?></a></span></center>
    </div>

  </div>
</div>
  <?php endforeach ?>
<!-- <div class="row">
  <div class="col-12">
    <div class="container" style="margin-top: 50px;margin-bottom: 50px">
      <hr>
      <center><h2>Galeri Sekolah</h2></center>
      <hr>
    </div>
  </div>
</div>
<div class="row paral" style="background-image: url(<?php echo base_url('source/gambar/galery/'); echo $vrand->link; ?>);height: 320px">
  <div class="col-12" >
    <div class="container">
      <hr>
      <center><h2 style="color: white">Jelajah Galeri Sekolah</h2></center>
      <hr>
    </div>
  </div>
</div> -->
