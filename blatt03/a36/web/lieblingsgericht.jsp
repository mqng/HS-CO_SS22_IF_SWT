<%-- 
    Document   : lieblingsgericht
    Created on : 16.05.2022, 17:53:55
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
        <jsp:useBean id="person1" class="jsplernen.lieblingsgericht" />
        <jsp:useBean id="person2" class="jsplernen.lieblingsgericht" />
        <jsp:useBean id="person3" class="jsplernen.lieblingsgericht" />
        <jsp:setProperty name="person1" property="*" />
        <jsp:setProperty name="person2" property="*" />
        <jsp:setProperty name="person3" property="*" />
        
        <h1>Lieblingsgericht eingeben</h1>
        <p>Heute ist <%= new java.util.Date() %></p>
        <h2>Bitte Namen und Lieblingsgericht eingeben:</h2>
        <form action="lieblingsgericht.jsp">
            <p> Vorname: <input type="text" name="vorname" value="" /> </p>
            <p> Nachname: <input type="text" name="nachname" value="" /> </p>
            <p> Lieblingsgericht: <input type="text" name="gericht" value="" /> </p>
            <p> zubereitet von: <input type="text" name="koch" value="" /> </p>
            <input type="submit" value="Daten absenden" />
        </form>
        <table>
            <tr>
                <td>Vorname</td>
                <td>Nachname</td>
                <td>Gericht</td>
                <td>Koch</td>
                <td>Datum</td>
            </tr>
            <tr>
                <td><jsp:getProperty name="person1" property="vorname" /></td>
                <td><jsp:getProperty name="person1" property="nachname" /></td>
                <td><jsp:getProperty name="person1" property="gericht" /></td>
                <td><jsp:getProperty name="person1" property="koch" /></td>
                <td><jsp:getProperty name="person1" property="datum" /></td>
            </tr>
            <tr>
                <td><jsp:getProperty name="person2" property="vorname" /></td>
                <td><jsp:getProperty name="person2" property="nachname" /></td>
                <td><jsp:getProperty name="person2" property="gericht" /></td>
                <td><jsp:getProperty name="person2" property="koch" /></td>
                <td><jsp:getProperty name="person2" property="datum" /></td>
            </tr>
            <tr>
                <td><jsp:getProperty name="person3" property="vorname" /></td>
                <td><jsp:getProperty name="person3" property="nachname" /></td>
                <td><jsp:getProperty name="person3" property="gericht" /></td>
                <td><jsp:getProperty name="person3" property="koch" /></td>
                <td><jsp:getProperty name="person3" property="datum" /></td>
            </tr>
        </table>
    </body>
</html>
