<%-- 
    Document   : Choose
    Created on : Mar 22, 2023, 1:05:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="grading" method="get">
            Number of question: <input type="number" name="numOfQues">
            <input type="submit" value="Submit">
            <p>${message}</p>
        </form>
    </body>
</html>
