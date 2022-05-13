<%@page errorPage="../PagesPublic/error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>

    <div style=" border-bottom: 3px solid;"  class="topnav sticky">
            <h2 style=" margin-left: 10px;background: #45a59d;border-bottom: 3px solid;padding: 20px;margin: 0;">Modifier les détails</h2>
             <%String email=session.getAttribute("email").toString(); %>
            <h2 style="margin: 0px;" ><a href="../PagesPublic/home.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
            <a style=" border-right: 2px solid;"href="../PagesPublic/changerMotDePass.jsp">Change mot de passe </a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/changerAddress.jsp">Changer ou ajouter votre addresse </a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/changerQuestionSecurite.jsp">Changer votre question secrète </a>
            <a style=" border-right: 2px solid;"href="../PagesPublic/changerNumero.jsp">Changer votre numéro de téléphone </a>
          </div>
           <br>

