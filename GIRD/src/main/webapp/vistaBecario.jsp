<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="assets/images/loading.gif" alt="#" /></div>
</div>
<%--<c:if test="${tipoSesion != true}">
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
                                    <li class="nav-item active">
                                        <a class="nav-link" href="vistaBecario.jsp">Usuarios</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="preadmin.jsp">Regresar</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                        <div class="col-md-3 col-sm-5 d_none">
                            <ul class="sign">
                                <li><a class="sign_btn" href="index.jsp"> Cerrar Sesion</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <section class="banner_main">
        <div class="container">
            <div class="row">
                <div class="text-bg">
                    <img src="assets/images/girdpr.png" width="400"><br><br>

                    <span>U S U A R I O S</span>
                </div>
            </div>
        </div>
        <center><h2 style="color:white;"><strong>E s t a d o  G e n e r a l</strong> </h2></center>

    </section>
    <!-- about section -->
    </div>
</header>
<!-- end contact  section -->
<%--<jsp:include page="header.jsp"/>--%>

<%--<c:if user="${isAdmin}">
  <c:if user="${not empty sesion}">--%>
 <table class="table table-striped table-hover">
                <thead>
                <tr align="center">
                    <th scope="col"><h1><strong><font face="Impac">Numero de Serie</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Tipo</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Marca</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Modelo</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Unidades</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Características</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Estatus</font></strong></h1></th>
                    <th scope="col"><h1><strong><font face="Impac">Observaciones</font></strong></h1></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${dispositivos}" var="u">
                    <tr align="center">
                        <td>${u.numSerie}</td>
                        <td>${u.tipo}</td>
                        <td>${u.marca}</td>
                        <td>${u.modelo}</td>
                        <td>${u.unidades}</td>
                        <td>${u.caracteristicas}</td>
                        <td>${u.estatus}</td>
                        <td>${u.observaciones}</td>
                        <!--<td>***</td>-->
                        <c:choose>
                            <c:when test="${u.estatus eq 'En espera' || u.estatus eq 'Fuera de Servicio'}">
                                <td></td> <!-- Celda vacía en lugar del botón -->
                            </c:when>
                            <c:otherwise>
                                <td><a class="btn btn-warning"
                                       href="prestamosForm.jsp?id=${u.id}">Prestar</a></td>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                </c:forEach>
                </tbody>
            </table>


            <table class="table table-striped table-hover">
                <h2>Préstamos Activos</h2>
                <c:forEach items="${prestamos}" var="u">
                    <c:if test="${u.estatus eq true}">
                        <p>Dispositivo: ${u.tipo} - ${u.marca} ${u.modelo}</p>
                        <p>Nombre: ${u.nombre}</p>
                        <p>Apellido: ${u.apellido}</p>
                        <p>Matrícula: ${u.matricula}</p>
                        <p>Estatus: ${u.estatus}</p>
                        <p>Fecha de Préstamo: ${u.fechaPrestamo}</p>
                        <form action="PrestamoServlet" method="post">
                            <input type="hidden" name="id" value="${u.id}" />
                            <input type="hidden" name="operacion" value="devolucion" />
                            <input type="submit" value="Devolver" action="update" />
                        </form>
                        <hr>
                    </c:if>
                </c:forEach>

                <!-- ... tu código posterior ... -->

                <%--
                    <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Matrícula</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        request.getSession().removeAttribute("prestamos");
                        DaoPrestamos daop = new DaoPrestamos();
                        request.getSession().setAttribute("prestamos",daop.findAll());
                    %>
                    <c:forEach items="${prestamos}" var="u">
                        <tr>
                            <td>${u.nomAl}</td>
                            <td>${u.apellAl}</td>
                            <td>${u.matriAl}</td>
                            <td>${u.entregaDisp}</td>
                            <td>${u.devolucionDisp}</td>
                            <td><a class="btn btn-warning"
                                   href="/GIRD_war_exploded/PrestamoServlet?id=${u.id}&operacion=update">Devolver</a></td>

                        </tr>
                    </c:forEach>
                    </tbody>
                    --%>
            </table>
<%--</c:if>
</c:if>--%>
    <%--</c:if>
</c:if>
<c:if test="${tipoSesion == true}">

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
                    <h3>Menus</h3>
                    <ul class="link_icon">
                        <li class="active"> <a href="vistaBecario.jsp"> Usuarios</a></li>
                        <li> <a href="preadmin.jsp"></i> Regresar</a></li>
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
</body>
</html>
