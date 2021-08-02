<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%@page import="algorithm.mail"%>
<%
    String uid=request.getParameter("uid");
    String uname=request.getParameter("uname");
    String umail=request.getParameter("umail");
    String fn=request.getParameter("fname");
    Random r = new Random(); 
    String xyz = Integer.toString(r.nextInt(100000));
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("update file_req set status='Accept',fkey='"+xyz+"' where uid='"+uid+"' and uname='"+uname+"' ");
    p.executeUpdate();
    System.out.println(p);
    mail m=new mail(); 
    String subject="Encryption Password";
    String message="File Key :  "+xyz;
    m.sendFromGMail("techcitiforyou@gmail.com", "techcititech@123",umail, subject,message);
    
    out.println("alert(\"Key Send to the User Mail Id.\")");
    out.println("</script>"); 
    RequestDispatcher rd=request.getRequestDispatcher("Attributor_Home.jsp");
    rd.include(request, response);
    
    
%>
