<%-- 
    Document   : ermittleparameter
    Created on : 16.05.2022, 16:18:20
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
            java.util.Enumeration<String> en = request.getParameterNames();            
            java.util.List<String> l = java.util.Collections.list(en);
            
            out.print("<p>Anzahl der Parameter: " + l.size()+ "</p>");

            for(String s: l)
                out.print("<p> Parametername: " + s + " Wert: " + request.getParameter(s) +"</p>");
        %>
    </body>
</html>
