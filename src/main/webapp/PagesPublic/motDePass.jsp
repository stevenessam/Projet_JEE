<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/connection.css">
<title>Mot de passe oublie</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <h1 style="color:black;">Mot de passe oublié</h1>
      <form action="../PagesPublic/motDePassController.jsp" method="post">
      <input type="email" name="email" placeholder="Mail" required>
      <input type="number" name="mobileNumber" placeholder="Numéro de téléphone" required>      
      <select name="securityQuestion">
      <option value="La marque de votre premiere voiture ?">La marque de votre premiere voiture ?</option>
      <option value="Le nom du premier animal de compagnie ?">Le nom du premier animal de compagnie ?</option>
      <option value="Le dernier diplome obtenu ?">Le dernier diplome obtenu ?</option>
      <option value="La matiere preferee au college ?">La matiere preferee au college ?</option>
      <option value="La marque du premier telephone ?">La marque du premier telephone ?</option>     
      </select>
	  <input type="text" name="answer" placeholder="Reponse" required>
	  <input type="password" name="newPassword" placeholder="Mot de Passe" required>
	  <input type="submit" value="Sauvegarder">
      </form>
      
      <h2><a href="../PagesPublic/login.jsp">Connexion</a></h2>
  </div>
  <%
	String msg = request.getParameter("msg");
if("done".equals(msg)){
	%>	
<h1>Mot de passe change avec succes</h1>
<% 	
}%>
<%
if("invalid".equals(msg)){
	%>	

<h1>Erreur ! Veuillez reessayer</h1>
<% 	
}%>

</div>
</body>
</html>