/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prabhanjan
 */
public class profile extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {   
            
            
        
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        
        HttpSession session=req.getSession();
        String name=(String)session.getAttribute("session_name");//type casting 
         out.print("<html>");
            out.print("<head>");
            out.print("<body>");
            out.print("WELCOME:"+name);
            out.print("<a href='logout'> logout </a>");
            out.print("<body>");
            out.print("</head>");
            out.print("</html>");
    }
    
}
