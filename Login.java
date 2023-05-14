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
public class Login extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        String uemail=req.getParameter("email1");//http name="email1"
        String upass=req.getParameter("pass1");
        
        if(uemail.equals("ram@gmail.com") && upass.equals("ram@123"))
        {
            HttpSession session=req.getSession();//session object
            //get name from database
            String name="ram";
            //set name in session object
            session.setAttribute("session_name",name);//this will go to profile page
            resp.sendRedirect("profile");
        }
        else
        {
            out.print("<html>");
            out.print("<head>");
            out.print("<body>");
            out.print("<span style='font-size=20px; color:red;'>Login error</span>");
            out.print("<body>");
            out.print("</head>");
            out.print("</html>");
        }
    }
       
}
