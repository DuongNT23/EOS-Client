<%-- 
    Document   : login
    Created on : Mar 13, 2023, 1:09:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>EOS User</title>
        <link rel="stylesheet" href="CSS/login.css" />
    </head>
    <body>
        <%
              String error ="";
              if(request.getAttribute("error") != null){
                  error = (String)request.getAttribute("error");
              }
              String examCode ="";
              if(request.getAttribute("examCode") != null){
                  examCode = (String)request.getAttribute("examCode");
              }
              String account ="";
              if(request.getAttribute("account") != null){
                  account = (String)request.getAttribute("account");
              }
              String pass ="";
              if(request.getAttribute("pass") != null){
                  pass = (String)request.getAttribute("pass");
              }
        %>
        <div style="width: 100%">
            <div class="content">
                <div
                    class="title"
                    style="
                    color: red;
                    text-align: center;
                    margin: 10px 0px 10px 0px;
                    font-weight: bold;
                    "
                    >
                    You cannot take the exam if EOS runs under a virtual machine.
                </div>
                <form action="login" method="post">
                    <div style="display: flex;justify-content: center;">
                        <div>
                            <table>
                                <tr>
                                    <td class="infor">
                                        Exam Code:
                                    </td>
                                    <td><input class="textInfor" type="text" class="infor" name="examCode" required="" value="<%=examCode%>"/></td>
                                </tr>
                                <tr>
                                    <td class="infor">User Name:</td>
                                    <td><input class="textInfor" type="text" class="infor" name="account" required=""value="<%=account%>"/></td>
                                </tr>
                                <tr>
                                    <td class="infor">Password:</td>
                                    <td><input class="textInfor" type="text" class="infor" name="pass" required="" value="<%=pass%>"/></td>
                                </tr>
                                <tr>
                                    <td class="infor">Domain:</td>
                                    <td>
                                        <input
                                            class="textInfor"
                                            type="text"
                                            value="FU.EDU.VN"
                                            class="infor"
                                            id="domain"
                                            readonly
                                            />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input
                                            type="submit"
                                            class="btn"
                                            name=""
                                            id=""
                                            value="Login"
                                            style="margin-right: 20px"
                                            />
<!--                                        <input
                                            type="submit"
                                            class="btn"
                                            name=""
                                            id=""
                                            value="Exit"
                                            />-->
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </form>
                <div
                    style="
                    color: blue;
                    text-align: center;
                    margin-bottom: 10px;
                    font-weight: bold;
                    "
                    >
                    Register the exam may take time, please wait!
                </div>
                <div>
                    <p style="color: red; text-align: center; margin-bottom: 10px; font-weight: bold; "><%=error%></p>
                </div>
            </div>
        </div>
    </body>
</html>
