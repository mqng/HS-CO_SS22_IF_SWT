<!-- Author: Minh Nguyen -->
<?xml version="1.0" encoding="iso8859-1"?>
<!DOCTYPE html
 PUBLIC "-//W3C//DTD XHTML 1.1//EN"
 "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Uhrzeit auf dem Server</title>
</head>
<body>
<%@ page isThreadSafe = "false" %>
<jsp:useBean id="eineZeit" class="java.util.Date" />
<p><b>Die aktuelle Uhrzeit auf dem Server ist:</b></p>
<p>Stunden: <jsp:getProperty name="eineZeit" property="hours" /><br /></p>
<p>Minuten: <jsp:getProperty name="eineZeit" property="minutes" /><br /></p>
<p>Sekunden: <jsp:getProperty name="eineZeit" property="seconds" /><br /></p>
<% int stunde = eineZeit.getHours();
if ( stunde < 12 )
{
out.println("<p>Guten Morgen!</p>");
}
else if (stunde < 17 )
{ out.println("<p>Guten Tag!</p>");
}
else
{ 
out.println("<p>Guten Abend!</p>");
} %> </body>
</html>