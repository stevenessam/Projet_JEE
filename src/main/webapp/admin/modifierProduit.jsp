<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/produit.css">
<title>Ajouter un nouveau produit</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="produit.jsp"> Retour</a></h2>
<%

String id = request.getParameter("id");
try{
	
	Connection con =ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs =st.executeQuery("select * from product where id ='"+id+"'");
	while(rs.next()){
			
		



%>

<form action="modifierProduitController.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<div class="left-div">
 <h3>Nom</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Categorie</h3>
 <input class="input-style" type="text" name="category" value="<%=rs.getString(3) %>" required>
 
<hr>
</div>

<div class="left-div">
<h3>Prix</h3>
 <input class="input-style" type="number" name="price" value="<%=rs.getString(4) %>" required>
 
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
 <button class="button">Sauvegarder</button>
</form>
<%

	}
}catch(Exception e){
	
}
%>

</body>
<br><br><br>
</body>
</html>