<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/changeDetailsHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Editer adresse</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 class="alert">Adresse mise à jour avec succès !</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Erreur ! Veuillez reessayer</h3>
<%} %>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next())
	{
%>
<form action="../PagesPublic/changerAddressController.jsp" method="post">
<h3>Adresse</h3>
 <input class="input-style" type="text" name="address" value="<%=rs.getString(7)%>" placeholder="Adresse" required>
 <hr>
 <h3>Ville</h3>
 <input class="input-style" type="text" name="city" value="<%=rs.getString(8)%>" placeholder="Ville" required>
 
<hr>
<h3>Region</h3>
 <input class="input-style" type="text" name="state" value="<%=rs.getString(9)%>" placeholder="Region" required>

<hr>
<h3>Pays</h3>
 <input class="input-style" type="text" name="country" value="<%=rs.getString(10)%>" placeholder="Pays" required>

<hr>
 <button class="button" type="submit">Enregistrer </button>
</form>
<%
}
	}
	catch(Exception e)
	{	

	}%>

</body>
<br><br><br>
</html>