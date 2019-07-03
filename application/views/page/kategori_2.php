
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
       <h4 class="bold"><?php echo $nkate ?></h4>
     <hr>
  </div>
</div>
<div class="row">
  <?php foreach ($post as $key => $post3): ?>
    <div class="col-4">
            <div class="card mb-4 box-shadow">
                    <a href="<?php echo base_url('Artikel/sekolah/'); echo $post3->id_post; ?>"><img style="width: 100%;max-height: 160px;object-position: center;object-fit: cover;" class="card-img-top" src="<?php echo base_url('source/gambar/post/'); echo $post3->cover ?>" alt="Card image cap">
                    <div class="card-body" style="max-height: 100px;">
                      <div style="width: 300px;height: 50px;overflow: hidden;"><?php echo $post3->judul ?></div>
                        <span style="max-width: 50px;"><?php echo $post3->nama ?></span>&nbsp;<span><?php echo $post3->tanggal ?></span></a>
                </div>
        </div>
    </div>
  <?php endforeach ?>
</div>