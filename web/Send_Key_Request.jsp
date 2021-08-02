<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String uid=request.getParameter("uid");
    String uname=request.getParameter("uname");
    String mail=request.getParameter("mail");
    String fn=request.getParameter("fn");
    String key=request.getParameter("key");
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("select * from file where fname='"+fn+"' ");
    ResultSet r=p.executeQuery();
    if(r.next()){
        String oid=r.getString("oid");
        String oname=r.getString("oname");
        PreparedStatement p1=con.prepareStatement("insert into file_req(oid,oname,uid,uname,umail,filename)values('"+oid+"','"+oname+"','"+uid+"','"+uname+"','"+mail+"','"+fn+"') ");
        p1.executeUpdate();
        PreparedStatement p2=con.prepareStatement("insert into result(fname,keyword)values('"+uname+"','"+key+"') ");
        p2.executeUpdate();
        System.out.println(p1);
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Request send to Attribute Center..\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
        rd.include(request, response);
    }

%>