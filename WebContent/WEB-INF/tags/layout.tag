<%@tag pageEncoding="UTF-8"%>
<%@attribute name="title" required="true" rtexprvalue="true"%>
<%@attribute name="content" fragment="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<!--IE Compatibility modes-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--Mobile first-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>${title}</title>

<meta name="description"
	content="Free Admin Template Based On Twitter Bootstrap 3.x">
<meta name="author" content="">

<meta name="msapplication-TileColor" content="#5bc0de">
<meta name="msapplication-TileImage" content="assets/img/metis-tile.png">

<!-- Bootstrap -->
<link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="assets/lib/font-awesome/css/font-awesome.css">

<!-- Metis core stylesheet -->
<link rel="stylesheet" href="assets/css/main.css">

<!-- fullcalendar.min -->
<link rel="stylesheet" href="assets/css/fullcalendar.min.css">

<!-- metisMenu stylesheet -->
<link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">

<!-- onoffcanvas stylesheet -->
<link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">

<!-- animate.css stylesheet -->
<link rel="stylesheet" href="assets/lib/animate.css/animate.css">

<link rel="stylesheet" href="assets/css/dataTables.bootstrap.min.css">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!--For Development Only. Not required -->
<script>
	less = {
		env : "development",
		relativeUrls : false,
		rootpath : "/assets/"
	};
</script>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
<script  src="assets/lib/jquery/jquery.js"></script>
</head>

