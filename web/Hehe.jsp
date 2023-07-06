<%-- 
    Document   : EOS_User
    Created on : Mar 14, 2023, 10:47:52 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p id="time" style="color: red"></p>
        <p>${examCode}</p>
        <p>${account}</p>
        <%int count=1;%>
        <form action="grading" method="post">
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
            <input type="submit" name="name" value="SUBMIT">

        </form>
        <br><br><br><br>
        <script>
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
    </body>
</html>
