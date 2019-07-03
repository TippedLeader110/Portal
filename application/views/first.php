<?php if (sizeof($post)==1): ?>
    <div class="col-12" style="">
      <div class="img-wrapper">
        <div class="img-overlay"></div>
        <img style="width: 100%;height: 400px;object-position: center;object-fit: cover;" src="<?php echo base_url('Source/gambar/post/'); echo $vpost->cover ?>">
        <div style="position: absolute;top: 80%;left: 50%;transform: translate(-50%, -50%);"><h4 style="color: white"><?php echo $vpost->judul ?></h4></div>
      </div>
    </div>  
  <?php endif ?>
  <?php if (sizeof($post)==2): ?>
    <?php foreach ($post as $key => $vpost2): ?>
      <div class="col-6">
        <div class="img-wrapper">
        <div class="img-overlay"></div>
        <img style="width: 100%;height: 400px;object-position: center;object-fit: cover;" src="<?php echo base_url('Source/gambar/post/'); echo $vpost2->cover ?>">
        <div style="position: absolute;top: 80%;left: 50%;transform: translate(-50%, -50%);"><h4 style="color: white"><?php echo $vpost2->judul ?></h4></div>
      </div>
      </div>
    <?php endforeach ?>
  <?php endif ?>
  <?php if (sizeof($post)==3 || sizeof($post)>3): ?>
    <?php $ulang=1; ?>
      <div class="col-6" style="padding: 0px 0px 0px 10px">
        <a href="<?php echo base_url('Artikel/sekolah/'); echo $post[0]->id_post ?>"><div class="img-wrapper">
        <div class="img-overlay"></div>
        <img style="width: 100%;height: 400px;object-position: center;object-fit: cover;" src="<?php echo base_url('Source/gambar/post/'); echo $post[0]->cover ?>">
        <div class="bottom-left"><h4 style="color: white"><?php echo $post[0]->judul ?></h4></div></a>
      </div>
      </div>
      <div class="col-6" style="padding: 0px 0px 0px 0px">
        <div class="col-12">
        <a href="<?php echo base_url('Artikel/sekolah/'); echo $post[2]->id_post ?>"><div class="img-wrapper">
        <div class="img-overlay"></div>
        <img style="width: 100%;height: 200px;object-position: center;object-fit: cover;" src="<?php echo base_url('Source/gambar/post/'); echo $post[2]->cover ?>">
        <div class="bottom-left"><h4 style="color: white"><?php echo $post[2]->judul ?></h4></div></a>
      </div>
      </div>
      <div class="col-12">
        <a href="<?php echo base_url('Artikel/sekolah/'); echo $post[1]->id_post ?>"><div class="img-wrapper">
        <div class="img-overlay"></div>
        <img style="width: 100%;height: 200px;object-position: center;object-fit: cover;" src="<?php echo base_url('Source/gambar/post/'); echo $post[1]->cover ?>">
        <div class="bottom-left"><h4 style="color: white"><?php echo $post[1]->judul ?></h4></div></a>
      </div>
      </div>
      </div>
  <?php endif ?>
