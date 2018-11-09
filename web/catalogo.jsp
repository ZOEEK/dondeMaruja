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
<div class="col s12 center"><h2><strong>Catálogo</strong></h2>
<p class="center">Te invitamos a conocer todos nuestros productos.
	Despachamos a todo Chile!</p>	
</div>
</div>	<!--cierre primer row-->

<!--Cards-->
 <div class="row">
	
    <!--1-->
    <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/corchetera.jpg"/>
        </div>
		   <div class="card-content">
          <p>Corchetera Negra, para corchete tradicional.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$1.200</p>
        </div>
      </div>
    </div>
	 
	 <!--2-->
   <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/destacador.jpg"/>
        </div>
		   <div class="card-content">
                       <p>Destacador amarillo fluor, con fibra de algodón.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$900</p>
        </div>
      </div>
    </div>
	 
	  <!--3-->
    <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/giotto-mega.jpg"/>
        </div>
		   <div class="card-content">
          <p>Lapices de madera. 12 colores</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$2000</p>
        </div>
      </div>
    </div>
	 
	  <!--4-->
   <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/doble-clip-15mm.jpg"/>
        </div>
		   <div class="card-content">
          <p>Clips para hojas, color negro y de metal.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$500</p>
        </div>
      </div>
    </div>
	  
  </div>
<!--cierre 1er nivel cards-->		

<!--Cards-->
 <div class="row">
	
    <!--1-->
    <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/libreta1.jpg"/>
        </div>
		   <div class="card-content">
          <p>Libreta Negra, masculina, con hoja lineal.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$4000</p>
        </div>
      </div>
    </div>
	 
	 <!--2-->
    <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/sacapunta-redondo.jpg"/>
        </div>
		   <div class="card-content">
          <p>Sacapunta de plástico, para lapices de madera.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$50</p>
        </div>
      </div>
    </div>
	 
	  <!--3-->
    <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/libreta2.jpg"/>
        </div>
		   <div class="card-content">
          <p>Libreta Femenina, con hoja cuadriculada.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$4000</p>
        </div>
      </div>
    </div>
	 
	  <!--4-->
    <div class="col s3">
      <div class="card">
        <div class="card-image">
          <img src="img/productos/tratto-negro-f.jpg"/>
        </div>
		   <div class="card-content">
          <p>Bolígrafo negro, de tinta gel.</p>
        </div>
        <div class="card-action">
          <p class="naranjito">$1000</p>
        </div>
      </div>
    </div>
	  
  </div>
<!--cierre 1er nivel cards-->	
	
		
	
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
