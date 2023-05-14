/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import com.devi.connection.Dbconnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Prabhanjan
 */
public class Contactus extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String name1=req.getParameter("name1");
        String email1=req.getParameter("email1");
        String subject1=req.getParameter("subject1");
        String message1=req.getParameter("message1");
        
        Date d=new Date();
        SimpleDateFormat sdf1=new SimpleDateFormat("dd-MM-yyyy");
        String date1=sdf1.format(d);
        
        SimpleDateFormat sdf2=new SimpleDateFormat("HH:mm:ss");
        String time1=sdf2.format(d);
        
        Connection con=null;
        
        try
        {
            con=Dbconnection.getConnect();
            con.setAutoCommit(false);
            PreparedStatement ps=con.prepareStatement("insert into contact_us(name,email,subject,message,date1,time1)values(?,?,?,?,?,?)");
            ps.setString(1, name1);
            ps.setString(2, email1);
            ps.setString(3, subject1);
            ps.setString(4, message1);
            ps.setString(5, date1);
            ps.setString(6, time1);
           
            int i=ps.executeUpdate();
            if(i>0)
            {
                
                
                 RequestDispatcher rd1= req.getRequestDispatcher("job_success_applied.jsp");
                rd1.include(req, resp);
                
                RequestDispatcher rd2= req.getRequestDispatcher("contact_us.jsp");
                rd2.include(req, resp);
                con.commit();
                
               
                
               
            }
            else
            {
                con.rollback();
                RequestDispatcher rd1= req.getRequestDispatcher("error.jsp");
                rd1.include(req, resp);
                
                RequestDispatcher rd2= req.getRequestDispatcher("contact_us.jsp");
                rd2.include(req, resp);
            }
        }  
        catch(Exception e)
        {
            System.out.println(e);
            try
            {
                con.rollback();
                RequestDispatcher rd1= req.getRequestDispatcher("error.jsp");
                rd1.include(req, resp);
                
                RequestDispatcher rd2= req.getRequestDispatcher("contact_us.jsp");
                rd2.include(req, resp);
            }
            catch(Exception ee)
            {
                System.out.println(ee);
            }
            
        }
        finally
        {
            try
            {
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        }
    }
    
}
