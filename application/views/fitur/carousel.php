<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <?php $a=1; ?>
    <?php foreach ($carousel as $key => $v): ?>
      
      <?php if ($a==1): ?>
        <div class="carousel-item active">
          <img class=" w-100 img-fluid" src="<?php echo base_url('source/gambar/galery/'); echo $v->link; ?>" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
            <p><?php echo $v->deskripsi ?></p>
          </div>
        </div>
      <?php endif ?>
      <?php if ($a!=1): ?>
        <div class="carousel-item ">
          <img class=" w-100 img-fluid" src="<?php echo base_url('source/gambar/galery/'); echo $v->link; ?>" alt="First slide">
          <div class="carousel-caption d-none d-md-block">
            <p><?php echo $v->deskripsi ?></p>
          </div>
        </div>  
      <?php endif ?>

      <?php $a++; ?>
    <?php endforeach ?>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

