<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../PagesPublic/footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueuil</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Messagerie</div>
<table>
        <thead>
          <tr>
            <th scope="col">Email</th>
            <th scope="col">Sujet</th>
            <th scope="col">Description</th>
          </tr>
        </thead>
        <tbody>
  <%
  try
  {
  	Connection con=ConnectionProvider.getCon();
  	Statement st=con.createStatement();
  	ResultSet rs=st.executeQuery("select *from message");
  	while(rs.next())
  	{
  %>
          <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td style="word-break:break-all;"><%=rs.getString(4) %></td>
          </tr>
         <%
         }}
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