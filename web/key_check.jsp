
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>

<%
    String uname=(String)session.getAttribute("user_name");
    String fname=request.getParameter("fn");
    String key=request.getParameter("key");
    Connection con=new DB().fun();
    PreparedStatement p=con.prepareStatement("select * from file_req where filename='"+fname+"' and uname='"+uname+"'  ");
    ResultSet r=p.executeQuery();
    if(r.next()){
        String k=r.getString("fkey");
        if(k.equalsIgnoreCase(key)){
             String filepath = "C:\\files\\";   
            response.setContentType("APPLICATION/OCTET-STREAM");   
            response.setHeader("Content-Disposition","attachment; filename=\"" + fname + "\"");   

            java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + fname);  

            int i;   
            while ((i=fileInputStream.read()) != -1) {  
              out.write(i);   
            }   
            fileInputStream.close();   
          }
        else
        { 
                String strQuery2 = "insert into attacker(username,filename) values('"+uname+"','"+fname+"')";
                con.createStatement().executeUpdate(strQuery2); 
              
            
               
                 
            out.println("<script>"
				+"alert('Wrong Key.....YOU ARE AN ATTACKER')"
				+"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
            rd.include(request, response);
        }
    }
    
%>