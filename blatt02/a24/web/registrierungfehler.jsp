<%-- 
    Document   : registrierungfehler
    Created on : 26.04.2022, 17:00:29
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
         <%
             String s = request.getParameter("par");
            if (s.equals("notequal")) {
                out.println("Password ist nicht gleich\n");   
            }
            if (s.equals("null")) {
                out.println("Es wurden Eingaben ausgelassen");
            }
        %>
        <p><a href="registrierungstart.jsp"> Zur Startseite</a></p> 
    </body>
</html>
