<%-- 
    Document   : cookies
    Created on : 30.05.2022, 16:11:34
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, td {border:1px solid}
        </style>
    </head>
    <body>
        <form action="cookies.jsp">
            <table>
                <tr>
                    <td>Cookie-Name (nicht leer)</td><td><input type="text" name="name" value="<%if(request.getParameter("name") != null) out.print(request.getParameter("name"));%>" /></td>
                </tr>
                <tr>
                    <td>Cookie-Wert (nicht leer)</td><td><input type="text" name="value" value="<%if(request.getParameter("value") != null) out.print(request.getParameter("value"));%>" /></td>
                </tr>
                <tr>
                    <td>Cookie-Lebensdauer (sek)</td><td><input type="text" name="maxage" value="<%if(request.getParameter("maxage") != null) out.print(request.getParameter("maxage"));%>" /></td>
                </tr>
                <tr><td><input type="submit" value="Neuen Cookie setzen" /></td></tr>
                <tr><td><input type="submit" name="readC" value="Nur Cookies lesen" /></td></tr>
            </table>
        </form>
        <%
            if(request.getParameter("readC")!=null)
                response.sendRedirect("cookies.jsp");
        %>
        <h1>Ergebnis</h1>
        <h2> Daten des gesetzen Cookies</h2>
        <table>
            <tr><td>Cookie-Name</td><td>Cookie-Wert</td><td>Cookie-Max-Age</td></tr>

            <%
                if (request.getParameter("name") != null && request.getParameter("value") != null && request.getParameter("name") != "" && request.getParameter("value") != "") {
                    javax.servlet.http.Cookie cookie = new Cookie(request.getParameter("name"), request.getParameter("value"));
            %>
            <tr>
                <td><%=cookie.getName()%></td>
                <td><%=cookie.getValue()%></td>
                <%
                    if (request.getParameter("maxage") != null && request.getParameter("maxage") != "") {
                        try {
                            cookie.setMaxAge(Integer.parseInt(request.getParameter("maxage")));
                        } catch (Exception e) {
                            throw new Exception("Fehler bei Eingabe");
                        }
                    } else {
                        cookie.setMaxAge(-1);
                    }
                %><td><%= cookie.getMaxAge()%></td><%
                    response.addCookie(cookie);%> </tr> <%
                            }
                %>
        </table>
        <%
            javax.servlet.http.Cookie[] cookies = request.getCookies();

            StringBuffer sb = new StringBuffer();
            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    javax.servlet.http.Cookie coo = cookies[i];
                    sb.append("<tr><td>" + coo.getName() + "</td><td>" + coo.getValue() + "</td><td>" + coo.getMaxAge() + "</td></tr>");
                }
            }
        %>
        <h2> Bereits gesetzte Cookies </h2>
        <table>
            <tr><td>Cookie-Name</td><td>Cookie-Wert</td><td>Cookie-Max-Age</td></tr>
            <%= sb%>
        </table>
        <h2>HTTP-Header Zeilen des Requests</h2>
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
    </body>
</html>