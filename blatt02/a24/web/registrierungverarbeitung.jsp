<%-- 
    Document   : registrierungverarbeitung
    Created on : 25.04.2022, 16:43:44
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
            String b = request.getParameter("benutzername");
            String p = request.getParameter("password");
            String pc = request.getParameter("passwordcheck");
            if(b != "" && p != "" && pc != "") {
                if(p.equals(pc)) {%>
                <jsp:forward page="registrierungstart.jsp?">
                    <jsp:param name="par" value="1" />
                </jsp:forward>  
               <%
                }
                else if (p != pc) {%>
                    <jsp:forward page="registrierungfehler.jsp">
                        <jsp:param name="par" value="notequal" />
                    </jsp:forward>
                 <%
                }
            }
            else{
                if(b == "" || p == "" || pc == "") { %>
                    <jsp:forward page="registrierungfehler.jsp">
                        <jsp:param name="par" value="null" />
                    </jsp:forward>
                <%
                }    
            }
            %>
    </body>
</html>
