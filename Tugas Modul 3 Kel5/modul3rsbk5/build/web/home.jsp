<%-- 
    Document   : home
    Created on : Nov 2, 2019, 5:24:54 PM
    Author     : RYH
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="RYH98">
    <title>H O M E</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="icon.png"/>
</head>
<body>
<div class="container">
    <section style="background-image: url(b.jpg); height: 45%; background-attachment: fixed; background-position: top;">
        <div class="text-center">
            <a href="./login.jsp" class="btn btn-primary pull-left" style="margin: 50px;">Logout</a>
            <h3 style="color: white; letter-spacing: 2px; padding-top: 10%;"><b>"DATA MAHASISWA"</b></h3>
            <h4 style="color: white;">Modul 3 RSBK - Kelompok05</h4>
            <p style="color: white;">Welcome, <%=session.getAttribute("userName")%></p>
        </div>
    </section>
    <section style="background-image: url(./bg.jpg); background-attachment: fixed; background-position: right;">
        <div class="container" style="background-color: #f5f5f5d6; padding-top: 33px; padding-bottom: 33px;">
            <form action="./StudentServlet" method="POST" class="form-horizontal">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="panel">
                        <div class="panel-heading" style="background-color: #28425bd6;">
                            <strong style="letter-spacing: 2px; color: cornsilk;"><center>FILL THE DATA CORRECTLY</center></strong>
                        </div>
                        <div class="panel-body">   
                            <div class="row row-no-gutters">
                                <div class="form-group">
                                    <label class="col-lg-2 pull-left text-right">Student ID</label>
                                    <div class="col-lg-10"><input class="form-control" type="text" name="studentId" value="${student.studentId}" placeholder="Your ID Number..." pattern="[0-9]" required/></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 pull-left text-right">First Name</label>
                                    <div class="col-lg-10"><input class="form-control" type="text" name="firstname" value="${student.firstName}" placeholder="Your first name..." required/></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 pull-left text-right">Last Name</label>
                                    <div class="col-lg-10"><input class="form-control" type="text" name="lastname" value="${student.lastName}" placeholder="Your last name..." required/></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 pull-left text-right">Address</label>
                                    <div class="col-lg-10"><input class="form-control" type="text" name="address" value="${student.address}" placeholder="Your address..." required/></div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <input type="submit" class="btn btn-success btn-md" name="action" value="Add" />
                            <input type="submit" class="btn btn-primary btn-md" name="action" value="Edit" />
                            <input type="submit" class="btn btn-danger btn-md" name="action" value="Delete" />
                            <input type="submit" class="btn btn-warning btn-md pull-right" name="action" value="Search" />
                        </div>
                    </div>    
                </div>
            </form>
            <div class="col-lg-10 col-lg-offset-1">
                <button style="text-align: center; letter-spacing: 2px;" type="button" class="collapsible"><strong>DETAIL INFORMATION</strong></button>
                    <div class="content"><br>
                        <table class="table table-hover table-responsive">  
                            <thead style="background-color: rgba(46, 69, 90, 0.788)">
                                <tr style="color: white;">
                                    <th>No. ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Address</th>
                                </tr>
                            </thead>
                            <tbody>
                                <s:forEach items="${allStudents}" var="stud">
                                    <tr>
                                        <td>${stud.studentId}</td>
                                        <td style="background-color: #474d421c;">${stud.firstName}</td>
                                        <td>${stud.lastName}</td>
                                        <td style="background-color: #474d421c;">${stud.address}</td>
                                    </tr>
                                </s:forEach>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </section>
</div>
<footer>
    <div class="section text-center">
        <strong style="margin-bottom: 0px; color: white;">© Kelompok05. Praktikum RSBK 2019</strong>
        <p style="letter-spacing: 4px; margin-bottom: 5px; color: white;">All Rights Reserved</p>
    </div>
</footer>
<script src="js/bootstrap.min.js"></script>
<script>
    var coll = document.getElementsByClassName("collapsible");
    var i;
    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
        });
    }
</script>
</body>
</html>