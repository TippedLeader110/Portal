<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url('source/css/sekolah.css') ?>">
<?php foreach ($id as $key => $vid): ?>
<?php endforeach ?>
<?php foreach ($post as $key => $vpost): ?>
<?php endforeach ?>
<?php $data['post'] = $post ?>
<div class="row" style="margin-top: 10px;margin-bottom: 10px;">
  <div class="col-12">
    <img class="img2" src="<?php echo base_url('source/gambar/logo/'); echo $vid->logo ?>"><span class="bottomright" style="color: #335C81;font-weight: bolder;font-size: 40px;"><?php echo $vid->nama_sekolah ?></span>

  </div>
</div>
  <div class="row">
  <div class="col-12">
    <?php $this->load->view($vnav) ?>
  </div>
</div>
<div class="row" style="margin-top: 20px;">
  <div class="col-12">
       <center><h2 class="bold" style="font-weight: bolder;">Galery Kami</h2></center>
     <hr>
  </div>
</div>
<div class="row">
  <?php foreach ($post as $key => $post3): ?>
    <div class="col-4">
            <div class="card mb-4 box-shadow">
                    <a data-fancybox="gallery" href="<?php echo base_url('source/gambar/galery/'); echo $post3->link ?>">
                      <div style="height: 150px;">
                        <img style="width: 100%;max-height: 160px;object-position: center;object-fit: fill;" class="card-img-top" src="<?php echo base_url('source/gambar/galery/'); echo $post3->link ?>" alt="Card image cap">
                      </div>
                    <div class="card-body" style="max-height: 100px;">
                      <div style="width: 300px;height: 50px;overflow: hidden;"><?php echo $post3->deskripsi ?></div>
                        </a>
                </div>
        </div>
    </div>
  <?php endforeach ?>
</div>