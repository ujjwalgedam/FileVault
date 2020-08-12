<%-- 
    Document   : adminMain
    Created on : 23 Jul, 2020, 6:46:35 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wel Come Administrator</title>
        <link href="./css/webCss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="./css/fileVault.css">
        <style>
            .boxes{
            width:50%;
            float:left;
            }
            #mainDiv{
                    position: fixed;
                    top: 50%;
                    left: 50%;
                    /* bring your own prefixes */
                    transform: translate(-50%, -50%);
            }
            img{
                    max-width:100%;
                    width:350px;
                    height:350px;
                    margin: 50px;
            }
            img.pos_right{
                width:50px;height:50px; float:right;
                margin: 0px;
            }
            img.pos_left{
                width:50px;height:50px; float:left;
                margin: 0px;
            }
        </style>
    </head>
    <body>
        <header>
            <a href="redirect.jsp"><img src="./img/logout.png" alt="Pineapple" class="pos_right"></a>
            <h2>File Vault</h2>
        </header>
        <div id="mainDiv">
            <div id="divOne" class="boxes">
                <a href="adminFileVaultView.jsp"><img src="./img/adminFileVault.png" alt="Paris"><h3 style="text-align: center">Open Vault</h3></a>
            </div>
            <div id="divTwo" class="boxes">
                <a href="approveUser.jsp"><img src="./img/approveUser.png" alt="Paris"><h3 style="text-align: center">Approve User</h3></a>
            </div>
        </div>
    </body>
</html>
