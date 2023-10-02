<%-- 
    Document   : direktive-include1
    Created on : 28.04.2022, 10:27:51
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
    border-spacing: 10px;
}
td.border1 {
    padding-left:0px;
    padding-right:20px;
}
td.border2 {
    padding-left:20px;
    padding-right:20px;
    border-style:solid;
    border-width: 1px; 
}
        </style>
    </head>
    <body>
        <table>
            <tr>
                <td class="border1">
                    <%@include file="kopfzeile.jsp" %>
                </td>
            </tr>
            <tr>
                <td class="border2">
                    <h1> Dies ist der Inhalt der ersten Hauptseite</h1>
                    <p> Jetzt kommt der Inhalt </p>
                </td>
            </tr>
            <tr>
                <td class="border2">
                    <%@include file="fusszeile.jsp" %>
                </td>
            </tr>
        </table>

    </body>
</html>
