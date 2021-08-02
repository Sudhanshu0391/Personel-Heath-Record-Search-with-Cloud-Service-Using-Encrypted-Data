package pack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Login_Action extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
	try{
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                if(username.equalsIgnoreCase("cloud")&&password.equalsIgnoreCase("cloud")){
                        out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Welcome Cloud Server.\")");
                    out.println("</script>"); 
                    RequestDispatcher rd=request.getRequestDispatcher("Cloud_Home.jsp");
                    rd.include(request, response);
		}
		else if(username.equalsIgnoreCase("attributor")&&password.equalsIgnoreCase("attributor")){
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Welcome Attribute center.\")");
                    out.println("</script>"); 
                    RequestDispatcher rd=request.getRequestDispatcher("Attributor_Home.jsp");
                    rd.include(request, response);
		}
		else if(username.equalsIgnoreCase("key")&&password.equalsIgnoreCase("key")){
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Welcome Authority.\")");
                    out.println("</script>"); 
                    RequestDispatcher rd=request.getRequestDispatcher("Tokenizer_Home.jsp");
                    rd.include(request, response);
                }
                else{
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Invalid Login.\")");
                    out.println("</script>"); 
                    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);
		}
            }
            catch(Exception e){
            }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
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
