<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oid=request.getParameter("id");
    String oname=request.getParameter("name");
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("update trapdoor set file_status='request_send' where oid='"+oid+"' and oname='"+oname+"' ");
    p.executeUpdate();
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Request Send to Tokenizer...\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Request_Trapdoor.jsp");
    rd.include(request, response);
%>