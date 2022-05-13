<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<div style="color: white; text-align: center; font-size: 30px;">Tous les produits</div>
<%
	String msg = request.getParameter("msg");
if("done".equals(msg)){
	%>	
<h3 class="alert">Mise à jour du produit</h3>
<% 	
}%>
<%
if("wrong".equals(msg)){
	%>	

<h3 class="alert">Erreur ! Veuillez-reessayer</h3>

<% 	
}%>



<table>
        <thead>
          <tr>
            <th scope="col">Nom</th>
            <th scope="col">Categorie</th>
            <th scope="col">Prix</th>
            <th>Statut</th>
            <th scope="col">Modifier</th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con=ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		ResultSet rs=st.executeQuery("select * from product");
    		while(rs.next()){

       %>
          <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %> Euros</i></td>
            <td><%=rs.getString(5) %></td>
            <td><a href="modifierProduit.jsp?id=<%=rs.getString(1) %>">Modifier </a></td>
          </tr>
         <%
    		}
       }catch(Exception e){
    	   
       }
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>