<%-- 
    Document   : grading.jsp
    Created on : Mar 22, 2023, 1:00:42 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Submit</title>
        <style>
            * {
                margin: 0;
            }

            .total {
                background-color: #f1f1f1;
                height: auto;
                width: 100%;
                overflow-x: hidden;
            }

            .top {
                height: 15%;
                padding: 0.6em;
                display: flex;
            }

            .left {
                width: 15%;
                height: 90%;
                display: flex;
                padding-top: 1em;
            }

            .digital {
                color: blue;
                font-weight: bold;
            }

            .left_p {
                text-align: right;
            }
            .middle_main{
                width: 22%;
                height: 90%;
            }
            .middle{
                width: 100%;
                height: 100%;
                display: flex;
            }
            .button_Submit{
                background-color: yellow;
                color: gray;
                font-weight: 700;
                height: 2em;
                width: 6em;
                margin-left: 2em;
                border: none;
                cursor: default;
            }
            .right{
                width: 20%;
                height: 100%;
                display: grid;
                place-items: center;
            }
            .banner{
                width: 100%;
                height: 70%;
                display: flex;
                justify-content: center;
            }
            .content_exam{
                overflow-x: hidden;
                width: 95%;
                height: 32em;
                border: 1px solid black;
                /* margin-bottom: 3em; */
            }
            .footer_main{
                width: 100%;
                height: 10%;
                display: flex;
                justify-content: left;
                padding: 1.1em;
            }
            .footer{
                width: 98%;
                height: 100%;
            }
        </style>
    </head>

    <body>
        <div class="total">
            <div class="top">
                <div class="left">
                    <div style="width: 30%;">
                        <p class="left_p">Machine:</p>
                        <p class="left_p">Server: </p>
                        <p class="left_p">Duration: </p>
                        <p class="left_p">Q mark: </p>
                    </div>
                    <div style="width: 70%;">
                        <p><span class="digital">Tool EOS</span></p>
                        <p><span class="digital">Tool EOS</span></p>
                        <p><span class="digital">60 minutes</span></p>
                        <p><span class="digital">1</span></p>
                    </div>

                </div>
                <div class="middle_main">
                    <div style="width: 100%;">
                        <!--                    <input type="checkbox" onclick="openButton('buttonSub1')" style="margin-left: 3em;" value=""><label style="color: blue;"> I want to finish the exam</label>
                                            <input type="submit" id="buttonSub1" class="button_Submit" value="Finish">-->
                    </div>
                    <div class="middle" >
                        <div style="width: 30%;">
                            <p class="left_p">Student:</p>
                            <p class="left_p">Exam code: </p>
                            <p class="left_p">Open code: </p>
                            <p class="left_p">Total Marks: </p>
                        </div>
                        <div style="width: 70%;">
                            <p><span class="digital">${account}</span></p>
                            <p><span class="digital">${examCode}</span></p>
                            <p><span class="digital">${examCode}</span></p>
                            <p><span class="digital">30</span></p>
                        </div>
                    </div>

                </div>
                <div class="right">
                    <img src="image/vietname.jpg" alt="" width="200px" height="100px">
                    <h1 style="color: blue;font-size: 3em;">${time}</h1>
                </div>
            </div>
            <div>
                <h1 style="color: red; text-align: center">Grade: ${mark}</h1>
            </div>

            <div>
                <h3>Your choice</h3>
                <c:set var="i" value="${1}"/>
                <c:forEach var="c" items="${listChoice}">
                        <p>${i}:${c}</p>
                        <c:forEach var="q" items="${listQues}">
                            <c:if test="${i == Integer.parseInt(q.getId())}">
                                  <c:set var="i" value="${i+1}"/>
                                <p>Correct Answer: ${q.getAnswer()}</p>
                            </c:if>
                        </c:forEach>
                </c:forEach>
            </div>

            <div class="footer_main">
                <div class="footer">
                    <h3 style="color: blue">Submit successfully!</h3>
                    <!--                    <input type="checkbox" onclick="openButton('buttonSub2')" style="margin-left: 1em;" value=""><label style="color: blue;"> I want to finish the exam</label>
                                        <input type="submit" id="buttonSub2" class="button_Submit" value="Finish">-->
                </div>
            </div>
        </div>
    </body>
    <script>
        function openButton(idx) {
            var x = document.getElementById(idx);
            if (x.style.border === "1px solid black") {
                x.style.border = "none";
                x.style.color = "gray";
                x.style.cursor = "default"
            } else {
                x.style.border = "1px solid black";
                x.style.color = "black";
                x.style.cursor = "pointer"
            }
        }
    </script>
</html>
