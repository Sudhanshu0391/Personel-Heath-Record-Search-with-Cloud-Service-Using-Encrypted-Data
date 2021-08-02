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
         <%
                       String uname=(String)session.getAttribute("user_name");
                       String pic=(String)session.getAttribute("pic");
         %>
         <div class="header-bottom wow fadeIn">
            <div class="container">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a class="active" href="User_Home.jsp">Home</a></li>
                        <li><a data-scroll href="Search_Files.jsp">Search Files</a></li>
                        <li><a data-scroll href="Downlaod_Files.jsp">Download Files</a></li>
			<li><a data-scroll href="index.jsp">Logout</a></li>
                        
                     </ul>
                       <img  src='dataset/<%=pic%>' alt='' style='height:50px; border-radius:20px; width: 70px; margin-top: 3px; position: absolute;  float: right; margin-left: 35%;'><label style='height:50px;width: 70px; position: absolute;  float: right; margin-left: 42%; font-weight: bold; color: white; margin-top: 7px;'><%=uname%></label>
                      </div>
               </nav>
            </div>
         </div>
      </header>
       
      
      <div style="width:50%; position: absolute; margin-top: 8%; margin-left: 10%; display: block">
          <h2>ABSTRACT</h2>
          <p>Cloud-based Personal Health Record systems (CBPHR)?s majorly used for
management of patient?s individual health records. Cloud computing are providing
real-time healthcare data sharing in a cost-effective manner. Data security and privacy
of maintaining personal health records are main obstacles for the wide adoption of
CB-PHR systems, since health information is highly sensitive, so it needed to be
protected in highly secured manner. In this paper, we propose a novel scheme using
Data Encryption Standard (DES) technique for maintaining health record based on
challenges and various securities in existing system. In this scheme, indexes are
encrypted under different symmetric keys and also the encrypted data indexes from
various data providers can be merge by cloud without knowing the index content. It
also provides efficient and privacy preserving query processing with a single data
query submitted by data user. Encrypted data will be processed by cloud from all
related data providers without knowing its query content.</p>
          </div>
      <div style="background: lightblue; height: 1000px; margin-top: 60px;">
          
          <br> <h2 style="margin-left: 40%; color:darkorange; font-family: cursive;">Welcome <%=uname%> </h2>
    	<style>
    	h2{
    	 margin-top:60px;
    	 font-size:30px;
    	 color:navy;
    	 letter-spacing:1px;
    	}
    	table{
                position: absolute;
    		font-family:cursive !important;
    		color:DarkMagenta;
    		font-size:20px;
                margin-top: 5%;
                margin-left: 68%;
                width: 20%;
    	}
        a{
            color:darkcyan;
            padding-bottom: 5px;
        }
        P{
            font-size: 15px;
            color:black;
            font-weight: bold;
        }
    	</style>
    		<center>
    			
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
