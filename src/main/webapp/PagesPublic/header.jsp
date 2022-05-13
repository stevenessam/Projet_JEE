<%@page errorPage="../PagesPublic/error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    
    <div  style=" border-bottom: 3px solid;" class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
    
           <h2  style=" margin-left: 10px;background: #45a59d;border-bottom: 3px solid;padding: 20px;margin: 0;">Gaspillages Alimentaires</h2>
            <a style=" border-right: 2px solid;"href="../PagesPublic/home.jsp">Accueil</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/panier.jsp">Panier</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/commandes.jsp">Mes droits</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/messagerie.jsp">Nous envoyer un message</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/about.jsp">À propos</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/changeDetails.jsp">Changement de détails</a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/logout.jsp">Déconnexion</a>
            <div class="search-container">
            <form action="../PagesPublic/searchBar.jsp" method="post">
            <input type="text" placeholder="Rechercher" name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
            </form>
            </div>
          </div>
           <br>
           <!--table-->
