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
<div class="col s12 center"><h2><strong>Login</strong></h2>
<p class="center">Ingresa tu Usuario y contraseña para obtener increíbles descuentos</p>	
</div>
</div>	<!--cierre primer row-->	
    
<div class="row col s12">
    <form action="LoginNewServlet" method="post" id="formLogin">
                <div class="input-field">
                    <input placeholder="" id="usuario" type="text" class="validate" name="usuario">
                    <label for="usuario">Usuario</label>
                </div>
                <br>
                <div class="input-field">
                    <input id="clave" type="password" class="validate" name="clave">
                    <label for="clave">Contraseña</label>
                </div>
                <input class="waves-effect orange btn" name="btn" type="submit" value="Procesar">
</form>
                
                
             <br/>
                <b>${mensaje}</b>
            </div>	
	
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
