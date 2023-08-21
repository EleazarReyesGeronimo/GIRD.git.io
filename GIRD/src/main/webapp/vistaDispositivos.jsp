<%@ page import="mx.edu.utez.gird.model.DaoDispositivos" %>
<%@ page import="mx.edu.utez.gird.model.DaoUsuarios" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:include page="header.jsp"/>--%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
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
<header class="main-layout">
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader"><img src="assets/images/loading.gif" alt="#" /></div>
    </div>
    <%--<c:if test="${tipoSesion == true}">
    <c:if test="${not empty sesion}">--%>
    <!-- end loader -->
    <!-- header -->
    <header>
        <!-- header inner -->
        <div class="header">
            <div class="header_to d_none">
                <div class="container">
                    <div class="row">
                        <br>
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
                                        <li class="nav-item active" >
                                            <a class="nav-link " href="vistaDispositivos.jsp"> Dispositivos </a>
                                        </li>
                                        <li class="nav-item" >
                                            <a class="nav-link" href="vistaAdmin.jsp.jsp"> Administrador </a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div class="col-md-3 col-sm-5 d_none">
                            <ul class="sign">
                                <li><a class="sign_btn" href="index.jsp"> Cerrar Sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header inner -->
        <section class="banner_main">
            <div class="container">
                <div class="row">
                    <div class="text-bg">
                        <img src="assets/images/girdpr.png" width="400"><br><br>

                        <span>D I S P O S I T I V O S</span>
                    </div>
                </div>
                <center><h2 style="color:white;"><strong>E s t a d o  G e n e r a l</strong> </h2></center>

            </div>
        </section>
        </div>
    </header>
    <!-- about section -->

    <!-- end contact  section -->
    <br><br><br>
    <table class="table table-striped table-hover">
        <thead>
        <tr align="center">
            <th scope="col"><h1><strong><font face="Impac">No. de Serie</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Tipo</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Marca</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Modelo</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Unidades</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Caracteristicas</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Estado</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Observaciones</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Eliminar</font> </strong></h1></th>
            <th scope="col"><h1><strong><font face="Impac">Modificar</font> </strong></h1></th>
        </tr>
        </thead>
        <tbody align="center">
        <%
            request.getSession().removeAttribute("dispositivos");
            DaoDispositivos dao = new DaoDispositivos();
            request.getSession().setAttribute("dispositivos",dao.findAll());
        %>
        <c:forEach items="${dispositivos}" var="u">
            <tr>
                <td>${u.numSerie}</td>
                <td>${u.tipo}</td>
                <td>${u.marca}</td>
                <td>${u.modelo}</td>
                <td>${u.unidades}</td>
                <td>${u.caracteristicas}</td>
                <td>${u.estatus}</td>
                <td>${u.observaciones}</td>
                <td>
                    <!--<div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"  >
                        <label class="form-check-label" for="flexCheckDefault">
                        </label>
                    </div>-->
                    <button><a class="btn btn-outline-danger"href="DispositivoServlet?id=${u.id}&operacion=delete">Eliminar Dispositivo</a></button>
                </td>
                <td> <button><a class="btn btn-outline-warning" href="DispositivoServlet?id=${u.id}&operacion=update">Modificar Dispositivo</a></button></td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
    <center><button type="button" class="btn btn-outline-primary"> <a href="dispositivosForm.jsp">Registrar Nuevo Dispositivo</a> </button> </center>



    </div>
    </div>
    </div>
    </div>
    <!-- about section -->

    <!-- end banner -->
</header>
<!--  footer -->
<%--</c:if>
</c:if>
<c:if test="${tipoSesion != true}">

    <h1>No tienes permiso para ver esta página.</h1>

</c:if>--%>
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
                        <li><a href="https://goo.gl/maps/FnkGcw8AHjHUGxjRA"><i class="fa fa-map-marker" aria-hidden="true"></i>Palo Escrito 62760
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
                        <li class="active"> <a href="vistaDispositivos.jsp"></i> Dispositivos </a></li>
                        <li> <a href="vistaAdmin.jsp"></i> Regresar</a></li>
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
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>