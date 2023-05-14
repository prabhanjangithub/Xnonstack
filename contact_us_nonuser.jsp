<%-- 
    Document   : contact_us_nouser
    Created on : Nov 27, 2022, 11:25:02 PM
    Author     : Prabhanjan
--%>
<!-- if user is not login-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="registretion_dev_design">
            <%-- for backend we creat form  --%>
            <form method="POST" action="Contactus">
                <h2>Contact us</h2>
                <input type="text" placeholder="Enter Name" name="name1" class="reg_log_textfield_design"/><br><br>
                <input type="text" placeholder="Enter Email" name="email1"   class="reg_log_textfield_design"/><br><br>
                <input type="text" placeholder="Enter Subject" name="subject1" class="reg_log_textfield_design"/><br><br>
                <textarea placeholder="Enter Message" name="message1" style="text-align:center; padding: 5px 10px;  width: 350px; border-radius: 5px;    border: 1px solid gray;"></textarea><br><br>
                <input type="submit" value="Send" class="btn btn-primary"/><br><br>

            </form>
        </div>
    </body>
</html>
