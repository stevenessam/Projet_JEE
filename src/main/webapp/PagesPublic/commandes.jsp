<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/header.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Mes droits</div>
<table>
        <thead>
          <tr>
            <th scope="col">Nom du produit</th>
            <th scope="col">Categorie</th>
            <th scope="col">Prix</th>
            <th scope="col">Quantite</th>
            <th scope="col">Totalite</th>
            <th scope="col">Date</th>
             <th scope="col">Date d'expedition</th>
             <th scope="col">Moyen de paiement</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next())
	{
		sno=sno+1;
		
%>
          <tr>
            <td><%=rs.getString(16) %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(4) %> Euros</td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(5) %> </td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               <td><%=rs.getString(14) %></td>
            </tr>
         <%
		}
		}
		catch(Exception e)
		{

		}%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>