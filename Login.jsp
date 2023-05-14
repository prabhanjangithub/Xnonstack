<%-- 
    Document   : Register
    Created on : Nov 6, 2022, 3:07:49 PM
    Author     : Prabhanjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%-- it represent resp.setContentType("text/html") in servlet .(directive tag type :-  page derective )--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login- Isha meditator</title>

        <%-- this is css link. we provided hiperlink here.removed integriti part  --%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <%-- this is js link  --%>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- this is js link  --%>

        <%-- this is css link  --%>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="container_fluide">
            <%-- used directive element  --%>
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="menubar.jsp"></jsp:include>
            <%--created new class login div  because of repetativeness  --%>
            <jsp:include page="Logindiv.jsp"></jsp:include>
            <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
