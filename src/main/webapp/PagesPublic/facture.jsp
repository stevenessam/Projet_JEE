<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/facture.css">
<title>Bill</title>
</head>
<body>
<%
String email=session.getAttribute("email").toString();
try {
	int total = 0;
	int sno = 0;
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill'");
	while(rs.next())
	{
		total=rs.getInt(1);	
	}
	ResultSet rs2=st.executeQuery("select * from users inner join cart where cart.email='"+email+"' and cart.status='bill'");
	while(rs2.next())
	{
%>
<h3>Facture</h3>
<hr>
<div class="left-div"><h3>Nom:  <%=rs2.getString(1) %></h3></div>
<div class="right-div-right"><h3>Email:  <%out.println(email); %></h3></div>
<div class="right-div"><h3>Numéro de Téléphone:  <%=rs2.getString(20) %></h3></div>  

<div class="left-div"><h3>Date du Jour:  <%=rs2.getString(21) %></h3></div>
<div class="right-div-right"><h3>Moyen de Paiement:  <%=rs2.getString(23) %></h3></div>
<div class="right-div"><h3>Date de livraison:  <%=rs2.getString(22) %></h3></div> 

<div class="right-div-right"><h3>Ville:  <%=rs2.getString(17) %></h3></div> 
<div class="right-div"><h3>Adresse:  <%=rs2.getString(16) %></h3></div> 

<div class="right-div-right"><h3>Pays:  <%=rs2.getString(19) %></h3></div>  

<hr>
<%break;} %>

	
	<br>
	
<table id="customers">
<h3>Product Details</h3>
  <tr>
    <th>Numéro</th>
    <th>Nom Prduits</th>
    <th>Categories</th>
    <th>Prix</th>
    <th>Quantite</th>
     <th>Total</th>
  </tr>
  <%
  ResultSet rs1=st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.status='bill'");
  while(rs1.next())
  {
		sno=sno+1;	  
  %>
  <tr>
    <td><%out.println(sno); %></td>
    <td><%=rs1.getString(17) %></td>
    <td><%=rs1.getString(18) %></td>
    <td><%=rs1.getString(19) %></td>
    <td><%=rs1.getString(3) %></td>
     <td><%=rs1.getString(5) %></td>
  </tr>
  <tr>
<%}%>
</table>
<h3>Totale: <%out.println(total); %></h3>
<a href="../PagesPublic/continuerAchats.jsp"><button class="button left-button">Continuer vos achats</button></a>
<a onclick="window.print();"><button class="button right-button">Imprimer</button></a>
<br><br><br><br>
<%
}
catch(Exception e){}%>


</body>
</html>