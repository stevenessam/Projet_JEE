<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/header.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/messagerie.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Messagerie</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Messagerie</i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>	
<h3 style="text-align:center; color:yellow;">Message envoye. Vous nous recontacterons prochainement</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Un probleme a ete rencontre, veuillez reessayer</h3>
<%} %>
<form action="../PagesPublic/messagerieController.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="Sujet" required>
<hr>
<textarea class="input-style" name="body" placeholder="Message" required></textarea>
<hr>
<button class="button" type="submit">Envoyer</button>
</button>
</form>
<br><br><br>
</body>
</html>