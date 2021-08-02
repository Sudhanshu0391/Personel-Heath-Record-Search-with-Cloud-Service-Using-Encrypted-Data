<%@page import="java.io.PrintWriter"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oid=request.getParameter("id");
    System.out.println(oid);
    String oname=request.getParameter("oname");
    Connection con=new DB().fun(); 
    PreparedStatement p=con.prepareStatement("update user_register set status='Authorized' where user_id='"+oid+"' and username='"+oname+"' ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Data User Activated.\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Authorize_User.jsp");
    rd.include(request, response);

%>