<%@page import="java.io.PrintWriter"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oid=request.getParameter("id");
    System.out.println(oid);
    String oname=request.getParameter("oname");
    Connection con=new DB().fun(); 
    PreparedStatement p=con.prepareStatement("update owner_register set status='Authorized' where owner_id='"+oid+"' and owner_name='"+oname+"' ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Data Owner Activated.\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Authorize_Owner.jsp");
    rd.include(request, response);

%>