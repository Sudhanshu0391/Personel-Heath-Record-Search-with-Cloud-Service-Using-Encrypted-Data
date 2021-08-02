/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import algorithm.CipherHelper;
import algorithm.Stem;
import algorithm.Stopwords;
import algorithm.TFIDFCalculator;
import cloud.SimpleFTPClient;
import dbServices.DB;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class Upload extends HttpServlet {
   int hashh;
     String fna="";
    String fdo="",content="";
     String b1,b2,b3;
     static String wordcon="";
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException 
{      
    hashh=0;
     List<String> ms = new ArrayList<String>();
        String finalimage = "";
        boolean isMultipart = ServletFileUpload.isMultipartContent(
                request);
        List<String> m = new ArrayList<String>();
        File savedFile;
        
        if (!isMultipart) {
           float dummy=(float)Math.log(0)+1;
           
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;

            try {
                items = upload.parseRequest(request);
                //System.out.println("items: "+items);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                List<String> al = new ArrayList<String>();

                String sss = "";
                FileItem item = (FileItem) itr.next();
                String value = "";
                String a[];
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    //System.out.println("name: "+name+'\n');
                    value = item.getString();
                    // System.out.println("value: "+value);
                    al.add(value);
                    for (int i = 0; i < al.size(); i++) {
                        sss += al.get(i);
                        System.out.println("is thios image" + sss);

     //System.out.println("the value sixcwe"+m.size());
                    }

                    a = sss.split("-");
                    for (int i = 0; i < a.length; i++) 
                    {

                        String am = a[i];
                        System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
                        m.add(a[i]);
                    }
                } else {
                    
                    String itemName = item.getName();

                    String reg = "[.*]";
                    String replacingtext = "";
                    Pattern pattern = Pattern.compile(reg);
                    Matcher matcher = pattern.matcher(itemName);
                    StringBuffer buffer = new StringBuffer();

                    while (matcher.find()) {
                        matcher.appendReplacement(buffer, replacingtext);
                    }
                    int IndexOf = itemName.indexOf(".");
                    int Indexf = itemName.indexOf(".");
                    String domainName = itemName.substring(IndexOf);
                    
                    finalimage = buffer.toString() + domainName;
                    
                    System.out.println("hi..... " +domainName);
                    System.out.println("Final Image===" + finalimage);
                    ms.add(finalimage);
                    fna=buffer.toString();
                    fdo=domainName;
                    savedFile = new File("C:\\files\\" + finalimage);
                    try 
	                    {
	                    	item.write(savedFile);	                    	
	                    	
                    CipherHelper c= new CipherHelper();
                     File path = new File("C:\\files\\" + finalimage);
                     File path1 = new File("C:\\files\\enc\\" + finalimage);
                     
                   		
                    BufferedReader br= null;
                    
                    String sCurrentLine;
                    StringBuilder b= new StringBuilder();       
                    StringBuilder bb= new StringBuilder(); 
                    br = new BufferedReader(new FileReader("C:\\files\\" + finalimage));
                    while ((sCurrentLine = br.readLine()) != null) 
                    {    
                         bb.append(sCurrentLine);
                         String myAppContext = sCurrentLine;
                    }
                    String rep = bb.toString().replaceAll("( )+", " ");
                    content=rep;
                    String enc=c.cipher(m.get(1),content);                      
                    String renc=c.cipher(m.get(1),enc);
                    PrintWriter writer = new PrintWriter("C:\\files\\enc\\"+finalimage, "UTF-8");
                    writer.println(enc);
                    writer.close(); 
                    PrintWriter writer1 = new PrintWriter("C:\\files\\enc\\renc\\"+finalimage, "UTF-8");
                    writer1.println(renc);
                    writer1.close(); 
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
                    try
                    {
                    SimpleFTPClient client=new SimpleFTPClient();
	                    	client.setHost("ftp.drivehq.com");
	                    	client.setUser("davidmesiya");
	                    	client.setPassword("jesusdavidmesiya");
	                    	client.setRemoteFile(finalimage);
	                    	boolean log= client.connect(); 
	                    	if(log)
	                    	{  
	                	    try 
	                            {
	                            	System.out.println("this is log true block");
	                            	FileOutputStream fos = new FileOutputStream(new  File(item.getName()));
	                            	byte b[] = new byte[1024];
	                            	int c=0;
	                            	InputStream is = item.getInputStream();
	                            	while((c=is.read(b)) != 0)
	                            	{	
	                            		fos.write(b, 0, c);
	                            	}
	                            	fos.close();                	    	
	                            }
	                	    	catch(Exception e){
	                            System.out.println("this is log false block    "+e);
	                            }
	                        	PrintWriter out=response.getWriter();
	                            if (client.uploadFile(new File(item.getName())))
	                            {
	                                System.out.println("This is a true block");
	                                
	                            }
	                    	}
	                    } 
	                    catch (Exception e) 
	                    {
							e.printStackTrace();
						}
                    
                
            }
        }
        Stopwords ss=new Stopwords();
        LinkedList<String>stop=new LinkedList<String>();
        stop = ss.words(content);   
        String result1=""; 
        for(String zob : stop)
        {
            result1+=zob+" ";
        }
        result1 = result1.replaceAll("[,]"," ");
        
        replace rep = new replace();
        result1=rep.remove(result1);
        Stem sn=new Stem();		
	LinkedList<String> kk=new LinkedList<String>();
	kk=sn.stem(result1);
        String result2 = kk.toString().replaceAll("[,]",""); 
        TFIDFCalculator tf = new TFIDFCalculator();
        tf.tf(kk, content);
        String strQuery = "";
          String tfvalue="";
        Set<String> unique = new HashSet<String>(kk);
        for (String key : unique)
            {                
                int zz=Collections.frequency(kk, key);
                tfvalue+=key+" : "+zz;
                tfvalue+=" \n";
            }
        System.out.println("Number of Frequent List");
        //System.out.println(tfvalue);
        PrintWriter out=response.getWriter();
         PreparedStatement ps,ps1; 
        System.out.println("completed.....");
	try {            
            Connection con=new DB().fun();
            strQuery = "insert into file (oid,oname,disease,pid,pname,age,mobile,mail,date,tkey,fname,content,sto,ste,tf) "
                + "values('" + m.get(0) + "','" + m.get(1)+ "','" + m.get(2) + "','" + m.get(3) + "','" + m.get(4) + "','" + m.get(5) + "','" + m.get(6) + "','" + m.get(7) + "','" + m.get(8) + "','" + m.get(9) + "','" + ms.get(0) + "','"+content+"','"+result1+"','"+result2+"','"+tfvalue+"')";
            ps=con.prepareStatement(strQuery);
            ps.executeUpdate(strQuery);
            HttpSession session = request.getSession();
            session.setAttribute("sto", result1);
            session.setAttribute("ste", result2);
            session.setAttribute("tf", tfvalue);
        content="";
        out.println("<script>"
				+"alert('File uploaded successfully')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/Upload1.jsp");
		rd.include(request, response); 
	}
	catch(Exception e){
            System.out.println(e);
        }
    }
    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {
           processRequest(request, response);
       } catch (FileUploadException ex) {
           Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {
           processRequest(request, response);
       } catch (FileUploadException ex) {
           Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
       }
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
