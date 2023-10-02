<%-- 
    Document   : initialisierungstart
    Created on : 23.05.2022, 16:23:26
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%!
            public void jspInit() {
                getServletContext().setAttribute("produktverzeichnis", getServletContext().getInitParameter("reldir"));
            }
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="initialisierungliste1.jsp"> Liste 1</a>
        <a href="initialisierungliste2.jsp"> Liste 2 </a>
    </body>
</html>
