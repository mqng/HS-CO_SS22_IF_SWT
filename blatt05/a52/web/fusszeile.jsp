<%-- 
    Document   : fusszeile
    Created on : 07.06.2022, 19:53:50
    Author     : Minh Nguyen
--%>
<form action="<%=config.getServletName()%>">
    <p> Navigationsleiste
        <input type="radio" name="custom" value="links" />links
        <input type="radio" name="custom" value="rechts" />rechts
        <input type="submit" value="Wert setzen" />
    </p>
</form>
<%
    if (request.getParameter("custom") != null) {
        javax.servlet.http.Cookie cookie = new Cookie(config.getServletName(), request.getParameter("custom"));
        cookie.setMaxAge(10);
        //cookie.setMaxAge(60*60*24*30);
        cu.updateCookie(response, cookie);
    }
%>