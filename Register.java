/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import com.devi.connection.Dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**  
 *
 * @author Prabhanjan
 */
public class Register extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        
        String name2=req.getParameter("name1");
        String email2=req.getParameter("email1");
        String pass2=req.getParameter("pass1");
        String gender2=req.getParameter("gender1");
        String field2[]=req.getParameterValues("field1");//because of multipal fields
        String city2=req.getParameter("city1");
        String fields2="";
        
        
        if(field2!=null)
        {
        for(String s:field2)//this is trick because it show error on above comment
        //multiapl values get
            {
                 fields2=fields2+" "+s;//
            }
        }
        Connection con=null;
        PreparedStatement ps=null;
       
        
        try
        {
            con=Dbconnection.getConnect();
            con.setAutoCommit(false);
            ps=con.prepareStatement("insert into register(name,email,password,gender,field,city) values(?,?,?,?,?,?)");
            //after register we put colum name because we add id column
            ps.setString(1,name2);
            ps.setString(2,email2);   
            ps.setString(3,pass2);
            ps.setString(4,gender2);
           // out.print(fields2);
            ps.setString(5,fields2);//multipal fields
            //out.print(fields2);
            ps.setString(6,city2);
           int i1= ps.executeUpdate();
           
           //we created 2 table. both insertion need to filled at the same time so 2 preparedstatement
           PreparedStatement ps2=con.prepareStatement("insert into about_user (email,about,skills) values(?,?,?)");
           ps2.setString(1,email2);
           ps2.setString(2,"");//empty because user not fill these filed yet
           ps2.setString(3,"");
           int i2=ps2.executeUpdate();
           
           PreparedStatement ps3=con.prepareStatement("insert into profile_pics(email,path) values(?,?)");
           ps3.setString(1,email2);
           ps3.setString(2,"profilepic.png");
           int i3=ps3.executeUpdate();
           if(i1>0 && i2>0 && i3>0  )
           {
               con.commit();
                HttpSession session=req.getSession();
                session.setAttribute("session_name",name2);//inside " " is any name. and after (,) upside
                session.setAttribute("session_email",email2);
                session.setAttribute("session_gender",gender2);
                session.setAttribute("session_city",city2);
                session.setAttribute("session_field",field2);
               //out.print("user registerd successfullly");
               
                session.setAttribute("session_title","");
                session.setAttribute("session_skills","");
                session.setAttribute("session_profilepic","profilepic.png" );

               resp.sendRedirect("profile.jsp");//request redirection using request redirection(servlet communication with browser)
           }
           else
           {
               con.rollback();
               out.println("Insertion failed ");
           }
        }
        catch(Exception e)
        {
            try
            {
                con.rollback();
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
                ps.close();
                con.close();
            }
            catch(Exception ee)
            {
                 System.out.println(ee);
            }
        }
    }
    
}
            /**/