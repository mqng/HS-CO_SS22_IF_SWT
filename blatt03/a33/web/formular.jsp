<%-- 
    Document   : formular
    Created on : 16.05.2022, 16:18:44
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ermittleparameter.jsp" method="POST">
            <input type="text" name="name" value="" />
            <input type="text" name="alter" value="" />
            <input type="submit" value="Senden" />
        </form>

    </body>
</html>
