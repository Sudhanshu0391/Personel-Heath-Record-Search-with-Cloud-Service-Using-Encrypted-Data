<%@page import="java.io.PrintWriter"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    Connection con=new DB().fun(); 
    String uid=request.getParameter("uid");
    String uname=request.getParameter("uname");
    PreparedStatement p=con.prepareStatement("update user_register set status='Authorized' where user_id='"+uid+"' and username='"+uname+"' ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Data User Activated.\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Authorize_User.jsp");
    rd.include(request, response);

%>