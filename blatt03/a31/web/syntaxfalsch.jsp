<br/>
<?xml version="1.0" encoding="iso88591"?>
<!DOCTYPE html
 PUBLIC "-//W3C//DTD XHTML 1.1//EN"
 "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Uhrzeit auf dem Server</title>
</head>
<%@ page isThreadSafe = "false %>
<jsp:useBean id="eineZeit" class="java.util.Date" />
<b>Die aktuelle Uhrzeit auf dem Server ist:</b>
Stunden: <jsp:getProperty nae="eineZeit" property="hours" /><br>
Minuten: <jsp:getProperty name="eineZeit" property="minutes" /><br>
Sekunden: <jsp:getProperty name="eineZeit" property="seconds" /><br>
<% int stunde = eineZeit.getHours();
if ( stunde < 12 )%>
{%>
Guten Morgen!
<% }
else if (stunde < 17 )
{ > Guten Tag!
<% }
else
{ %>
Guten Abend!
} %> </body>
</html>