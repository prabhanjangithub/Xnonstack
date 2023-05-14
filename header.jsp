<%-- 
    Document   : header
    Created on : Nov 5, 2022, 4:05:42 PM
    Author     : Prabhanjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--header --%>
        <div class="row header_bg">
            <div class="col-md-9"><%--for left side --%>
                <a href="index.jsp">
                    <img src="images/logo.png" height="30"/>   
                    <span class="logo_text_design"> Job Portal</span>

                </a>   
            </div>

            <div class="col-md-3"><%--for right side --%>
                <%--in href we provide login  regester page link --%>
                <a href="Login.jsp" class="hyper_link_design">Login</a><span style="color: white;">/<span> <a href="Register.jsp" class="hyper_link_design">Register</a> 
                        </div>
                        </div>

                        </body>
                        </html>
