<%-- 
    Document   : Logindiv
    Created on : Nov 8, 2022, 3:36:59 PM
    Author     : Prabhanjan
--%>
<%-- 
    we create this page beause normally it repeate heder and footer 2 times
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-3"></div> <%-- left gap  --%>
            <div class="col-md-6 registretion_dev_design">
                <%-- for backend we creat form  --%>
                <form method="POST" action="login">
                    <h2>Login Here</h2>
                    <input type="text" placeholder="Enter Email" name="email1" class="reg_log_textfield_design"/><br><br>
                    <input type="password" placeholder="Enter Password" name="pass1" class="reg_log_textfield_design     "/><br><br>
                    <input type="checkbox" name="rememberme1" value="rememberme"/>Remember me<br><br>

                    <input type="submit" value="Login" class="btn btn-primary"/><br><br>

                </form>
            </div>
        </div>
        <div class="col-md-3"></div> <%-- right gap--%>
    </div>

</body>
</html>
