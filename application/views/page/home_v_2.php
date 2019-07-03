
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
  
</div>
<div class="row">

  <?php $this->load->view('first', $data)?>
</div>
<div class="row" style="margin-top: 50px;margin-bottom: 20px;">
  <div class="col-8">
    <h4 class="bold">TENTANG KAMI</h4>
          <hr>
    <div class="row" style="margin-top: 10px;">
      <div class="col-12">
        <div class="row">
            <div class="col-12">
              <button class="btn btn-info" onclick="window.location.href='<?php echo base_url('Artikel/DirGuru') ?>';"><div style="color: white">Guru Kami</div><span><h2><i class="fas fa-user-tie"></i></h2></span></button>
              <button onclick="window.location.href='<?php echo base_url('Artikel/About') ?>';" class="btn btn-info" ><div style="color: white">Informasi Sekolah</div><span><h2><i class="fas fa-info"></i></h2></span></button>
              <?php if ($vid->penerimaan==1): ?>
              <button onclick="window.location.href='<?php echo base_url('User') ?>';" class="btn btn-info" ><div style="color: white">Daftar Online</div><span><h2><i class="fas fa-door-open"></i></h2></span></button>
            </div>
            <?php endif ?>
        </div>
        <div class="row" style="margin-top: 50px;">
          <div class="col-12">
            <h4 class="bold">GALERI KAMI</h4>
            <hr>
          </div>
        </div>
        <div class="row">
          
          <?php foreach ($img as $key => $vimg): ?>
            <div class="col-md-4">
                  <a data-fancybox="gallery" href="<?php echo base_url('source/gambar/galery/'); echo $vimg->link ?>"><div class="card mb-4 box-shadow">
                    <img style="width: 100%;height: 100px;object-position: center;object-fit: cover;" class="card-img-top" src="<?php echo base_url('source/gambar/galery/'); echo $vimg->link ?>" alt="Card image cap">
                    <div class="card-body" style="max-height: 50px;max-width: 400px;overflow: hidden;">
                      <p class="card-text"><?php echo $vimg->deskripsi ?></p>
                    </div>
                  </div>
                  </a>
            </div>
     
          <?php endforeach ?>
          
        </div>
        <div class="row">
            <div class="container">
              <center><a href="<?php echo base_url('Artikel/Galery') ?>">Lihat Semua Galeri</a></center>
            </div>
          </div>
      </div>
    </div>
    </div>
    <div class="col-4">
      
      <h4 class="bold">BERITA ACAK</h4>
      <hr>
      <?php foreach ($postmain2 as $key => $vpostmain): ?>
        <div class="row" style="margin-top: 10px;">
          <div class="col-12">
           <a href="<?php echo base_url('Artikel/sekolah/'); echo $vpostmain->id_post ?>"> <img style="width: 100%;height: 100px;object-position: center;object-fit: cover;background-image: linear-gradient(transparent, rgba(0,0,0,0.2))" class="card-img-top" src="<?php echo base_url('source/gambar/post/'); echo $vpostmain->cover ?>" alt="Card image cap">
            <h5><?php echo $vpostmain->judul ?></h5></a>
            <span style="max-width: 50px;"><?php echo $vpostmain->nama ?></span>&nbsp;<span><?php echo $vpostmain->tanggal ?></span>
            <hr>
          </div>
        </div>
      <?php endforeach ?>
    </div>
  </div>
  <div class="row">
    <div class="col-12">
      <h4 class="bold">BERITA LAINNYA</h4>
      <hr>
  </div>
  </div>  
  <div class="row" style="margin-bottom: 30px;">
    <?php foreach ($postmain3 as $key => $post3): ?>
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
  <div class="row">
    <?php foreach ($kate as $key => $vkate): ?>
      <div class="col-4">
      <h4 class="bold"><?php echo $vkate->nama_kategori ?></h4>
      <hr>
      <?php $this->db->where('id_kategori', $vkate->id_kategori);$this->db->limit(3);$query = $this->db->get("allpost")->result(); ?>
      <?php foreach ($query as $key => $vkate2): ?>
        <a href="<?php echo base_url('Artikel/sekolah/'); echo $vkate2->id_post; ?>"><h5><?php echo $vkate2->judul ?></h5></a>
        <p><?php echo $vkate2->nama ?>&nbsp;|&nbsp;<?php echo $vkate2->tanggal ?></p>
          <hr>
      <?php endforeach ?>
      <center><a href="<?php echo base_url('Artikel/kategori/'); echo $vkate2->id_kategori ?>">Lihat Semua</a></center>
  </div>

    <?php endforeach ?>
  </div>


  <script type="text/javascript">
    $("a.group").fancybox({
    'transitionIn'  : 'elastic',
    'transitionOut' : 'elastic',
    'speedIn'   : 600, 
    'speedOut'    : 200, 
    'overlayShow' : false
  });
  </script>