<%-- 
    Document   : sqrterror
    Created on : 15.05.2022, 21:44:36
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html version="-//W3C//DTD XHTML 1.1//EN"
      xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.w3.org/1999/xhtml
                          http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd"
>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String meldung = exception.getMessage();
            String klasse = exception.getClass().getName();
            
            java.io.StringWriter sw = new java.io.StringWriter();
            java.io.PrintWriter pw = new java.io.PrintWriter(sw);
            exception.printStackTrace(pw);
            String stack = sw.toString();
        %>
        <p> Fehlermeldung: <%= meldung %></p>
        <p> Fehlerklasse: <%= klasse %></p>
        <p> Der Pfad der fehlerhaften Seite ist: <%= request.getAttribute ("javax.servlet.error.request_uri") %></p>
        <p> ErrorStack: </p>
        <pre><%= stack%></pre>
    </body>
</html>
