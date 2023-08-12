<%--
  Created by IntelliJ IDEA.
  User: oscar
  Date: 27/07/2023
  Time: 11:50 a. m.
  To change this template use File | Settings | File Templates.
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
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- fevicon -->
    <link rel="icon" href="images/girdpr.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
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
    <div class="loader"><img src="images/loading.gif" alt="#" /></div>
</div>
<!-- end loader -->
<!-- header -->
<header>
    <!-- header inner -->
    <div class="header">
        <div class="header_to d_none">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <ul class="lan">
                            <li><i class="fa fa-globe" aria-hidden="true"></i> Idioma: <img src="images/prueba3.png" height="30" width="30"/> Español (Mexico)</li>
                        </ul>

                    </div>
                    <div class="col-md-6 col-sm-6 ">
                        <ul class="social_icon1">

                            <li> <a href="https://www.facebook.com/UTEZ.Morelos?mibextid=2JQ9oc"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li> <a href="https://twitter.com/utez_morelos?s=20"><i class="fa fa-twitter"></i></a></li>
                            <li> <a href="https://www.youtube.com/@utez.morelos/featured"><i class="fa fa-youtube"></i></a></li>
                            <li> <a href="https://instagram.com/utezmorelos?igshid=MzRlODBiNWFlZA=="><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_midil">
            <div class="container">
                <div class="row d_flex">
                    <div class="col-md-4 col-sm-4 d_none">
                        <ul class="conta_icon">
                            <li><a><i class="#" aria-hidden="true"></i><img src="images/datid.png"></a> </li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-4 ">
                        <center><img src="images/Logo-utez.png" width="200"></center>
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
                                        <a class="nav-link" href="home.jsp"> Home </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="cliente.jsp">Administrador</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="usuariosForm.jsp">Registro Usuario</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
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
                    <img src="images/girdpr.png" width="400"><br><br>

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
    <form class="row g-3 ">
        <div class="col-md-4">
            <label for="validationServer06" class="form-label"><h3><strong>NOMBRE =</strong></h3></label>
            <input type="text" class="form-control-file" id="validationServer06" placeholder="Ingresa tu nombre completo"required>
        </div>

        <div class="col-md-4">
            <label for="validationServer01" class="form-label"><h3><strong>MATRICULA =</strong></h3></label>
            <input type="text" class="form-control-file" id="validationServer01" placeholder="Ingresa tu matricula completa"required>
        </div>
        <div class="col-md-4">
            <label for="validationServer02" class="form-label"><h3><strong>PRESTAMOS =</strong></h3></label>
            <input type="text" class="form-control-file" id="validationServer02" placeholder="Ingresa el tipo de prestamos"required>
        </div>
        <br><br>
        <div class="col-md-4">    <br><br>
            <label for="validationServer03" class="form-label"><h3><strong>CORREO ELECTRONICO =</strong></h3></label>
            <input type="email" class="form-control-file" id="validationServer03" placeholder="Ingresa tu correo electronico"required>
        </div>
        <br><br>
        <div class="col-md-3">   <br><br>
            <label for="validationCustom04" class="form-label"><h3><strong>TURNO =</strong></h3></label>
            <select class="form-select" id="validationCustom04" required>
                <option selected disabled value="">Turno...</option>
                <option>Matutino</option>
                <option>Vespertino</option>
            </select>
        </div>
        <div class="col-12" align="center"><br><br>
            <button class="btn btn-primary" type="submit">Agregar Usuario</button>
        </div>
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
                        <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a> Palo Escrito 62760
                            <br> Emiliano Zapata Morelos
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
                        <li class="active"> <a href="home.jsp"> Home</a></li>
                        <li> <a href="cliente.jsp"></i> Administrador</a></li>
                        <li> <a href="usuariosForm.jsp"></i> Registro Usuario</a></li>

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
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!-- sidebar -->
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
