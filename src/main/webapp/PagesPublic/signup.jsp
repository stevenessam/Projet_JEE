<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/connection.css">
<title>Inscription</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <h1 style="color:black;">S'inscrires</h1>
      <form action="../PagesPublic/signupController.jsp" method="post">
      <input type="text" name="name" placeholder="Nom" required>
      <input type="email" name="email" placeholder="Mail" required>
      <input type="number" name="mobileNumber" placeholder="Numero de téléphone" required>
      <select name="securityQuestion" required>
      <option value="La marque de votre premiere voiture ?">La marque de votre premiere voiture ?</option>
      <option value="Le nom du premier animal de compagnie ?">Le nom du premier animal de compagnie ?</option>
      <option value="Le dernier diplome obtenu ?">Le dernier diplome obtenu ?</option>
      <option value="La matière preferee au college ?">La matiere preferee au college ?</option>
      <option value="La marque du premier telephone ?">La marque du premier telephone ?</option>

      </select>
      <input type="text" name="answer" placeholder="Réponse à la question" required>
      <input type="password" name="password" placeholder="Mot de passe" required>
      <input type="submit" value="S'inscrire">
      </form>

      <h2><a href="../PagesPublic/login.jsp">Connexion</a></h2>
  </div>
 

<%
	String msg = request.getParameter("msg");
if("valid".equals(msg)){
	%>	
	<h1>Inscription Acceptee</h1>
<% 	
}%>
<%
if("invalid".equals(msg)){
	%>	

<h1>Erreur lors de la saisie des champs, veuillez reessayer</h1>
<% 	
}%>






</div>

</body>
</html>