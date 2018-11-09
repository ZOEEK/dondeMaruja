<%-- 
    Document   : index
    Created on : 15-abr-2018, 21:54:15
    Author     : zoekt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<meta charset="UTF-8">
<title>Donde Maruja - Minimarket</title>
  <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<link type="text/css" rel="stylesheet" href="css/main.css" media="screen,projection"/>
	
</head>

<body>
        <nav>
            <div class="nav-wrapper orange">
                <a href="index.jsp" class="brand-logo left"><img src="img/logo-donde-maruja.png"/></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="registrarse.jsp">Registrarse</a></li>
                    <li><a href="catalogo.jsp">Catálogo</a></li>
                    <li><a href="mantenedor.jsp">Mantenedor</a></li>
                    <li><a href="generarcupon.jsp">Generar Cupón</a></li>
                    <li><a href="listarcupon.jsp">Listar Cupón</a></li>
                </ul>
            </div>
        </nav>
	
<div class="container">
	
<div class="row">
<div class="col s12 center"><img class="responsive-img" src="img/slide1.jpg"/></div>
</div>	<!--cierre primer row-->

<!--Cards-->
 <div class="row">
    <div class="col s6">
      <div class="card">
        <div class="card-image">
          <a href="catalogo.jsp"><img src="img/revisa-catagolo.jpg"></a>
		  </div>
      </div>
    </div>
	 
	   <div class="col s6">
      <div class="card">
        <div class="card-image">
          <a href="registrarse.jsp"><img src="img/grandes-descuentos.jpg"></a>
        </div>
      </div>
    </div>
	 
	 
	  
  </div>
<!--cierre cards-->		
	
</div><!--cierre container-->

<!--footer-->
	<footer class="page-footer orange">
          <div class="container">
            <div class="row">
              <div class="col s12">
                <p><img src="img/logo-donde-maruja-footer.png"/> Avenida Vicuña Mackenna 1123, Santiago Centro.</p>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container right-align">
            © 2018 Todos los derechos reservados a Zoek! & Nico 
            </div>
          </div>
        </footer>
<!--cierre footer-->	


	
	

 
 <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>		
</body>
</html>
