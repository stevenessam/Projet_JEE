<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/changeDetailsHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h3 class="alert">Le nouveau mot de passe et la confirmation du mot de passe ne correspondent pas !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Votre ancien mot de passe est errone !</h3>
<%} %>
<%
if("done".equals(msg))
{
%>
<h3 class="alert">Changement de mot de passe reussi !</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Erreur ! Veuillez reessayer</h3>
<%} %>
<form action="../PagesPublic/changerMotDePassController.jsp" method="post"> 

<h3>Ancien mot de passe</h3>
 <input class="input-style" type="password" name="oldPassword" placeholder="Ancien mot de passe" required>
  <hr>
 <h3>Nouveau mot de passe</h3>
 <input class="input-style" type="password" name="newPassword" placeholder="Nouveau mot de passe" required>
 <hr>
<h3>Confirmer le mot de passe</h3>
 <input class="input-style" type="password" name="confirmPassword" placeholder="Confirmer le mot de passe" required>
<hr>
 <button class="button" type="submit">Enregistrer</button>
</form>
</body>
<br><br><br>
</html>