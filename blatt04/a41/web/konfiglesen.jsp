<%-- 
    Document   : konfiglesen
    Created on : 21.05.2022, 19:32:35
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
        <h1>Konfigurationsparameter lesen</h1>
        <p>Unterscheide: Konfigurationsparameter für</p> <ul><li>JSP-Seite (Servlet)</li><li>Kontext (gesamte Web-Anwendung)</li></ul>
        <h1>Konfigurationsparameter f&uuml;r die JSP-Seite</h1>
        <table>
            <tr>
                <td>Name</td><td>Wert</td>
            </tr>
            <tr>
                <td>fork</td><td><%= config.getInitParameter("fork") %></td>
            </tr>
            <tr>
                <td>xpoweredBy</td><td><%= getServletConfig().getInitParameter("xpoweredBy") %></td>
            </tr>
            <tr>
                <td>Zusammenhang</td><td><%= getServletConfig().getInitParameter("Zusammenhang") %></td>
            </tr>
           
        </table>
            <br />
            <h1>Konfigurationsparameter f&uuml;r die Web-Anwendung</h1>
            <table>
                <tr>
                    <td>Name</td><td>Wert</td>
                </tr>
                <tr>
                    <td>tipStrDefault</td><td>${initParam.tipStrDefault}</td>
                </tr>
                <tr>
                    <td>Thema</td><td>${initParam.Thema}</td>
                </tr>
            </table>
    </body>
</html>
