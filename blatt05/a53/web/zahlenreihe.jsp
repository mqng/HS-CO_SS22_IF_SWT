<%-- 
    Document   : zahlenreihe
    Created on : 10.06.2022, 23:28:53
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
            String s0 = "";
            String s1 = "";
            String s2 = "";
            StringBuffer sb = new StringBuffer();

            if (request.getParameter("z") != null && request.getParameter("z") != "" && request.getParameter("b") != null && request.getParameter("b") != "" && request.getParameter("e") != null && request.getParameter("e") != "") {
                int z = 0, b = 0, e = 0;
                
                try {
                    z = Integer.parseInt(request.getParameter("z"));
                    if (z <= 0) s0 = "Zahl muss positiv sein";
                } catch (Exception ex) {
                    s0 = "Ung&uuml;ltige Eingabe";
                }

                try {
                    b = Integer.parseInt(request.getParameter("b"));
                    if (b <= 0) s1 = "Zahl muss positiv sein";
                } catch (Exception ex) {
                    s1 = "Ung&uuml;ltige Eingabe";
                }

                try {
                    e = Integer.parseInt(request.getParameter("e"));
                    if (e <= 0) s2 = "Zahl muss positiv sein";
                    if (b > e) {
                        s1 = "b muss kleiner als e sein";
                        s2 = "e muss gr&ouml;&szlig;er sein als b";
                    }
                } catch (Exception ex) {
                    s2 = "Ung&uuml;ltige Eingabe";
                }

                sb.append("<p>Berechnungsergebnis f&uuml;r die aktuelle Zahlenreihe:</p>");
                sb.append("<p>Basiszahl ist " + request.getParameter("z") + "</p>");
                sb.append("<table>");
                int m = b;
                while (m <= e) {
                    sb.append("<tr><td>" + m + "</td><td>" + m++ * z + "</td></tr>");
                }
                sb.append("</table>");

                Object ob = session.getAttribute("z=" + request.getParameter("z") + ",b=" + request.getParameter("b") + ",e=" + request.getParameter("e"));
                if (ob == null) {
                    session.setAttribute("z=" + request.getParameter("z") + ",b=" + request.getParameter("b") + ",e=" + request.getParameter("e"), new java.util.Date());
                }
            }
        %>
        <h1>Berechnung von Zahlenreihen{m*z|b&le;m&le;e}.</h1>
        <form action="zahlenreihe.jsp">
            <p>Basiszahl z: <input type="text" name="z" value="<%if (request.getParameter("z") != null)
                    out.print(request.getParameter("z"));%>" /> <%=s0%></p>
            <p>Beginn b: <input type="text" name="b" value="<%if (request.getParameter("b") != null)
                    out.print(request.getParameter("b"));%>" /> <%=s1%></p>
            <p>Ende e: <input type="text" name="e" value="<%if (request.getParameter("e") != null)
                    out.print(request.getParameter("e"));%>" /> <%=s2%></p>
            <input type="submit" value="Absenden" /><input type="submit" value="Sitzung beenden" name="endsession" />
        </form>
        <%=sb%>
        <p>Bisher wurden folgende Zahlenreihen innerhalb der Sitzung berechnet</p>
        <table>
            <%
                java.util.List<String> l = java.util.Collections.list(session.getAttributeNames());
                for (String s : l) {
                    String ss = s.replace(',', '&');
                    out.print("<tr><td><a href='zahlenreihe.jsp?" + ss + "'>" + s + "</a>" + "</td><td>" + session.getAttribute(s) + "</td></tr>");
                }
            %>
        </table>
        <%
            if (request.getParameter("endsession") != null) {
                session.invalidate();
                response.sendRedirect("zahlenreihe.jsp");
            }
        %>
    </body>
</html>
