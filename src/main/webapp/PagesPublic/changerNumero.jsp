<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/changeDetailsHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Votre numéro de mobile a été modifié avec succès !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Votre mot de passe est erroné !</h3>
<%} %>
<form action="../PagesPublic/changerNumeroController.jsp" method="post">
 <h3>Nouveau numero de telephone</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="Nouveau numero de telephone" required>
 <hr>
<h3>Mot de passe</h3>
 <input class="input-style" type="password" name="password" placeholder="Mot de passe" required>
<hr>
 <button class="button" type="submit">Enregistrer</button>
 </form>
</body>
<br><br><br>
</html>