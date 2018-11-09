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
                <div class="col s12 center"><h2><strong>Mantenedor</strong></h2>	
                </div>
            </div>	<!--cierre primer row-->

            <div class="row">
                <form action="Controlador.do" method="post">
                    
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">assignment</i>
                            <input placeholder="Ingrese su rut" id="rut" type="text" class="validate" name="rut" value="${rut}">
                            <label for="rut">Rut</label>
                        </div>
                            
                        <div class="input-field col s6">
                            <i class="material-icons prefix">person</i>
                            <input placeholder="Ingrese su nombre" id="nombre" type="text" class="validate" name="nombre" value="${nombre}">
                            <label for="nombre">Nombre</label>
                        </div>
                    </div>
                  


                
                    
                    <!--row-->            
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">account_box</i>
                            <input placeholder="Ingrese apellido paterno" id="apellidoPaterno" type="text" class="validate" name="apellidoPaterno" value="${apellidoPaterno}">
                            <label for="apellidoPaterno">Apellido Paterno</label>
                        </div>
                   
                        <div class="input-field col s6">
                            <i class="material-icons prefix">account_box</i>
                            <input placeholder="ingrese apellido materno" id="apellidoMaterno" type="text" class="validate" name="apellidoMaterno" value="${apellidoMaterno}">
                            <label for="apellidoMaterno">Apellido Materno</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">date_range</i>
                            <input id="fechaNacimiento" type="text" class="validate" name="fechaNacimiento" value="${fechaNacimiento}">
                            <label for="fechaNacimiento">Fecha de Nacimiento</label>
                        </div>
                   
                        <div class="input-field col s6">
                            <i class="material-icons prefix">account_box</i>
                            <input placeholder="ingrese su edad" id="edad" type="text" class="validate" name="edad" value="${edad}">
                            <label for="edad">Edad</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">location_on</i>
                            <input placeholder="Ingrese Clave" id="Clave" type="text" class="validate" name="clave" value="${clave}">
                            <label for="Clave">Contraseña</label>
                        </div>
                   
                        <div class="input-field col s6">
                            <i class="material-icons prefix">favorite</i>
                            <input id="estadoCivil" type="text" class="validate" name="estadoCivil" value="${estadoCivil}">
                            <label for="estadoCivil">Estado Civil</label>
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
                        <div class="col s12 center-align">
                        <input class="waves-effect orange btn " name="btn" type="submit" value="Buscar">
                        </div>
                    </div> 
                            <br>
                    <div class="row">
                    <div class="col s12">    
                        <input class="waves-effect grey btn col s6" name="btn" type="submit" value="Modificar">
                        <input class="waves-effect red darken-2 btn col s6" name="btn" type="submit" value="Eliminar">
                    </div>
                    </div>
                    
                    </div>
                </form>



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
