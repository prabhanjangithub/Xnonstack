/*
we use connection pooling, properti file,static factory design pattern
in future if db change ten u have to just change here not everwhere
*/
package com.devi.connection;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 *
 * @author Prabhanjan
 */
public class Dbconnection 
{
    static Connection con;
    
    public static Connection getConnect()// method is static because if not then every time we have to create
        // object. using static just classname.methodname  
        {
        //we use propertiesfile.it will get data from propertiesfile
        String jdbc_url=null,username=null,password=null;
        try
        {
            InputStream is=Dbconnection.class.getResourceAsStream("db.properties");
            Properties p=new Properties();
            p.load(is);
            jdbc_url=p.getProperty("jdbc-url");//jdbc-url is part of db.properties
            username=p.getProperty("username");
            password=p.getProperty("password");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        try
        {
          //Class.forName("com.mysql.cj.jdbc.Driver");
          //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/devi_bhairavi","root","tiger");
          //we are doing connection pooling
            MysqlDataSource ds=new MysqlDataSource();
            ds.setURL(jdbc_url);
            ds.setUser(username);
            ds.setPassword(password);
            con=ds.getConnection();
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
                
          return con;
        }
}
