<%-- 
    Document   : bremsweg
    Created on : 18.04.2022, 22:33:57
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
        <h1>Lassen Sie den Bremsweg berechnen</h1>

    <p>Mit diesem Formular können Sie den Bremsweg eines Fahrzeugs in Abhängigkeit des Reibungskoeffizienten berechnen. Auf trockener Fahrbahn beträgt der Reibungskoeffizient durchschnittlich 0,4.
Der konkrete Reibungskoeffizient für Ihr Fahrzeug ist individuell und hängt 
z.B. von der Bereifung und den konkreten Fahrbahnverhältnissen ab.
Deshalb kann der Bremsweg Ihres Wagens vom berechneten Bremsweg abweichen.</p>

        <h2>Geben Sie ihre Daten ein</h2>
        <form name="bremsweg" action="bremsweg.jsp">
            <p>Geschwindigkeit in km/h: <input type="text" name="velocity" value="100" /></p>
            <p>Reibungskoeffizient: <input type="text" name="friction" value="0.4" /></p>
            <p><input type="reset" value="Zur&uuml;cksetzen" /> <input type="submit" value="Abschicken" /></p>
        </form>
        <%
            float m = 0;
            if (request.getParameter("velocity")!= null && request.getParameter("friction") != null) {
                try {
                    int velocity = Integer.parseInt(request.getParameter("velocity"));
                    float friction = Float.parseFloat(request.getParameter("friction"));
                    
                    m = (velocity * velocity) / (2 * friction * 9.81f * 3.6f * 3.6f);
                }
                catch(NumberFormatException e) {
                    out.print("Fehler bei Eingabe!");
                }
            }
        %>
        <p>Bei der aktuellen Anfrage ergab sich ein Bremsweg von <%= m %> Metern.</p>
    </body>
</html>
