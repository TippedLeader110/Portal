    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/source/css/custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/source/css/login.css">
<div class="container" >
    <div class="card card-login mx-auto text-center bg-dark">
             <div class="row">
                        <div class="container-fluid">
                    <img src="<?php echo base_url('source/img/login.png') ?>" style="margin-top: -50px;max-width: 140px; max-height: 120px;">
                        </div>
                     <div class="row">
                        <div class="container-fluid">
                                <h4 style="color: white; margin-top: 8px">Login Dashboard</h4>
<!--            <h1>--><?php //echo $message?><!--</h1>-->

        </div>
        <div class="card-body" >
            <!-- <form action="<?php echo base_url('login/aksi_login') ?>" method="post"> -->
                <div class="input-group form-group">                    
                    <input type="text" id="username" name="username" class="form-control" placeholder="Username">
                </div>
                <div class="input-group form-group">
                    
                <input type="password" id="password" name="password" class="form-control" placeholder="Password">
                </div>

                <div class="form-group">
                    <input type="submit" onclick="go();" name="btn" value="Login" class="btn btn-info">
        
                    <input type="submit" name="btn" value="Daftar" class="btn btn-succes ">
                </div>
                    <div class="row">
                        <div class="container-fluid" style="color: #2F669F; ">
                                <a href="#" onclick="" style="text-decoration: none;">Lupa Kata Sandi?</a>
                            
                        </div>
                    </div>      

            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    function go(){
        var a = $('#username').val();
        var b = $('#password').val();
        $.ajax({
            url: '<?php echo base_url('login/aksi_login') ?>',
            type: 'post',
            data: {username:a, password:b},
            error: function(){
                Swal.fire('Kesalahan !!','Koneksi ke server gagal !!', "error");   
            },
            success: function(data){
                console.log(data);
                if (data==0) {
                    Swal.fire('Kesalahan !!','Username / Password salah !!', "error");

                }
                else if(data==1){
                Swal.fire('Login !!','Selamat Datang !!', "success");
                setTimeout(function() 
                {
                window.location.replace("<?php echo base_url('Custom') ?>");
                }, 1000);
                }

            }
        })
    }
</script>