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
   <title>Searchable Encryption</title>
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
         
         <div class="header-bottom wow fadeIn">
            <div class="container">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
                   <%
                       String oname=(String)session.getAttribute("owner_name");
                       String pic=(String)session.getAttribute("pic");
                   %>
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a class="active" href="Owner_Home.jsp">Home</a></li>
			<li><a data-scroll href="index.jsp">Logout</a></li>
                        
                     </ul>
                      <img  src='dataset/<%=pic%>' alt='' style='height:50px; border-radius:20px; width: 70px; margin-top: 3px; position: absolute;  float: right; margin-left: 70%;'><label style='height:50px;width: 70px; position: absolute;  float: right; margin-left: 62%; font-weight: bold; color: white; margin-top: 7px;'><%=oname%></label>
                  </div>
               </nav>
            </div>
         </div>
      </header>
      
      
      <div style="width:50%; position: absolute; margin-top: 8%; margin-left: 10%; display: block">
          <h2 style="margin-left: 10%;">File Upload Status</h2>
          <style>
              table,td,th,tr{
                  border-collapse: collapse;
                  border:1px solid black; 
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
          <table style="margin-top:10px;">
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>File Upload Status</th>
                <th>Trapdoor key</th>
                <th>Action</th>
              </tr>
              <%
                Connection con=new DB().fun();
                PreparedStatement ps=con.prepareStatement("select * from trapdoor where oname='"+oname+"' ");
                ResultSet r=ps.executeQuery();
                if(r.next()){
                    String trapdoor=r.getString("trapdoor");
                    session.setAttribute("tkey", trapdoor);
              %>
              <tr>
                  <td style="color:black;"><%=r.getString("oid")%></td>
                  <td style="color:black;"><%=oname%></td>
                  <td style="color:black;"><%=trapdoor%></td>
                  <td style="color:black;"><%=r.getString("file_status")%></td>
                  <td><a href="trapdoor.jsp?id=<%=r.getString("oid")%>&&name=<%=oname%>" style="color:blue;">Send Request</a></td>
              </tr>
              <%}%>
          </table>
          </div>
      <div style="background: lightblue; height: 1000px; margin-top: 60px;">
          
          <br> <h2 style="margin-left: 40%; color:darkorange; font-family: cursive;">Welcome <%=oname%> </h2>
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
    			<table style="position: absolute;font-family:cursive !important;color:DarkMagenta;font-size:20px; margin-top: 5%;width: 20%;border-collapse: collapse;border: 1px solid black;margin-left: 70%;">
                            <tr><td><a href="Request_Trapdoor.jsp"><strong>Request Trapdoor Key</strong></a></td></tr>
                            <tr><td><a href="Upload_Files.jsp"><strong>Upload Patient Record</strong></a></td></tr>    
                            <tr><td><a href="View_Upload_Files.jsp"><strong>View Patient Details</strong></a></td></tr>
    			</table>
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
s