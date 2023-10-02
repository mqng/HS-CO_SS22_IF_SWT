<%-- 
    Document   : zeichenkettenanalyseergenis
    Created on : 18.04.2022, 19:53:49
    Author     : Minh Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ergebnis</title>
    </head>
    <body>
            <%
            String zeichenkette = request.getParameter("zeichenkette");
            int anzahl_A = 0, anzahl_B= 0;
            
           
            for(int i = 0; i < zeichenkette.length(); i++){
                if (zeichenkette.toUpperCase().charAt(i) == 'A')
                    anzahl_A++;
                else if (zeichenkette.toUpperCase().charAt(i) == 'B')
                    anzahl_B++;
            }
           %>
          
           <p>Die Zeichenkette lautet: <%= zeichenkette %></p>
           <p>Die Zeichenkette ist <%= zeichenkette.length()%> Zeichen lang</p>
           <p>Anzahl A oder a: <%= anzahl_A %></p>
           <p>Anzahl B oder b: <%= anzahl_B %></p>
    </body>
</html>
