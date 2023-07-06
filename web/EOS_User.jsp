<%-- 
    Document   : haha
    Created on : Mar 22, 2023, 12:30:40 AM
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
        <title>EOS_User Page</title>
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
            <form action="grading" method="post">
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
                        <input type="checkbox" onclick="openButton('buttonSub1')" style="margin-left: 3em;" value=""><label style="color: blue;"> I want to finish the exam</label>
                        <input type="submit" id="buttonSub1" class="button_Submit" value="Finish">
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
                    <h1 id="time" style="color: blue;font-size: 3em;"></h1>
                </div>
            </div>
            <div class="banner">
                <div class="content_exam">
                    <%int count=1;%>
        
            <c:forEach items="${listQues}" var="q">
                <h3><%=count%>. ${q.getQuestion()}</h3>
                <%count++;%>
                A:<input type="radio" name="${q.getId()}" value="${q.getOptionA()}"><span>${q.getOptionA()}</span><br>
                B:<input type="radio" name="${q.getId()}" value="${q.getOptionB()}"><span>${q.getOptionB()}</span><br>
                C:<input type="radio" name="${q.getId()}" value="${q.getOptionC()}"><span>${q.getOptionC()}</span><br>
                D:<input type="radio" name="${q.getId()}" value="${q.getOptionD()}"><span>${q.getOptionD()}</span><br>
                </c:forEach>
            <br><br><br><br>
            <input style="display: none;" id="inputTime" type="text" name="time">
            <!--<input type="submit" name="name" value="SUBMIT">-->

        
                </div>
            </div>
            <div class="footer_main">
                <div class="footer">
                    <input type="checkbox" onclick="openButton('buttonSub2')" style="margin-left: 1em;" value=""><label style="color: blue;"> I want to finish the exam</label>
                    <input type="submit" id="buttonSub2" class="button_Submit" value="Finish">
                </div>
            </div>
        </form>
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
        var countDownTime = new Date().getTime() + (1000 * 60 * 30);
            var x = setInterval(function () {
                var now = new Date().getTime();
                var distance = countDownTime - now;

                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                document.getElementById("time").innerHTML = minutes + ":" + seconds;
                document.getElementById("inputTime").value = minutes + ":" + seconds;
                if (distance <= 0) {
                    document.getElementById("inputTime").value = "0" + ":" + "0";
                    document.getElementById("time").innerHTML = "nghia";
                    document.getElementById("form").submit();
                }
            }, 1000);
    </script>
</html>

<!--<input style="margin-left: 20%" type="checkbox" id="myCheckbox" class="checkbox_bt" value=""><label style="color: blue;"> I want to finish the exam</label>
                <input type="submit" id="submitBtn" class="button_Submit" value="FINISH">-->

<!--// Lấy checkbox và button submit
            var checkbox = document.getElementById('myCheckbox');
            var submitBtn = document.getElementById('submitBtn');

            // Thêm sự kiện click cho button
            submitBtn.addEventListener('click', function (event) {
                // Kiểm tra checkbox đã được tích chưa
                if (checkbox.checked) {
                    // Nếu đã tích, thực hiện hành động của button
                    event.target.submit();
                }else{
                    event.preventDefault();
                }
            });
-->

<!--"SELECT top 10 * FROM "
                    +examCode
                    + " ORDER BY CHECKSUM(NEWID())"-->
