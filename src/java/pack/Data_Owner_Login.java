/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import dbServices.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Data_Owner_Login extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=response.getWriter();
         HttpSession session=request.getSession();
	try{
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                Connection con=new DB().fun();
                PreparedStatement p=con.prepareStatement("select * from owner_register where owner_name='"+username+"' and password='"+password+"' and status='Authorized' ");
                ResultSet r=p.executeQuery();
                if(r.next()){
                    String id=r.getString("owner_id");
                    String pic=r.getString("profile_pic");
                    PreparedStatement ps=con.prepareStatement("insert into trapdoor(oid,oname)values('"+id+"','"+username+"')");
                    ps.executeUpdate();
                    session.setAttribute("owner_id",id);
                    session.setAttribute("owner_name", username);
                    session.setAttribute("pic", pic);
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"welcome "+username+".\")");
                    out.println("</script>"); 
                    RequestDispatcher rd=request.getRequestDispatcher("Owner_Home.jsp");
                    rd.include(request, response);
                }
                else{
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Invalid Login.\")");
                    out.println("</script>"); 
                    RequestDispatcher rd=request.getRequestDispatcher("Data_Owner_Login.jsp");
                    rd.include(request, response);
                }
        }
        catch(Exception e){
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
