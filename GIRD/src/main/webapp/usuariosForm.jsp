
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
    <link rel="stylesheet" href="assets/https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="assets/https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="assets/https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="assets/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="assets/images/loading.gif" alt="#" /></div>
</div>
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
                            <li><a><i class="#" aria-hidden="true"></i><img src="assets/images/datid.png"></a> </li>
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
                                        <a class="nav-link" href="usuariosForm.jsp">Registro Usuario</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="vistaUsuarios.jsp">Regresar</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="col-md-3 col-sm-5 d_none">
                        <ul class="sign">
                            <li><a class="sign_btn" href="home.jsp"> Cerrar Sesión</a></li>
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

                    <span>R E G I S T R A R <br><br> U S U A R I O</span>
                </div>
            </div>
        </div>
    </section>
    <!-- about section -->
</header>
<!-- end contact  section -->
<br><br><br>
<fieldset>
    <form class="row g-3" method="post" action="UsuarioServlet">
        <div class="col-md-4">
            <label for="validationServer06" class="form-label"><h3><strong>NOMBRE:</strong></h3></label>
            <input type="text" maxlength="30" class="form-control-file" name="nombre" id="validationServer06" placeholder="Ingresa el nombre del usuario" value="${usuario.nombre}" required>
        </div>

        <div class="col-md-4">
            <label for="validationServer01" class="form-label"><h3><strong>APELLIDOS:</strong></h3></label>
            <input type="text" maxlength="30" class="form-control-file" name="apellido" id="validationServer01" placeholder="Ingresa los apellidos del usuario" value="${usuario.apellido}" required>
        </div>

        <div class="col-md-4">
            <label for="validationServer02" class="form-label"><h3><strong>CORREO ELECTRONICO:</strong></h3></label>
            <input type="email" minlength="22" maxlength="64" class="form-control-file" name="email" id="validationServer02" placeholder="Ingresa un email único del usuario" value="${usuario.email}" required>
        </div>
        <br><br>

        <div class="col-md-4">    <br><br>
            <label for="validationServer03" class="form-label"><h3><strong>CONTRASEÑA:</strong></h3></label>
            <input type="password" minlength="10" maxlength="224" class="form-control-file" name="contra" id="validationServer03" placeholder="Ingresa la contraseña de inicio de sesión del usuario" value="${usuario.contra}" required>
        </div>

        <!-- AQUI ESTA LO DE USUARIOS DE TIPO DE VERDADERO Y FALSO -->
        <div class="col-md-4">    <br><br>
            <label for="validationServer09" class="form-label"><h3><strong>TIPO DE USUARIO:</strong></h3></label>
            <%--<input type="text" class="form-control-file" id="validationServer09" name="estatus" placeholder="Ingresa el estado del dispositivo" value="${dispositivo.estatus}" required>--%>
            <select class="form-control-file" id="validationServer09" name="tipoUsr" value="${usuario.tipoUsr}">
               <option value="false">Becario</option>
                <option value="true">Administrador</option>
            </select>
        </div>
        <!-- AQUI TERMINA-->

        <br><br>

        <input type="hidden" name="id" value="${usuario.id}"/>

        <div class="col-12" align="center"><br><br>
            <button class="btn btn-primary" data-toggle="modal" data-target="#confirmAddUserModal" type="button">Agregar Usuario</button>
        </div>
        <div class="modal fade" id="confirmAddUserModal" tabindex="-1" role="dialog" aria-labelledby="confirmAddUserModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="confirmAddUserModalLabel">Confirmar Agregar Usuario</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ¿Estás seguro de que deseas agregar este usuario?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <form action="UsuarioServlet" method="post">
                            <!-- Campos necesarios para agregar un usuario -->
                            <input type="hidden" name="id" value="${usuario.id}">
                            <button type="submit" class="btn btn-primary">Agregar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</fieldset>
<br><br>

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
                        <li class="active"> <a href="usuariosForm.jsp"> Registro Usuarios</a></li>
                        <li> <a href="vistaUsuarios.jsp"></i> Regresar</a></li>

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
    <%
        request.getSession().removeAttribute("usuario");
    %>
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
