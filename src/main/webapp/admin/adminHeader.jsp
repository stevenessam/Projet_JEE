<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->

    <div style=" border-bottom: 3px solid;" class="topnav sticky">
   <%String email=session.getAttribute("email").toString();%>
	           <h2 style=" margin-left: 10px;background: #45a59d;border-bottom: 3px solid;padding: 20px;margin: 0;">Gaspillages Alimentaires</h2>
            <a  style=" border-right: 2px solid;" href="ajouterProduit.jsp">Ajouter un nouveau produit</a>
            <a style=" border-right: 2px solid;"href="produits.jsp">Tous les produits</a>
            <a style=" border-right: 2px solid;" href="messagesRecus.jsp">Messageries</a>
            <a style=" border-right: 2px solid;"href="commandeRecu.jsp">Commandes reçues</a>
            <a style=" border-right: 2px solid;"href="annulerCommande.jsp">Commandes annulees</a>
            <a style=" border-right: 2px solid;"href="commandesLivree.jsp">Commandes expediees</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/logout.jsp">Deconnexion</a>
          </div>
           <br>
           <!--table-->
