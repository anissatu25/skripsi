<?php
  session_start();
 include "./config/koneksi.php";
 date_default_timezone_set("Asia/Jakarta");


       
                if(isset($_POST['username']) && isset($_POST['password'])){
                      $username = $_POST['username'];
                      $password = md5($_POST['password']);
                      
                         $select = mysql_query("SELECT * from user WHERE username='$username' and `password`='$password' and id_level in ('1','2') limit 1");
                         $sql = mysql_fetch_array($select);
                         
                        // tutup sukses
              
                      if(empty($sql)){
                        
                        echo "<div class=\"alert alert-danger\"><center>
                            <strong>Maaf!</strong> Username && password anda salah. tolong ulangi!</center>
                          </div>";
                       // jika sukses
   
                            }else{
                             $_SESSION['username'] = $sql['username'];
                            $_SESSION['password'] = $sql['password'];
                            $_SESSION['id'] = $sql['id'];
                            $_SESSION['level']=$sql['id_level'];

                            $_SESSION['StatusLogin'] = '1';
                            
                            echo " <script>window.location.href='media.php?module=home'</script> ";
                          }
                      }
                        
?>

<body class="bg-gradient-danger">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-5">



				<form class="login100-form validate-form" method="post" action="">
					<center><img src="assets/img/pemilihan.png" width="200px"></center><br/>
					<span class="login100-form-title"><h2>
					PENGEMBANGAN APLIKASI E-VOTE BERBASIS MOBILE ANDROID</h2><hr/>

					</span>

					<div class="wrap-input100 validate-input" data-validate = "Username reuired">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
					<button type="submit" class="mt-2 btn btn-block btn-danger mt-1 mb-1">Login</button>
					</div>

				</form>
			</div>
		</div>
	</div>

