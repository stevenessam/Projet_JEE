<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../PagesPublic/footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/addressPayment.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);
</script>
</head>
<body>
<br>
<table>
<thead>
<%
String email=session.getAttribute("email").toString();
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
          <th scope="col"><a href="../PagesPublic/panier.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>

          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
 <%
      ResultSet rs=st.executeQuery("select * from product inner join cart on product.id = cart.product_id and cart.email='"+email+"'and cart.address is NULL");
      while(rs.next())
      {
    	  
      
      %>
          <tr>
          <%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> ><%=rs.getString(4) %></td>
            <td> <%=rs.getString(8) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(10) %></td>
            </tr>
         <%
         }
      ResultSet rs2=st.executeQuery("select * from users where email='"+email+"'");
      while(rs2.next())
      {
         %>
        </tbody>

      </table>
      <p  style="background-color: white;;margin: 0;width: 90px;padding: 10px;float: right;">Total: <i class="fa fa-inr"></i><%out.println(total); %> </p>
<hr style="width: 100%">
<form action="../PagesPublic/addressPaymentController.jsp" method="post">
 <div class="left-div">
 <h3>Adresse</h3>
 <input class="input-style" type="text" name="address" value="<%=rs2.getString(7) %>" placeholder="Adresse" required> 

 </div>

<div class="right-div">
<h3>Ville</h3>
 <input class="input-style" type="text" name="city" value="<%=rs2.getString(8) %>" placeholder="Ville" required> 

</div> 

<div class="left-div">
<h3>Commune</h3>
 <input class="input-style" type="text" name="state" value="<%=rs2.getString(9) %>" placeholder="Region" required> 

</div>

<div class="right-div">
<h3>Pays</h3>
 <input class="input-style" type="text" name="country" value="<%=rs2.getString(10) %>" placeholder="Pays" required> 

</div>
<hr style="width: 100%">
<div class="left-div">
<h3>Sélectionnez le mode de paiement</h3>
 <select class="input-style" name="paymentMethod">
 <option value="Paiement à la livraison">Paiement à la livraison</option>
  <option value="Paiement en ligne">Paiement en ligne</option>
 
 </select>
</div>

<div class="right-div">
<h3>Numero de Telephone</h3>
 <input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3) %>" placeholder="Numero de Telephone" required> 
</div>
<hr style="width: 100%">


</div>
<div >

<button style="background-color: #B4D4C2;
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
    border-radius: 25px;" type="submit">Procédé pour generer la facture et économiser </button>
</div>
</form>
<%
      }
}
catch(Exception e)
{

}
%>

      <br>
      <br>
      <br>

</body>
</html>