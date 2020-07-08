<?php
    require 'connection.php';
    session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <style>
      .test1{
        background-image:url(img/about.jpg); 
      }
    </style>
        <div>
           <?php
            require 'header.php';
           ?>
           <div id="bannerImage">
            <div class="test1">
           <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-xs-offset-3">
                        <br><br>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3> ADMIN LOGIN</h3>
                            </div>
                            <div class="panel-body">
                                
                                <form method="post" action="admin_login_submit.php">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password" placeholder="Password(min. 6 characters)" pattern=".{6,}">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Login" class="btn btn-primary">
                                    </div>
                                </form>
                            </div>
                            <br><br><br><br>
                        
                            <div class="panel-footer">
                        </div>
                    </div>
                </div>
           </div>
           <br><br>
            <footer class="footer"> 
               <div class="container">
               <center>
                  <p>Oppurtunity of showing your creative talent at The Indian Art Gallery. SHARE YOUR ART WORK VIA MAIL. OUR EMAIL ID IS-art@artgallery.com </p>
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>
