<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/header.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Accueil</div>
<table>
        <thead>
          <tr>

            <th scope="col">Nom</th>
            <th scope="col">Categorie</th>
            <th scope="col">Prix</th>
            <th scope="col">Ajouter au panier</th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;

try{
	String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' and active='Yes'");
	while(rs.next())
	{	
	z=1;
%>
           <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td>><%=rs.getString(4) %></td>
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
      <%if(z==0){ %>
      	
	<h1 style="color:white; text-align: center;">Aucun resultat</h1>
	<%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>Non accessible</p>
      </div>

</body>
</html>