<%-- 
    Document   : listarcupon
    Created on : 20-abr-2018, 18:33:20
    Author     : zoekt
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
            
       <div class="row" style="margin: 50px 0px 0px 0px">
                <div class="col s12 center"><h2><strong>Listar Cupón</strong></h2>	
                </div>
       </div>
            
        <div class="row" style="margin: 50px 0px">
            <div class="col s12">
                
                <table class="striped orange">
                    <thead>
                        <tr>
                            <th class="center">Numero Cupon</th>
                            <th class="center">Fecha Emisión</th>
                            <th class="center">Fecha Válidez</th>
                            <th class="center">Nombre</th>
                            <th class="center">Rut</th>
                            <th class="center">Dirección</th>
                            <th class="center">Mail</th>
                            <th class="center">Número Teléfono</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${listaC}" var="item">
                            <tr>
                                <td>${item.numeroCupon}</td>
                                <td>${item.fechaEmision}</td>
                                <td>${item.fechaValidez}</td>
                                <td>${item.nombreApellidos}</td>
                                <td>${item.rut}</td>
                                <td>${item.direccion}</td>
                                <td>${item.mail}</td>
                                <td>${item.numeroTelefono}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
                
            </div>
        </div>
    </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>

    </body>
</html>