<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<c:if test="${!empty sessionScope.email}">
		<c:redirect url="/home"/>					
    </c:if> 

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cabinet Kiné</title>
    
        <meta name="description" content="Application de gestion d’un cabinet de kinésithérapie">
        <meta name="author" content="Hicham EL MARDI ALAOUI, Said DARDARI">
    
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">
    
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="login">

      <div class="form-signin">
    <div class="text-center">
        <img src="assets/img/logo.png" alt="Metis Logo">
    </div>
    <hr>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
         
            <form action="login" method="post">
                <h3 class="text-center">
                    Connectez-vous 
                </h3>
                <br/>
                <c:if
							test="${not empty message }">
								<div class="alert alert-danger">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong> Message : </strong>  ${ message } 
                        </div>
								</c:if> 
                <input type="text" name="email" placeholder="Pseudo" class="form-control">
                <input type="password" name="motDePasse"  placeholder="Mot de passe" class="form-control">
                <br/>
                <div class="checkbox">
		  <label>
		    <input type="checkbox"> Garder ma session ouvert
		  </label>
		</div>
                <button class="btn btn-primary btn-block" type="submit">Connexion</button>
            </form>
        </div>
        
        <div id="forgot" class="tab-pane">
            <form action="index.html">
                <p class="text-muted text-center">Entrez votre adresse e-mail valide</p>
                <input type="email" placeholder="mail@domain.com" class="form-control">
                <br>
                <button class="btn btn-danger btn-block" type="submit">Récupérer mot de passe</button>
            </form>
        </div>
       
    </div>
    <hr>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab">Connexion</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">mot de passe oublié</a></li>
        </ul>
    </div>
  </div>

    <!--jQuery -->
    <script src="assets/lib/jquery/jquery.js"></script>

    <!--Bootstrap -->
    <script src="assets/lib/bootstrap/js/bootstrap.js"></script>


    <script type="text/javascript">
        (function($) {
            $(document).ready(function() {
                $('.list-inline li > a').click(function() {
                    var activeForm = $(this).attr('href') + ' > form';
                    //console.log(activeForm);
                    $(activeForm).addClass('animated fadeIn');
                    //set timer to 1 seconds, after that, unload the animate animation
                    setTimeout(function() {
                        $(activeForm).removeClass('animated fadeIn');
                    }, 1000);
                });
            });
        })(jQuery);
    </script>
</body>

</html>
