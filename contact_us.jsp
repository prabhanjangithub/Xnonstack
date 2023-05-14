<%-- 
    Document   : index
    Created on : Nov 5, 2022, 10:15:14 AM
    Author     : Prabhanjan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.devi.connection.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%--1.1 we use bootsrap because of this website become responcive--%>
<%--1.2 we copy bootstrap from net  --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:scriptlet>
    String email = (String) session.getAttribute("session_email");
</jsp:scriptlet>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JOB PORTAL WEBSITE</title>
        <%-- confused while coping so copy from sir's code index.jsp --%>
        <%-- this is css link. we provided hiperlink here.removed integriti part  --%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <%-- this is js link  --%>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- this is js link  --%>


        <%-- this is css link  --%>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>

    </head>
    <body>
        <div class="container_fluid">
            <%-- below code because of it is not providing same header.this will show your photo and name  --%>
            <jsp:scriptlet>
                if (email == null ? email == null : email.trim().equals("null")) {
            </jsp:scriptlet>
            <%-- do not want to repetation of header coding so we create saperate class--%>
            <jsp:include page="header.jsp"></jsp:include>

            <jsp:scriptlet>

            } else {
            </jsp:scriptlet>
            <jsp:include page="profileheader.jsp"></jsp:include>
            <jsp:scriptlet>
                }
            </jsp:scriptlet>
            <%-- do not want to repetation of meubar coding so we create saperate class also easy to maintain--%>
            <jsp:include page="menubar.jsp"></jsp:include>



                <div class="row">
                    <div class="col-md-3">
                        <ul>
                            <li><a href="">Isha</a> </li>
                            <li><a href="">Vipro</a> </li>
                            <li><a href="">Apple</a> </li>
                            <li><a href="">IBM</a> </li>
                            <li><a href="">Google</a> </li>
                            <li><a href="">Microsoft</a> </li>
                        </ul>
                    </div>
                    <div class="col-md-6" style="background-color: #e8edea">
                    <jsp:scriptlet>
                        if(email==null ? email == null : email.trim().equals("null"))       
                        {
                            </jsp:scriptlet>
                            <jsp:include page="contact_us_nouser.jsp"></jsp:include>
                            <jsp:scriptlet>
                        }
                        else
                        {
                            </jsp:scriptlet>
                            <jsp:include page="contact_us_user.jsp"></jsp:include> 
                            <jsp:scriptlet>
                        }
                    </jsp:scriptlet> 
                    </div>
            <div class="col-md-3">
                <ul>
                    <li><a href="">CDAC</a> </li>
                    <li><a href="">Facebook</a> </li>
                    <li><a href="">Yahoo</a> </li>
                    <li><a href="">LIC</a> </li>
                    <li><a href="">Raliway</a> </li>
                    <li><a href="">P_set</a> </li>
                </ul>
            </div>
        </div>
             
                                 <div class="row">
                                     <div class="col-md-2"></div>
                                     <div class="col-md-8">
                                         <!--google map code-->
                                         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3916.909792328427!2d76.73796471428838!3d10.970181358588325!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba86158ecff7983%3A0xd2912012a9db31ab!2sIsha%20temple%2C%20Coimbatore!5e0!3m2!1sen!2sin!4v1669570470654!5m2!1sen!2sin" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                     </div>
                                     <div class="col-md-2"></div>
                                 </div>
                                 
        <%--footer --%>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>

</body>
</html>
