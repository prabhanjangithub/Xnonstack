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
            <%-- do not want to repetation of meubar coding so we create saperate class also easy to maintain--%>
             <jsp:include page="header.jsp"></jsp:include>

            <jsp:include page="menubar.jsp"></jsp:include>

                <div class="row" style="border: 2px solid black">

                    <img src="images/jobbanner.jpg  " height="350" width="1373 "/>

                </div>

            <%--middle part search division --%>
            <div class="col-md-2"></div>
            <div class="col-md-8 job_search-div">
                <h5>Find A Job at India's No.1 Job Site </h5>
                <input type="text" placeholder="Technology..... " class="textfield_design"/>
                <input type="text" placeholder="Locations......" class="textfield_design"/>
                <input type="submit" value="Search"  class="btn btn-primary"/>
            </div>

            <div class="col-md-2"></div>
            <div class="row">
                <div class="col-md-3">
                    <ul>
                        <li> <a href=""> Isha foundataion </a> </li>
                            <li> <a href=""> Infosys </a> </li>
                            <li> <a href=""> Wipro </a> </li>
                            <li> <a href=""> IBM </a> </li>
                            <li> <a href=""> Google </a> </li>
 
                    </ul>
                </div>
                <div class="col-md-6" style="background-color: #e8edea">
                    <div class="row">

                      

                    </div>
                </div>
                <div class="col-md-3">
                    <ul>
                        <li> <a href=""> Isha foundataion </a> </li>
                            <li> <a href=""> Infosys </a> </li>
                            <li> <a href=""> Wipro </a> </li>
                            <li> <a href=""> IBM </a> </li>
                            <li> <a href=""> Google </a> </li>
 
                    </ul>
                </div>
            </div>
            <%--footer --%>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>

    </body>
</html>
