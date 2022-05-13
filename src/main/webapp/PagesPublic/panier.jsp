<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/header.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %><html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carte</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Carte</div>
<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<h3 class="alert">Disponible seulement en unité (cliquer pour retirer)</h3>
<%} %>
<%
if("inc".equals(msg))
{
%>
<h3 class="alert">Ajout d'une unite dans le panier</h3>
<%} %>
<%
if("dec".equals(msg))
{
%>
<h3 class="alert">Retrait d'une unite dans le panier</h3>
<%} %>
<%
if("removed".equals(msg))
{
%>
<h3 class="alert">Produit retire du panier</h3>
<%} %>
<table>
<thead>
<%
int total=0;
int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}
%>

          <tr>
            <th scope="col" style="background-color: white;">Total : <%out.println(total); %> Euros</th>
            
          </tr>
        </thead>
        <thead>
          <tr>
            <th scope="col">Nom du produit</th>
            <th scope="col">Categorie</th>
            <th scope="col">Prix</th>
            <th scope="col">Quantite</th>
            <th scope="col">Totalite</th>
            <th scope="col">Retirer</th>
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs=st.executeQuery("select * from product inner join cart on product.id = cart.product_id and cart.email='"+email+"'and cart.address is NULL");
      while(rs.next())
      {
    	  
      
      %>
      
          <tr>
			<% sno=sno+1; %>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4)%> Euros</td>
            <td><a href="../PagesPublic/incDecController.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%=rs.getString(8)%><a href="../PagesPublic/incDecController.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td> <td><%=rs.getString(10) %></td>
            <td><a href="../PagesPublic/retirerPanier.jsp?id=<%=rs.getString(1)%>">Retirer</a></td>
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
      <br>
      <%if(total>0){ %><button style="background-color: #B4D4C2;
    border: none;
    color: #424a54;
    padding: 12px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    margin-left: 5%;
    font-size: 16px;
    width: 90%;
    border-radius: 25px;"><a href="../PagesPublic/addressPayment.jsp">Proceder au paiement</a></button><%} %>
      <br>
      <br>

</body>
</html>