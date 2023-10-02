<%-- 
    Document   : auswertungcookies
    Created on : 12.06.2022, 04:35:25
    Author     : Minh Nguyen
--%>
<%@page import="jsplernen.JspCookieUtil"%>
<%
    JspCookieUtil cu = new JspCookieUtil();
    Cookie c = cu.getCookieByName(request, getServletName());
    String s = "";
    
    switch(config.getServletName()) {
        case "personalisierungaufbau1.jsp":
            s = "Seite 1";
            break;
        case "personalisierungaufbau2.jsp":
            s = "Seite 2";
            break;
        case "personalisierungaufbau3.jsp":
            s = "Seite 3";
            break;
    }
    
    StringBuffer sb = new StringBuffer();
    sb.append("<table><tr><td><a href='personalisierungaufbau1.jsp'>Seite 1</a></td></tr>");
    if (c == null || c.getValue().equals("links")) {
        sb.append("<tr><td><a href='personalisierungaufbau2.jsp'>Seite 2</a></td>");
        sb.append("<td>Hier steht der Nutzerinhalt zur "+s+"</td></tr>");
    } else if (c.getValue().equals("rechts")) {
        sb.append("<tr><td>Hier steht der Nutzerinhalt zur "+s+"</td>");
        sb.append("<td><a href='personalisierungaufbau2.jsp'>Seite 2</a></td></tr>");
    }
    sb.append("<tr><td><a href='personalisierungaufbau3.jsp'>Seite 3</a></td></tr></table>");
%>
<%=sb%>
