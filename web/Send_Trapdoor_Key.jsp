<%@page import="algorithm.CipherHelper"%>
<%@page import="java.util.Random"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String oid=request.getParameter("id");
    String oname=request.getParameter("oname");
    Random r = new Random(); 
    String xyz = Integer.toString(r.nextInt(100000000));   
    CipherHelper c=new CipherHelper();
    String ekey=c.cipher("12345678", xyz);
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("update trapdoor set file_status='Active',trapdoor='"+ekey+"' where oname='"+oname+"' and oid='"+oid+"' ");
    p.executeUpdate();
    System.out.println(p);
     out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Request Activated..Trapdoor key send to the Data Owner...\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Accept_Trapdoor_Request.jsp");
    rd.include(request, response);
    
    
    
%>