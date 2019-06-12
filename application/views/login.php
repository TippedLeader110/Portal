
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
                                <h4 style="color: white;">Login Dashboard</h4>
<!--            <h1>--><?php //echo $message?><!--</h1>-->

        </div>
        <div class="card-body" >
            <form action="" method="post">
                <div class="input-group form-group">                    
                    <input type="text" name="email" class="form-control" placeholder="Username">
                </div>
                <div class="input-group form-group">
                    
                <input type="password" name="password" class="form-control" placeholder="Password">
                </div>

                <div class="form-group">
                    <input type="submit" name="btn" value="Login" class="btn btn-info">
        
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