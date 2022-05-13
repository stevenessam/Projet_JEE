<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/produit.css">
<title>Ajout produit</title>
</head>
<body>

<%
int id=1;
try{
	Connection con =ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs =st.executeQuery("select max(id) from product");
	while(rs.next()){
		
		id=rs.getInt(1);
		id=id+1;
	}
}catch(Exception e)
{}
%>
<form action="ajouterProduitController.jsp" method="post">

<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Nom</h3>
 <input class="input-style" type="text" name="name" placeholder="Nom" required>
<hr>
</div>

<div class="right-div">
<h3>Categorie</h3>
 <input class="input-style" type="text" name="category" placeholder="Categorie" required>
<hr>
</div>

<div class="left-div">
<h3>Prix</h3>
 <input class="input-style" type="number" name="price" placeholder="Prix" required>
<hr>
</div>

<div class="right-div">
<h3>Actif</h3>
   <select class="input-style" name="active">
   <option value="Yes">Yes</option>
   <option value="No">No</option>  
   </select>
<hr>
</div>
<br>
<button class="button">Sauvegarder</button> 
</form>


<%
	String msg = request.getParameter("msg");
if("done".equals(msg)){
	%>	
<h3 class="alert">Produit ajouté</h3>
<% 	
}%>
<%
if("wrong".equals(msg)){
	%>	

<h3 class="alert">Erreur ! Veuillez reessayer !</h3>

<% 	
}%>
</body>
<br><br><br>
</body>
</html>