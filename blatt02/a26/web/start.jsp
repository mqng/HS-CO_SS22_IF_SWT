<%-- 
    Document   : start
    Created on : 02.05.2022, 12:00:29
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
            if(request.getParameter("inhalt") != null && request.getParameter("inhalt").equals("seite2")) {%>
               <jsp:include page="seite2.jsp" /><%
            }
            else {
                out.println("Gewählt wurde Seite 1"); %>
                <jsp:include page="seite1.jsp" />
                <%
            }
            
        %>
    </body>
</html>
