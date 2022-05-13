<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/commandeRecu.css.css">
<title>Accueil</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Commandes recues</div>
<%
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Annulation de la commande</h3>
<%} %>
<%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Livraison de la commande</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Erreur, veuillez reessayer</h3>
<%} %>

<table id="customers">
          <tr>
          <th>Numero de telephone</th>
            <th scope="col">Nom du produit</th>
            <th scope="col">Quantite</th>
            <th scope="col">Total</th>
            <th>Addresse</th>
            <th>Ville</th>
            <th>Region</th>
            <th>Pays</th>
            <th scope="col">Date de la commande</th>
             <th scope="col">Date d'expedition</th>
             <th scope="col">Moyen de paiement</th>
              <th scope="col">Statut</th>
              <th scope="col">Annulation de la commande </th>
              <th scope="col">Commande expediee</th>
          </tr>
<%
try{
	Connection con =ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs =st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
	while(rs.next())
	{
	%>  
       
          <tr>
          <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(3) %></td>
            <td> <%=rs.getString(5) %> Euros</td>
                <td><%=rs.getString(6) %></td>
               <td><%=rs.getString(7) %></td>
                <td><%=rs.getString(8) %></td>
                 <td><%=rs.getString(9) %></td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               <td><%=rs.getString(14) %></td>
               <td><a href="annulerCommandeController.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Annuler </i></a></td>
                <td><a href="commandesLivreeController.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Livré </a></td>
            </tr>
      <%}
}	
	catch(Exception e)
	{} %>
        </table>
      <br>
      <br>
      <br>

</body>
</html>