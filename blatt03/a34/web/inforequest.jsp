<%-- 
    Document   : inforequest
    Created on : 16.05.2022, 17:22:05
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
        <h1> Implizites Objekt request: Allgemeine Informationen </h1>
        <table>
            <tr>
                <td>Methode</td><td>Wert</td>
            </tr>
            <tr>
                <td>getServerName()</td><td><%= request.getServerName() %></td>
            </tr>
            <tr>
                <td>getServerPort()</td><td><%= request.getServerPort() %></td>
            </tr>
            <tr>
                <td>getRemoteAddr()</td><td><%= request.getRemoteAddr() %></td>
            </tr>
            <tr>
                <td>getRemoteHost()</td><td><%= request.getRemoteHost() %></td>
            </tr>
            <tr>
                <td>getQueryString()</td><td><%= request.getQueryString() %></td>
            </tr>
            <tr>
                <td>getMethod()</td><td><%= request.getMethod() %></td>
            </tr>
            <tr>
                <td>getRequestURL()</td><td><%= request.getRequestURL() %></td>
            </tr>
            <tr>
                <td>getRequestURI()</td><td><%= request.getRequestURI() %></td>
            </tr>
            <tr>
                <td>getContextPath()</td><td><%= request.getContextPath() %></td>
            </tr>
            <tr>
                <td>getServletPath()</td><td><%= request.getServletPath() %></td>
            </tr>
        </table>
            <h1> Implizites Objekt request: HTTP-Header </h1>
            <p> Methoden: getHeaderNames() und getHeader(String name) </p>
            <table>
                <tr>
                <td>Methode</td><td>Wert</td>
            </tr>
            <%
                java.util.Enumeration<String> enH = request.getHeaderNames();
                java.util.List<String> l1 = java.util.Collections.list(enH);
                for(String s: l1) {
                    out.print("<tr><td>" + s + "</td><td><pre>" + request.getHeader(s) + "</pre></td></tr>");
                }
            %>
            </table>
            <h1> Implizites Objekt request: Request-Parameter</h1>
            <table>
                <tr>
                <td>Methode</td><td>Wert</td>
                </tr>
            <%
                java.util.Enumeration<String> enP = request.getParameterNames();
                java.util.List<String> l2 = java.util.Collections.list(enP);
                for(String s: l2) {
                    out.print("<tr><td>" + s + "</td><td><pre>" + request.getParameter(s) + "</pre></td></tr>");
                }
            %>
            </table>
    </body>
</html>
