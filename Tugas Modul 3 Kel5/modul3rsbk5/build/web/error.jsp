<%-- 
    Document   : error
    Created on : Nov 2, 2019, 5:25:25 PM
    Author     : RYH
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="author" content="RYH98">
    <title>404 Error</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<body style="background-image: url(b.jpg); background-size: cover;">
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <div class="panel" style="background-color: #333333b9;">
            <h2 style="text-align: center; color: white;">UPPPSS, Error gaan - <%=request.getAttribute("error")%> </h2><br>
            <strong><a href="./login.jsp">Back</a></strong><br><br>
        </div>
    </div>
</body>
</html>