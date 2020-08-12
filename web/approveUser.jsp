<%-- 
    Document   : approveUser
    Created on : 23 Jul, 2020, 7:51:00 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./css/perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css" href="./css/util.css">
        <link rel="stylesheet" type="text/css" href="./css/main.css">
        <link rel="stylesheet" type="text/css" href="./css/fileVault.css">
        <style>
            .btn-next
            {
                margin: 30px 0px;
                border-radius: 0px;
                background-color: #660000;
                color: #f5f5f5;
                font-size: 16px;
                width: 155px;
            }
        </style>
    </head>
    
    <body>
        <header>
            <a href="redirect.jsp"><img src="./img/logout.png" alt="Pineapple" style="width:50px;height:50px; float:right;"></a>
            <a href="adminMain.jsp"><img src="./img/home.jpg" alt="Pineapple" style="width:50px;height:50px; float:left;"></a>
            <h2>File Vault</h2>
            <%
                String username="root";
                String password="root";
                String url="jdbc:mysql://localhost:3306/filevaultdb";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                
                String sSql = "select User_id, User_Name,User_Institute,User_Email,User_Active_Status from user_master;";
                Statement statement = con.createStatement();
                ResultSet Rs = statement.executeQuery(sSql); 
                
            %>
        </header>
        <div class="limiter">
            <div class="container-table100">
                <div class="wrap-table100">
                    <div class="table100 ver1 m-b-110">
                        <div class="table100-head">
                            <table>
                                <thead>
                                    <tr class="row100 head">
                                        <th class="cell100 column1">Sr.No</th>
                                        <th class="cell100 column2">User Name</th>
                                        <th class="cell100 column3">Institute Name</th>
                                        <th class="cell100 column4">Email Address</th>
                                        <th class="cell100 column5">Approve Status</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="table100-body js-pscroll">
                            <table>
                                <tbody>
                                    <%
                                        while(Rs.next())
                                        {
                                    %>
                                    <tr class="row100 body">
                                        <td class="cell100 column1"><%=Rs.getString("User_id") %></td>
                                        <td class="cell100 column2"><%=Rs.getString("User_Name") %></td>
                                        <td class="cell100 column3"><%=Rs.getString("User_Institute") %></td>
                                        <td class="cell100 column4"><%=Rs.getString("User_Email") %></td>
                                        <%
                                            
                                            if(Rs.getString("User_Active_Status").equals("N")){
                                        %>
                                        <td class="cell100 column5"><input type="checkbox" name="chkStatus" onclick="chkClick(<%=Rs.getString("User_id")%>,this.checked)" ></td>
                                        <%
                                            }
                                            else {
                                        %>
                                            <td class="cell100 column5"><input type="checkbox" name="chkStatus" checked="checked" ></td>
                                        <%
                                            }
                                        %>
                                        
                                    </tr>
                                    <%
                                        }
                                        Rs.close();
                                        statement.close();
                                        con.close();
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="table100 ver2 m-b-110">
                        <form action="SaveApproval" method="post">
                            <input type="hidden" id="hValue" name = "hValue" value="">
                            <center><button class="btn btn-next" type="submit" >Submit</button> </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function chkClick(clickedId,sStatus)
            {
                var sValues = document.getElementById('hValue').value;
                if(sStatus){
                    sValues = sValues + clickedId + ",";
                }else{
                    sValues = sValues.replace(clickedId +',',"");
                }
                document.getElementById('hValue').value = sValues;
            }
        </script>
    </body>
</html>
