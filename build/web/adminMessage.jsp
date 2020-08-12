<%-- 
    Document   : adminMessage
    Created on : 30 Jul, 2020, 6:48:59 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Vault Message</title>
        <link href="./css/webCss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="./css/fileVault.css">
    </head>
    <body>
        <header>
            <a href="redirect.jsp"><img src="./img/logout.png" alt="Pineapple" style="width:50px;height:50px; float:right;"></a>
            <a href="adminMain.jsp"><img src="./img/home.jpg" alt="Pineapple" style="width:50px;height:50px; float:left;"></a>
            <h2>File Vault</h2>
        </header>
        <div class="container">
            <h2>${requestScope.adminMessage}</h2>
        </div>
    </body>
</html>
