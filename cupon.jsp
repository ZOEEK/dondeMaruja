<%-- 
    Document   : registrarse
    Created on : 15-abr-2018, 23:05:54
    Author     : zoekt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Donde Maruja - Minimarket - Registrarse</title>
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
                <a href="index.jsp" class="brand-logo center"><img src="img/logo-donde-maruja.png"/></a>
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
         <div class="row" style="margin:100px 0px;">
             
          <div class="s8 center">
              
           <img class="img-responsive left" src="img/logo-donde-maruja-footer.png" alt=""/>

           <p class="right"><b>Cupón 459873</b></p>
           <br>
           <br>
             <p class="col s5 offset-s1">Fecha de emisión: miércoles 11 de enero del 2017</p> 
             <p class="col s5 offset-s1">Fecha de Validez: jueves 12 de enero del 2017</p>

             <p>Cliente:</p>
              
             <h3><b>Rodrigo Pereira González</b></h3>  

            <p>Rut: 8.635.321-8<p>

            <p>Dirección Pasaje M #5689 Recreo Viña del Mar  Correo electrónico rpereirag@gmail.com
                Fono:984563266</p>

            <p>DESCUENTO: Aplicar un 15% de descuento al total de su compra del 12 de enero del 2017</p>

            <h4><b>¡Felicitaciones!</b></h4>
            
         </div> 
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




    <!--Import jQuery before materialize.js-->
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
