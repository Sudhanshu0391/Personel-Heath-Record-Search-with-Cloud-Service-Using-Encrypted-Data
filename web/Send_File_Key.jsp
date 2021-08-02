<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="en">
   <!-- Basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- Site Metas -->
   <title>Searchable Encryptionn</title>
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
                  <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                         <li><a href="Attributor_Home.jsp">Home</a></li>
                        <li><a  class="active" data-scroll href="Send_File_Key.jsp">Send File Key</a></li>
                         <li><a data-scroll href="View_Attackers.jsp">View Attackers</a></li>
			<li><a data-scroll href="index.jsp">Logout</a></li>
                        
                     </ul>
                       </div>
               </nav>
            </div>
         </div>
      </header>
      
      <div  style="height:900px; margin-top:60px; background: #bce8f1;">
    	<style>
    	h2{
    	 margin-top:60px;
    	 font-size:30px;
    	 color:darkblue;
    	 letter-spacing:1px;
    	}
        table,tr,th,td{
            border-collapse: collapse;
            border: 1px solid black;
            text-align: center;
            padding:5px;
            font-size:15px;
        }
    	table{
    		width: 80%;
    		
    	}
        th{
            color:darkmagenta;
        }
        td{
            color:black;
        }
    	h4{
    		margin-top:20px;
    		color:maroon;
    		font-weight:bold;
    	}
    	</style>
    		<center>
                    <br><h2><strong>File Requests</strong></h2><br>
    			<table>
                            <tr>
                                <th>Owner ID</th>
                                <th>Owner Name</th>
                                <th>User ID</th>
                                <th>User Name</th>
                                <th>File Name</th>
                                <th>Action</th>
                            </tr>
                            <%
                                Connection con=new DB().fun();
                                PreparedStatement ps=con.prepareStatement("select * from file_req where status='waiting' ");
                                ResultSet r=ps.executeQuery();
                                while(r.next()){
                            %>
                            <tr>
                                <td><%=r.getString("oid")%></td>
                                <td><%=r.getString("oname")%></td>
                                 <td><%=r.getString("uid")%></td>
                                <td><%=r.getString("uname")%></td>
                                <td><%=r.getString("filename")%></td>
                                <td><a href="Accept_Key.jsp?uid=<%=r.getString("uid")%>&&uname=<%=r.getString("uname")%>&&umail=<%=r.getString("umail")%>&&fname=<%=r.getString("filename")%>" style='color:darkgreen;font-weight: bold;'>Send Key</a></td>    
              
                            </tr>
                            <%}%>
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
