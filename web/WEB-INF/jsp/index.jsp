<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to File Vault</title>
        <link href="./css/webCss.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="image_cont">
            <img src="./img/FileVaultlogo.png" alt="File Vault">
        </div>
        <div class="container">
            <form class="signUp" action="RegisterUser" method="post">
                <h3>Create Your Account</h3>
                <p>Just enter your details to join
                </p>
                <input class="w100" name="REmail" type="email" placeholder="Insert eMail" reqired autocomplete='off' required/>
                <input type="password" name="Rpassword" id="pws1" placeholder="Insert Password" required />
                <input type="password" placeholder="Verify Password" id="pws2" onchange='checkpassword();' required />
                <input type="text" name="UserName" placeholder="Enter Your Name" required />
                <input type="text" name="Institute" placeholder="Enter Institute Name" required />
                <button class="form-btn sx log-in" type="button">Log In</button>
                <button class="form-btn kx" type="submit" id="signUp" disabled>Sign Up</button>
            </form>
            <form class="signIn" action="login" method="post">
                <h3>Welcome</br>Back !</h3>
                <!--<button class="fb" type="button">Log In With Facebook</button>
                <p>- or -</p>-->
                <input type="email" name="email" placeholder="Insert eMail" autocomplete='off' required />
                <input type="password" name="password" placeholder="Insert Password" required />
                <button class="form-btn sx back" type="button">Back</button>
                <button class="form-btn dx" type="submit">Log In</button>
            </form>
        </div>
        <div class="cont1">${requestScope.adminMessage}</div>
        <script>
            function checkpassword(){
                pass1 = document.getElementById('pws1').value;
                pass2 = document.getElementById('pws2').value;
                if(pass1==pass2){
                    document.getElementById('signUp').className ="form-btn dx";
                    document.getElementById('signUp').disabled = false;
                }
                //alert(pass1);
            }
        </script>
<script src="./JavaScript/jquery-2.js"></script>
<script id="rendered-js">
$(".log-in").click(function () {
  $(".signIn").addClass("active-dx");
  $(".signUp").addClass("inactive-sx");
  $(".signUp").removeClass("active-sx");
  $(".signIn").removeClass("inactive-dx");
});

$(".back").click(function () {
  $(".signUp").addClass("active-sx");
  $(".signIn").addClass("inactive-dx");
  $(".signIn").removeClass("active-dx");
  $(".signUp").removeClass("inactive-sx");
});
//# sourceURL=pen.js
    </script>
    </body>
    
</html>
