<%-- 
    Document   : initialisierungliste1
    Created on : 23.05.2022, 16:39:35
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
        <a href="index.html">Zur Startseite</a>
        <%
            java.io.BufferedReader r = new java.io.BufferedReader(new java.io.FileReader(application.getRealPath(application.getAttribute("produktverzeichnis").toString() +"/"+ config.getInitParameter("datei"))));
        %>
        <p><%= r.readLine()%></p>
    </body>
</html>
