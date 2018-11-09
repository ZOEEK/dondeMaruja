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
                <div class="col s12 center"><h2><strong>Generar cupón de descuento</strong></h2>	
                </div>
            </div>	<!--cierre primer row-->
         <div class="row">
                <form action="Controlador.do" method="post">
                  
                        
                        <div class="input-field col s4">
                            <input placeholder="Ingrese número de cupón" id="rut" type="text" class="validate" name="numeroCupon" value="${numeroCupon}">
                            <label for="numeroCupon">Número de cupón</label>
                        </div>
                 

                        <div class="input-field col s4 right">
                            <input placeholder="Ingrese su rut" id="rut" type="text" class="validate" name="rut" value="${rut}">
                            <label for="rut">Rut</label>
                        </div>

                </div><!---cierre primer row-->
                
                <div class="row">
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">person</i>
                        <input placeholder="Ingrese nombre y apellidos del cliente" id="nombreApellidos" type="text" class="validate" name="nombreApellidos" value="${nombreApellidos}">
                        <label for="nombre">Nombre y apellidos</label>
                    </div>
                </div>             
                    
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">date_range</i>
                            <input type="date" class="datepicker" id="fechaEmision" name="fechaEmision">
                            <label class="" for="fechaEmision">Fecha de Emisión</label>
                        </div>
                        
                          
                        <div class="input-field col s6">
                            <i class="material-icons prefix">date_range</i>
                            <input type="date" class="datepicker" id="fechaValidez" name="fechaValidez">
                            <label class="" for="fechaValidez">Fecha de Validez</label>
                        </div>
                    </div>
                   
                
                  
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">location_on</i>
                            <input placeholder="Ingrese Dirección" id="Clave" type="text" class="validate" name="direccion" value="${direccion}">
                            <label for="direccion">Dirección</label>
                        </div>
                    </div>


                    <div class="row">
                         <div class="input-field col s6">
                            <i class="material-icons prefix">contact_mail</i>
                            <input placeholder="Ingrese mail" id="mail" type="text" class="validate" name="mail" value="${mail}">
                            <label for="mail">Mail</label>
                        </div>
                        
                        <div class="input-field col s6">
                            <i class="material-icons prefix">phone_android</i>
                            <input placeholder="Ingrese numero de teléfono" id="numeroTelefono" type="text" class="validate" name="numeroTelefono" value="${numeroTelefono}">
                            <label for="numeroTelefono">Número de teléfono</label>
                        </div>
                    </div>
                    
                    <div class="row">
                    <div class="col s12">    
                        <input class="orange btn right" name="btn" type="submit" value="Generar">
                    </div>
                    </div>    
                            
                </form>


                </div>        
                <br/>
                <b>${msjModificar}</b>
                <b>${msjEliminar}</b>
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
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>

        <script>
            $(document).ready(function () {
                $('.slider').slider();
            });
            $('select').material_select();
            $('.datepicker').pickadate({
                selectMonths: true,
                selectYears: 40,
                yearRange: 30,
                monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                    'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul',
                    'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miercoles',
                    'Jueves', 'Viernes', 'Sábado'],
                weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
                weekdaysLetter: ['D', 'L', 'M', 'M', 'J', 'V', 'S'],
                today: 'Hoy',
                clear: 'Limpiar',
                close: 'Aceptar'
            });
        </script>		
    </body>
</html>
