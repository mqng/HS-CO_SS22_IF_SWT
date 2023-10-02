<%-- 
    Document   : asciitabelle
    Created on : 18.04.2022, 20:58:57
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, td {
                border: 1px solid;
            }
        </style>
    </head>
    <body>
        <table>
        <%
            StringBuffer sb = new StringBuffer();
            int a=32; int b=33;
            for(int i = 0; i < 12; i++) {
                sb.append("<tr>");
                for(int j = 0; j < 8; j++) {
                    sb.append("<td>");
                    sb.append("<table>");
                    sb.append("<tr>");
                    sb.append("<td>" + (a) + "</td>");
                    sb.append("<td>");
                    if (a == 60) {
                        sb.append("&lt;");
                    }
                    else if (a == 62) {
                        sb.append("&gt;");
                    }
                    else {
                        sb.append((char) (a));
                    }
                    sb.append("</td>");
                    sb.append("</tr>");
                    sb.append("</table>");
                    sb.append("</td>");
                    a+=12;
                }
                a=b+i;
                 sb.append("</tr>");
            }
        %>
        <%= sb %>
        </table>
    </body>
</html>
