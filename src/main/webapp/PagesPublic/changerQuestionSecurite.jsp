<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/changeDetailsHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Question de securite</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Votre question secrete a bien ete modifiee !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Votre mot de passe est errone !</h3>
<%} %>
<form action="../PagesPublic/changerQuestionSecuriteController.jsp" method="post">
<h3>Selectionnez votre nouvelle question de securite</h3>
  <select class="input-style" name="securityQuestion">
      <option value="La marque de votre premiere voiture ?">La marque de votre premiere voiture ?</option>
      <option value="Le nom du premier animal de compagnie ?">Le nom du premier animal de compagnie ?</option>
      <option value="Le dernier diplome obtenu ?">Le dernier diplome obtenu ?</option>
      <option value="La matière preferee au college ?">La matiere preferee au college ?</option>
      <option value="La marque du premier telephone ?">La marque du premier telephone ?</option>
  </select>
 <hr>
 <h3>Nouvelle reponse</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Nouvelle reponse" required>
<hr>
<h3>Mot de passe</h3>
 <input class="input-style" type="password" name="password" placeholder="Mot de passe" required>
<hr>
<button class="button" type="submit">Enregistrer </button>
</form>
</body>
<br><br><br>
</html>