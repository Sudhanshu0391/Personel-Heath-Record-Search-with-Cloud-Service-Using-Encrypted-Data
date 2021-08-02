<!DOCTYPE html>
<html lang="en">
   <!-- Basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- Site Metas -->
   <title>PHM</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- Site Icons -->
   <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
   <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <!-- Site CSS -->
   <link rel="stylesheet" href="style.css">
   <!-- Colors CSS -->
   <link rel="stylesheet" href="css/colors.css">
   <!-- ALL VERSION CSS -->
   <link rel="stylesheet" href="css/versions.css">
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="css/responsive.css">
   <!-- Custom CSS -->
   <link rel="stylesheet" href="css/custom.css">
   <!-- Modernizer for Portfolio -->
   <script src="js/modernizer.js"></script>
   <!-- [if lt IE 9] -->
   </head>
   <body class="clinic_version">
      <!-- LOADER -->
      <div id="preloader">
         <img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
      </div>
      <!-- END LOADER -->
      <header>
         
         <div class="header-bottom wow fadeIn" style="background-color: black">
            <div class="container">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
				  
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a class="active" href="index.jsp">Home</a></li>
                         <li><a data-scroll href="Data_Owner_Login.jsp">Doctors</a></li>
                        <li><a data-scroll href="Data_User_Login.jsp">Hospital Management</a></li>
                        <li><a data-scroll href="Token_Login.jsp">Admin</a></li><li><a data-scroll href="Attribure_Login.jsp">Attribute Centre</a></li>
						<li><a data-scroll href="Cloud_Login.jsp">Cloud Server</a></li>
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
      </header>
    	<div>
    	<style>
    	h2{
    	 margin-top:30px;
    	 font-size:30px;
    	 color:DarkSlateGray;
    	 letter-spacing:1px;
    	}
    	table{
    		font-family:cursive !important;
    		color:DimGray;
    		font-size:20px;
    	}
    	input{
    		width:300px;
    		color:black;
    		margin-top:10px;
    		margin-right:10px;
    		border-radius:20px;
    	}
    	</style>
    		<img src="images/tokenizer.jpg" alt="" style="height:300px;width:1280px; margin-top:60px;">
    		<center>
    			<h2><strong>Authority Login</strong></h2><br>
    			<form action="Login_Action">
    			<table>
    				<tr><td><strong>Username:</strong></td><td><input type="text" name="username" required></td></tr>
    				<tr><td><strong>Password:</strong></td><td><input type="password" name="password" required></td></tr>
    				<tr><td align="center" colspan="2"><input type="submit" name="Login" style="color:black;"></td></tr>
    			</table></form>
    		</center>
    	</div>
      <!-- end copyrights -->
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- all js files -->
      <script src="js/all.js"></script>
      <!-- all plugins -->
      <script src="js/custom.js"></script>
      <!-- map -->
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
   </body>
</html>
