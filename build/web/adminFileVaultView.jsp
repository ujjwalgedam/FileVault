<%-- 
    Document   : adminFileVaultView
    Created on : 23 Jul, 2020, 7:48:01 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View File</title>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./css/perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css" href="./css/util.css">
        <link rel="stylesheet" type="text/css" href="./css/main.css">
        <link rel="stylesheet" type="text/css" href="./css/fileVault.css">
        <script src="./css/jquery-latest.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
            $("#divImagFile").hide();
            $("#divOfcFile").hide();
            $("#divPdfFile").hide();
            $("#divOthFile").hide();
                 $("#ShowImgFile").click(function(event){
                    $("#divOfcFile").hide();
                    $("#divPdfFile").hide();
                    $("#divOthFile").hide();
                       $.get('getFileData',{sFileType:"jpge|gif|png|jpg"},function(responseJson) {
                        if(responseJson!=null){
                            //$("#tabImgDtl").find("tr:gt(0)").remove();
                            var table1 = $("#tabImgDtl");
                            $.each(responseJson, function(key,value) { 
                                var newRow = "";
                                newRow += '<tr class="row100 body"><td class="cell100 column1">'+ value["sFileId"] +'</td><td class="cell100 column2">'+value["sUserName"]+'</td><td class="cell100 column3">'+ value["sFileName"] +'</td><td class="cell100 column4">'+ value["sFileDesc"]+'</td><td class="cell100 column5"><input type="button" id = "prompt" name = "prompt" value="download" onclick=fun_download(\''+value["sFilePws"]+'\',\''+ value["sFileName"] +'\');></td></tr>' ;
                                 var rowNew = $(newRow);
                                    //rowNew.children().eq(0).text(value['sFileId']); 
                                    //rowNew.children().eq(1).text(value['sUserName']); 
                                    //rowNew.children().eq(2).text(value['sFileName']); 
                                    //rowNew.children().eq(3).text(value['sFileDesc']); 
                                    //rowNew.children().eq(4).text(value['population']); 
                                    //rowNew.children().eq(5).text(value['capital']); 
                                    rowNew.appendTo(table1);
                            });
                            }
                        });
                        $("#divImagFile").show();          
              }); 
              $("#ShowOfcFile").click(function(event){
                    $("#divImagFile").hide();
                    $("#divPdfFile").hide();
                    $("#divOthFile").hide();
                       $.get('getFileData',{sFileType:"doc|ppt|xls|docx|pptx|xlsx"},function(responseJson) {
                        if(responseJson!=null){
                            //$("#tabOfcsDtl").find("tr:gt(0)").remove();
                            var table1 = $("#tabOfcsDtl");
                            $.each(responseJson, function(key,value) { 
                                var newRow = "";
                                newRow += '<tr class="row100 body"><td class="cell100 column1">'+ value["sFileId"] +'</td><td class="cell100 column2">'+value["sUserName"]+'</td><td class="cell100 column3">'+ value["sFileName"] +'</td><td class="cell100 column4">'+ value["sFileDesc"]+'</td><td class="cell100 column5"><input type="button" id = "prompt" name = "prompt" value="download" onclick=fun_download(\''+value["sFilePws"]+'\',\''+ value["sFileName"] +'\');></td></tr>' ;
                                 var rowNew = $(newRow);
                                    //rowNew.children().eq(0).text(value['sFileId']); 
                                    //rowNew.children().eq(1).text(value['sUserName']); 
                                    //rowNew.children().eq(2).text(value['sFileName']); 
                                    //rowNew.children().eq(3).text(value['sFileDesc']); 
                                    //rowNew.children().eq(4).text(value['population']); 
                                    //rowNew.children().eq(5).text(value['capital']); 
                                    rowNew.appendTo(table1);
                            });
                            }
                        });
                        $("#divOfcFile").show();          
              });
              $("#ShowPdfFile").click(function(event){
                    $("#divImagFile").hide();
                    $("#divOfcFile").hide();
                    $("#divOthFile").hide();                  
                       $.get('getFileData',{sFileType:"pdf"},function(responseJson) {
                        if(responseJson!=null){
                            //$("#tabPdfDtl").find("tr:gt(0)").remove();
                            var table1 = $("#tabPdfDtl");
                            $.each(responseJson, function(key,value) { 
                                var newRow = "";
                                newRow += '<tr class="row100 body"><td class="cell100 column1">'+ value["sFileId"] +'</td><td class="cell100 column2">'+value["sUserName"]+'</td><td class="cell100 column3">'+ value["sFileName"] +'</td><td class="cell100 column4">'+ value["sFileDesc"]+'</td><td class="cell100 column5"><input type="button" id = "prompt" name = "prompt" value="download" onclick=fun_download(\''+value["sFilePws"]+'\',\''+ value["sFileName"] +'\');></td></tr>' ;
                                 var rowNew = $(newRow);
                                    //rowNew.children().eq(0).text(value['sFileId']); 
                                    //rowNew.children().eq(1).text(value['sUserName']); 
                                    //rowNew.children().eq(2).text(value['sFileName']); 
                                    //rowNew.children().eq(3).text(value['sFileDesc']); 
                                    //rowNew.children().eq(4).text(value['population']); 
                                    //rowNew.children().eq(5).text(value['capital']); 
                                    rowNew.appendTo(table1);
                            });
                            }
                        });
                        $("#divPdfFile").show();          
              });
              $("#ShowOthFile").click(function(event){
                $("#divImagFile").hide();
                $("#divOfcFile").hide();
                $("#divPdfFile").hide();
                       $.get('getFileData',{sFileType:"dwg|zip|txt"},function(responseJson) {
                        if(responseJson!=null){
                            //$("#tabOthDtl").find("tr:gt(0)").remove();
                            var table1 = $("#tabOthDtl");
                            $.each(responseJson, function(key,value) { 
                                var newRow = "";
                                newRow += '<tr class="row100 body"><td class="cell100 column1">'+ value["sFileId"] +'</td><td class="cell100 column2">'+value["sUserName"]+'</td><td class="cell100 column3">'+ value["sFileName"] +'</td><td class="cell100 column4">'+ value["sFileDesc"]+'</td><td class="cell100 column5"><input type="button" id = "prompt" name = "prompt" value="download" onclick=fun_download(\''+value["sFilePws"]+'\',\''+ value["sFileName"] +'\');></td></tr>' ;
                                 var rowNew = $(newRow);
                                    //rowNew.children().eq(0).text(value['sFileId']); 
                                    //rowNew.children().eq(1).text(value['sUserName']); 
                                    //rowNew.children().eq(2).text(value['sFileName']); 
                                    //rowNew.children().eq(3).text(value['sFileDesc']); 
                                    //rowNew.children().eq(4).text(value['population']); 
                                    //rowNew.children().eq(5).text(value['capital']); 
                                    rowNew.appendTo(table1);
                            });
                            }
                        });
                        $("#divOthFile").show();          
              });
            });
        </script>
    </head>
    <body>
        <header>
            <a href="redirect.jsp"><img src="./img/logout.png" alt="Pineapple" style="width:50px;height:50px; float:right;"></a>
            <a href="adminMain.jsp"><img src="./img/home.jpg" alt="Pineapple" style="width:50px;height:50px; float:left;"></a>
            <h2>File Vault</h2>
        </header>
        <section>
            <nav>
                <ul>
                    <li><a id ="ShowImgFile" name = "ShowImgFile" href="#">Image Files</a></li>
                    <li><a id ="ShowOfcFile" name = "ShowOfcFile" href="#">Office Document Files</a></li>
                    <li><a id ="ShowPdfFile" name = "ShowPdfFile" href="#">PDF Files</a></li>
                    <li><a id ="ShowOthFile" name = "ShowOthFile" href="#">Other Files</a></li>
                </ul>
            </nav>
            <article>
                <div class="limiter">
                    <div class="container-table100">
                        <div class="wrap-table100">
                            <div class="table100 ver1 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1">Sr. No</th>
                                                <th class="cell100 column2">User Name</th>
                                                <th class="cell100 column3">File Name</th>
                                                <th class="cell100 column4">File Desc</th>
                                                <th class="cell100 column5">Download</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                                <div class="table100-body js-pscroll" name="divImagFile" id="divImagFile">
                                    <table name="tabImgDtl" id="tabImgDtl">
                                        <tbody>
                                            <!--
                                            <tr class="row100 body">
                                                <td class="cell100 column1"><a scr="#" onclick="myFunction()">Like a butterfly</a></td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">w</td>
                                            </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                                <div class="table100-body js-pscroll" name="divOfcFile" id="divOfcFile">
                                    <table name="tabOfcsDtl" id="tabOfcsDtl">
                                        <tbody>
                                            <!--
                                            <tr class="row100 body">
                                                <td class="cell100 column1"><a scr="#" onclick="myFunction()">Like a butterfly</a></td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">w</td>
                                            </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                                <div class="table100-body js-pscroll" name="divPdfFile" id="divPdfFile">
                                    <table name="tabPdfDtl" id="tabPdfDtl">
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="table100-body js-pscroll" name="divOthFile" id="divOthFile">
                                    <table name="tabOthDtl" id="tabOthDtl">
                                        <tbody>
                                            <!--
                                            <tr class="row100 body">
                                                <td class="cell100 column1"><a scr="#" onclick="myFunction()">Like a butterfly</a></td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">w</td>
                                            </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>
    </body>
    <script>
         function fun_download(sFilePws,sFileName){
            var left = (screen.width/2)-(300/2);
            var top = (screen.height/2)-(200/2);
            var thePrompt = window.open("", "", "width=300,height=200,titlebar=no,toolbar=no,location=no,resizable=no,menubar=no,top="+top+", left="+left);
            var theHTML = "";
            theHTML += "<p>Enter Password to Open / Download File</p>";
            theHTML += "<br/>";
            theHTML += "Password: <input type='password' id='thePass' placeholder='Enter Password...'/>";
            theHTML += "<br />";
            theHTML += "<input type='button' value='OK' id='authOK'/>";
            theHTML += "<br />";
            theHTML += "<div id='ErrorMsg'></div>";
            
            thePrompt.document.body.innerHTML = theHTML;
            var thePass = thePrompt.document.getElementById("thePass");
            var objErr = thePrompt.document.getElementById("ErrorMsg");
            thePrompt.document.getElementById("authOK").onclick = function () {
                if(sFilePws == thePass.value){
                    var link = document.createElement("a");
                    // If you don't know the name or want to use
                    // the webserver default set name = ''
                    link.setAttribute('download', "");
                    link.href = "./uploaded_files/"+sFileName;
                    document.body.appendChild(link);
                    link.click();
                    link.remove();
                    thePrompt.close();
                }else
                {
                    objErr.innerHTML = "Invalid Password !!!!!!!!!!!!! Please Try Again";
                }
                //
                
         }   
     }
        </script>
</html>
