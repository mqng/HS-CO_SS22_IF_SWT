<%-- 
    Document   : registrierungstart
    Created on : 25.04.2022, 16:33:01
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
        <form name="registrierung" action="registrierungverarbeitung.jsp">
            <p>Benutzername: <input type="text" name="benutzername" value="" /></p>
            <p>Password: <input type="password" name="password" value="" /></p>
            <p>Password: <input type="password" name="passwordcheck" value="" />(Wiederholung)</p>
            <input type="submit" value="Absenden" />
        </form>
        <%
            if(request.getParameter("par")!= null) {
                if (Integer.parseInt(request.getParameter("par")) == 1) {
                    out.println("Sie haben sich erfolgreich angemeldet");
                }
            }
        %>
    </body>
</html>
