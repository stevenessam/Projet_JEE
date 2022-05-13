
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/connection.css">
<title>Connexion</title>
</head>
<body>
<div id='container'>

  <div class='signup'>
  <h1 style="color:black;">Bienvenue sur notre site</h1>
     <form action="../PagesPublic/loginController.jsp" method="post">
     <input type="email" name="email" placeholder="Mail" required>
	 <input type="password" name="password" placeholder="Mot de passe" required>
	 <input type="submit" value="login" >
     </form>
      <h2><a href="../PagesPublic/signup.jsp">S'inscrire</a></h2>
       <h2><a href="../PagesPublic/motDePass.jsp">Mot de Passe Oublie ?</a></h2>
  </div>

  
  <%
	String msg = request.getParameter("msg");
if("notexist".equals(msg)){
	%>	
  <h1>Identifiant ou mot de Passe Incorrect</h1>
<% 	
}%>
<%
if("invalid".equals(msg)){
	%>	

<h1>Quelque chose a mal tourne ! Réessayer !</h1>
<% 	
}%>
  
</div>

</body>
</html>