<%-- 
    Document   : menubar
    Created on : Nov 5, 2022, 4:13:08 PM
    Author     : Prabhanjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:scriptlet>
    String email = (String) session.getAttribute("session_email");
</jsp:scriptlet>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row menubardiv">
             <div class="col-md-7" id="mynavbar">
                 <ul id="mynavbar">
                     <li><a href="index.jsp">Home</a></li>
                      <li><a href="simple_job_search.jsp">Search Job </a></li>
                      <li><a href="companies.jsp">Companies</a></li>
                     
                     <!-- below code only disply in profile page my applied jobs not in home page-->
                      <jsp:scriptlet>
                if (email == null ? email == null : email.trim().equals("null")) {
            </jsp:scriptlet>

            <jsp:scriptlet>

            } else {
            </jsp:scriptlet>
                      <li><a href="my_applied_jobs.jsp">My Applied Job </a></li>
            <jsp:scriptlet>
                }
            </jsp:scriptlet>
                        
                 </ul>
                   
             </div>
             <div class="col-md-5" id="mynavbar">
                 <ul>
                     <li><a href="about_us.jsp">About us</a></li>
                     <li><a href="contact_us.jsp">Contact us</a></li>
                        
                 </ul>
             </div>
         </div>
    </body>
</html>
