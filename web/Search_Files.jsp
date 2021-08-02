<%@page import=" java.util.Date"%>
<%@page import=" java.text.DateFormat"%>
<%@page import=" java.text.SimpleDateFormat"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
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
         
          <div class="header-bottom wow fadeIn" style="background-color: black;">
            <div class="container">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
                   <%
                       String uname=(String)session.getAttribute("user_name");
                       String pic=(String)session.getAttribute("pic");
                    %>
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a  href="User_Home.jsp">Home</a></li>
                        <li><a class="active" data-scroll href="Search_Files.jsp">Search Files</a></li>
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
          <h2 style="margin-left: 20%;">Search Files</h2>
          <style>
              table,td,th,tr{
                 
                  padding:5px;
                  text-align: center;
              }
              th{
                  color:brown;
              }
              td{
                  color:black;
              }
          </style>
          <form action="Search_Action.jsp">
          <table style="margin-top:10px;">
              
              <tr><td><strong>Search By Keyword</strong></td><td><input type="text" name="word" required></td></tr>
              <tr><td align="center" colspan="2"><input type="submit" name="Search" required></td></tr>
          </table></form>
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
                    <p></p>
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
