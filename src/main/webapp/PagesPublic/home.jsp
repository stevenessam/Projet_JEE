<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/header.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Accueil</div>

<table>
        <thead>
          <tr>
            <th scope="col">Nom</th>
            <th scope="col">Cat�gorie</th>
            <th scope="col">Prix</th>
            <th scope="col">Ajouter une carte</th>
          </tr>
        </thead>
        <tbody>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where active='Yes'");
	while(rs.next())
	{
%>
          <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %> Euros</td>
            <td><a href="../PagesPublic/ajouterAuPanier.jsp?id=<%=rs.getString(1) %>">Ajouter au panier</a></td>
          </tr>
<%
}
}
catch(Exception e)
{

}
%>
        </tbody>
      </table>
      
      <%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Produit ajout�</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Quantit� augment�e</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Quelque chose s'est mal pass�</h3>
<%} %>
      <br>
      <br>
      <br>

</body>
</html>