<%-- 
    Document   : sqrtcalculator
    Created on : 10.05.2022, 15:54:30
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage = "/WEB-INF/sqrterror.jsp" %>
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
        <form action="sqrtcalculator.jsp">
            <p><input type="text" name="sqrtvalue" value="" /></p>
            <p><input type="submit" value="Senden" /></p>
        </form>
        
        <%
            if (request.getParameter("sqrtvalue") != null) {
                try{
                    double sq = Double.parseDouble(request.getParameter("sqrtvalue"));
                    if(sq < 0) {
                        throw new RuntimeException("Zahl ist kleiner 0");
                    }
                    else {
                        sq = Math.sqrt(sq);
                        out.println("<p>" + sq + "</p>");
                    }
                } catch (NumberFormatException nfe) {
                    throw new NumberFormatException("Keine Zahl");
                }
            }
        %>
        
    </body>
</html>