<body class=""
	style="background-image: url(&quot;assets/img/pattern/arches.png&quot;); background-repeat: repeat; padding-top: 0px;">
	<div class="bg-dark dk" id="wrap">
		<div id="top">
			<!-- .navbar -->
			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container-fluid">


					<!-- Brand and toggle get grouped for better mobile display -->
					<header class="navbar-header">

						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-ex1-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href="index.html" class="navbar-brand"><img
							src="assets/img/logo.png" alt=""></a>

					</header>



					<div class="topnav">
						<div class="btn-group">
							<a data-placement="bottom" data-original-title="Fullscreen"
								data-toggle="tooltip" class="btn btn-default btn-sm"
								id="toggleFullScreen"> <i
								class="glyphicon glyphicon-fullscreen"></i>
							</a>
						</div>

						<div class="btn-group">
							<a href="${pageContext.request.contextPath}/logout"
								data-toggle="tooltip" data-original-title="Logout"
								data-placement="bottom" class="btn btn-metis-1 btn-sm"> <i
								class="fa fa-power-off"></i>
							</a>
						</div>
						<div class="btn-group">
							<a data-placement="bottom" data-original-title="Show / Hide Left"
								data-toggle="tooltip" class="btn btn-primary btn-sm toggle-left"
								id="menu-toggle"> <i class="fa fa-bars"></i>
							</a>

						</div>

					</div>




					<div class="collapse navbar-collapse navbar-ex1-collapse">

						<!-- .nav -->

						<!-- /.nav -->
					</div>
				</div>
				<!-- /.container-fluid -->
			</nav>
			<!-- /.navbar -->
			<header class="head">
				<div class="search-bar">
					<form class="main-search" action="">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Live Search ..."> <span
								class="input-group-btn">
								<button class="btn btn-primary btn-sm text-muted" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
					<!-- /.main-search -->
				</div>
				<!-- /.search-bar -->
				<div class="main-bar">
					<h3>
						<i class="fa fa-home"></i>&nbsp; ${title}
					</h3>
				</div>
				<!-- /.main-bar -->
			</header>
			<!-- /.head -->
		</div>
		<!-- /#top -->
		<div id="left">
			<div class="media user-media bg-dark dker">
				<div class="user-media-toggleHover">
					<span class="fa fa-user"></span>
				</div>
				<div class="user-wrapper bg-dark">
					<a class="user-link" href=""> <img
						class="media-object img-thumbnail user-img" alt="Photo profile"
						src="assets/img/user.png"> 
					</a>

					<div class="media-body">
                                    <h5 class="media-heading">                                     
                    <c:choose>
					    <c:when test="${!empty sessionScope.email}">
					     	<p class="succes">Vous êtes : ${sessionScope.email}</p>
					    </c:when>    
					    <c:otherwise>
					 	   <c:redirect url="/login"/>
					    </c:otherwise>
					</c:choose>
                    
                
                                    </h5>
                                    <ul class="list-unstyled user-info">
                                        <li><a href="">
                                        Administrateur
                                        </a></li>
                                        <li>Dernier accès  : <br>
                                            <small><i class="fa fa-calendar"></i>&nbsp;16 Mar 16:32</small>
                                        </li>
                                    </ul>
                          </div>
				</div>
			</div>
			<!-- #menu -->
			<ul id="menu" class="bg-blue dker">
			
				<li class="nav-header">Menu</li>
				<li class="nav-divider"></li>
				
				<li><a href="${pageContext.request.contextPath}/home"> <i class="fa fa-dashboard"></i> <span
						class="link-title"> Tableau de bord </span>
				</a></li>
				
				<li><a href="${pageContext.request.contextPath}/agenda"> <i class="fa fa-calendar"></i> <span
						class="link-title"> Agenda </span>
				</a></li>

				<li><a href="${pageContext.request.contextPath}/patient"> <i class="fa fa-tasks"></i> <span
						class="link-title"> Patient </span>
				</a></li>
				<li><a href="javascript:;"> <i class="glyphicon glyphicon-list-alt"></i> <span
						class="link-title"> Préscription </span>
						<span class="fa arrow"></span>
				</a>
				
				<ul class="collapse" aria-expanded="true" style="">
										 <li> <a href="${pageContext.request.contextPath}/prescription" aria-expanded="false"><i class="glyphicon glyphicon-hand-right"></i>  Préscription</a>  </li>
                                          <li> <a href="${pageContext.request.contextPath}/nomenclature" aria-expanded="false"><i class="fa fa-angle-right"></i>  Nomenclature</a>  </li>
                                          <li> <a href="${pageContext.request.contextPath}/pathologie" aria-expanded="false"><i class="fa fa-angle-right"></i>  Pathologie</a>  </li>
				
				</ul>
				</li>

				<li><a href="${pageContext.request.contextPath}/404.html"> <i class="fa fa-table"></i> <span
						class="link-title"> Bilan </span>
				</a></li>

				<li><a href="${pageContext.request.contextPath}/404.html"> <i class="fa fa fa-bar-chart-o"></i>
						<span class="link-title"> Comptabilité </span>
				</a></li>
				
				<li><a href="${pageContext.request.contextPath}/utilisateur"> <i class="fa fa fa-user"></i>
						<span class="link-title"> Utilisateur </span>
				</a></li>
				
				<li class="nav-divider"></li>
				<li><a href="${pageContext.request.contextPath}/logout"> <i class="fa fa-sign-in"></i> <span
						class="link-title"> Déconnexion </span>
				</a></li>
				
				

			</ul>
			<!-- /#menu -->
		</div>
		<!-- /#left -->
		
		<div id="content">
			<div class="outer">
				<div style="min-height: 700px;" class="inner bg-light lter">
											
					
					
							<jsp:invoke fragment="content" />
						
						<!-- /.col-lg-6 -->
					
					<!-- /.row -->
				</div>
				<!-- /.inner -->
			</div>
			<!-- /.outer -->
		</div>
		<!-- /#content -->


	</div>
	<!-- /#wrap -->
	<footer class="Footer bg-dark dker">
		<p>2018 © Cabinet Kiné</p>
	</footer>
	<!-- /#footer -->
	<!-- #helpModal -->

	<!-- /.modal -->
	<!-- /#helpModal -->

	

  <!--jQuery -->
            <script src="assets/lib/jquery/jquery.js"></script>


                    <script src="assets/js/jquery-ui.min.js"></script>
                    <script src="assets/js/moment.min.js"></script>
                    <script src="assets/js/fullcalendar.min.js"></script>



            <script src="assets/js/dataTables.bootstrap.min.js"></script>
            <script src="assets/js/jquery.dataTables.min.js"></script>
            <script src="assets/js/jquery.tablesorter.min.js"></script>
            <script src="assets/js/jquery.ui.touch-punch.min.js"></script>

            <!--Bootstrap -->
            <script src="assets/lib/bootstrap/js/bootstrap.js"></script>
            <!-- MetisMenu -->
            <script src="assets/lib/metismenu/metisMenu.js"></script>
            <!-- onoffcanvas -->
            <script src="assets/lib/onoffcanvas/onoffcanvas.js"></script>
            <!-- Screenfull -->
            <script src="assets/lib/screenfull/screenfull.js"></script>
            
            
            

            <!-- Metis core scripts -->
            <script src="assets/js/core.js"></script>
            <!-- Metis demo scripts -->

            <script src="assets/js/app.js"></script>

                <script>
                    $(function() {
                      Metis.MetisCalendar();
                    });
                </script>



            

</body>
</html>