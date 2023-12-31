
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>GIRD</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <!-- fevicon -->
    <link rel="icon" href="assets/images/girdpr.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="assets/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="assets/images/loading.gif" alt="#" /></div>
</div>
<!-- end header -->
<!-- header -->

<header>
    <!-- header inner -->
    <div class="header">
        <div class="header_to d_none">
        <div class="container">
            <div class="row">
                <br>
                <!--  <div class="header_to d_none">
                              <div class="col-md-6 col-sm-6">
                                  <ul class="lan">
                                      <li><i class="fa fa-globe" aria-hidden="true"></i> Idioma: <img src="assets/images/prueba3.png" height="30" width="30"/> Español (Mexico)</li>
                                  </ul>

                              </div>
                              <div class="col-md-6 col-sm-6 ">
                                  <ul class="social_icon1">

                                      <li> <a href="https://www.facebook.com/UTEZ.Morelos?mibextid=2JQ9oc"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                      <li> <a href="https://twitter.com/utez_morelos?s=20"><i class="fa fa-twitter"></i></a></li>
                                      <li> <a href="https://www.youtube.com/@utez.morelos/featured"><i class="fa fa-youtube"></i></a></li>
                                      <li> <a href="https://instagram.com/utezmorelos?igshid=MzRlODBiNWFlZA=="><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                  </ul>
                             </div>-->
            </div>
        </div>
        </div>
    </div>
    <div class="header_midil">
        <div class="container">
            <div class="row d_flex">
                <div class="col-md-4 col-sm-4 d_none">
                    <ul class="conta_icon">
                        <li><a><i class="#" aria-hidden="true"></i><img src="assets/images/datd.png"></a> </li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-4 ">
                    <center><img src="assets/images/Logo-utez.png" width="200"></center>
                </div>
                <div class="col-md-4 col-sm-4 d_none">
                    <ul class="conta_icon ">
                        <li><a href="http://www.utez.edu.mx/"><i class="fa fa-pagelines" aria-hidden="true"></i> utez.edu.mx</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="header_bo">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-sm-7">
                    <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item ">
                                    <a class="nav-link" href="index.jsp"> Home  </a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="home.jsp">Iniciar Sesión</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    </div>
</header>
<!-- end header inner -->
<!-- end header -->

<!-- about section -->
<center>
    <div class="container">
        <br>
        <br>
        <br>
        <center> <img src="assets/images/girdpr.png" style="width: 20%;"/></center>
        <br/>
        <div class="login-panel panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title">
                    Inicio de sesión
                </h2>
            </div>
            <%
                request.getSession().removeAttribute("sesion");
                request.getSession().removeAttribute("tipoSesion");

            %>
            <%--<c:if test="${not empty sesion}">
                <h1>Bienvenido ${sesion.nombre}</h1>
                <c:if test="${not empty tipoSesion}">
                    <h1>Eres un usuario tipo ${tipoSesion}</h1>
                </c:if>
            </c:if>
            <c:if test="${empty sesion}">
            </c:if>--%>
            <div class="panel-body">
                <form ng-submit="iniciarSesion()" role="form" method="post" name="formLogin" action="login" ng-submit="formLogin.$valid" >
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control-file" ng-model="usuario.nick" placeholder="Correo Electronico" name="correo" type="email" autofocus required >
                        </div>
                        <div class="form-group">
                            <input class="form-control-file" ng-model="usuario.contrasexa" placeholder="Contraseña" name="contra" type="password" required>
                        </div>
                        <div>
                            <label>
                                <a href="recuperaForm.jsp">¿Olvidaste tu contraseña?</a>
                            </label>
                        </div>
                        <button type="submit" ng-bind="txtBtnIniciar" ng-show="btnIniciar" ng-disabled="formLogin.$pristine || !formLogin.$valid" class="btn btn-lg btn-success btn-block">Iniciar</button>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>
    </div>
    <!-- about section -->
</center>
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <H1> <strong class="text-white"><big>G I R D</big> </strong> </H1>
                </div>

                <div class="col-lg-5 col-md-6 col-sm-6">
                    <h3>Contacto</h3>
                    <ul class="location_icon">
                        <li><a href="https://goo.gl/maps/FnkGcw8AHjHUGxjRA"><i class="fa fa-map-marker" aria-hidden="true"></i> Palo Escrito 62760
                            <br> Emiliano Zapata Morelos</a>
                        </li>
                        <li><a href="http://www.utez.edu.mx/"><i class="fa fa-pagelines" aria-hidden="true"></i> Utez.edu.mx</a> </li>
                        <li><a href="#"><i class="fa fa-volume-control-phone" aria-hidden="true"></i></a> +01 (777) 368 11 65</li>
                    </ul>
                    <ul class="social_icon">
                        <li> <a href="https://www.facebook.com/UTEZ.Morelos?mibextid=2JQ9oc"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li> <a href="https://twitter.com/utez_morelos?s=20"><i class="fa fa-twitter"></i></a></li>
                        <li> <a href="https://www.youtube.com/@utez.morelos/featured"><i class="fa fa-youtube"></i></a></li>
                        <li> <a href="https://instagram.com/utezmorelos?igshid=MzRlODBiNWFlZA=="><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <h3>Menú</h3>
                    <ul class="link_icon">
                        <li class="active"> <a href="index.jsp"> Home</a></li>
                        <li><a href="home.jsp">Iniciar Sesión</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>© 2023 Derechos Reservados.<a href="http://www.utez.edu.mx/"> GIRD UTEZ</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- Javascript files-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery-3.0.0.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<!-- sidebar -->
<script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/js/custom.js"></script>
<c:if test="${not empty msg}">
    <script>
        alert('${msg}');
    </script>
    <% request.getSession().removeAttribute("msg");%>
</c:if>
</body>
</html>
<!--<form action="HistorialServlet" method="post">
<button type="submit" >Descargar historial</button>
</form>-->

<script src="assets/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>