<%-- 
    Document   : register
    Created on : Nov 2, 2019, 5:25:17 PM
    Author     : RYH
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="RYH98">
    <title>R E G I S T E R</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="shortcut icon" href="icon.png"/>
</head>
<body style="background-image: url(b.jpg); background-size: cover;">
  <div class="row content">
    <div class="col-lg-12" style="margin-top: 17vh;">
      <div class="col-lg-7 text-center">
        <img src="icon.png" style="margin-top: 55px; background-color: #fffffff0; border-radius: 130px; padding: 55px; width: auto;">
      </div>
      <div class="col-lg-4">
        <form method="POST" action="./RegisterServlet">
          <div class="panel" style="margin-top: 20px; background-color: rgba(0, 0, 0, 0);">
            <div class="panel-heading" style="background-color:#333333e3; border-radius: 23px 23px 0 0;">
              <h3><center><strong style="letter-spacing: 2px; color: white;">SIGN UP</strong></h3>
              <p style="color: white; text-align: center;">Enter your username & password to be registered:</p><hr>
              <div class="form-group">
                <input type="text" class="form-control black" placeholder="Username" name="userName" type="text" data-toggle="tooltip" title="Type your Username here" autofocus required />
              </div>
              <div class="form-group">
                <input type="password" class="form-control black" placeholder="Password" name="password" value="" data-toggle="tooltip" title="Type your Password here"required />
              </div>
                <input type="submit" name="register" value="SIGN UP" class="btn btn-block btn-success text-center" />
            </div>
            <div class="panel-footer text-center" style="border-radius: 0 0 23px 23px;">
              <p>Already have an account? Let's sign in <a href="./login.jsp"/><strong>here</strong></a>!</p><hr>
              <p style="font-size: 7pt;">© Kelompok05 | Praktikum RSBK 2019 | All Rights Reserved</p>
            </div>
        </form>
      </div>
    </div>
  </div>
<script src="js/bootstrap.min.js"></script>
</body>
</html>