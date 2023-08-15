<%--
  Created by IntelliJ IDEA.
  User: oscar
  Date: 26/07/2023
  Time: 09:54 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="assets/*css/responsive.css">
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
                    <!-- <div class="col-md-6 col-sm-6">
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
                    </div>-->
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
                                        <a class="nav-link" href="home.jsp"> Home </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.jsp">Iniciar Sesion </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="col-md-3 col-sm-5 d_none">
                        <ul class="sign">
                            <li><a class="sign_btn" href="index.jsp"> Iniciar Sesion</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header inner -->
<!-- end header -->
<!-- banner -->
<section class="banner_main">
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-lg-7">
                <div class="text-bg">
                    <img src="assets/images/girdpr.png" width="400">
                    <span>Cecadec</span>
                    <p>Gestor De Inventario Y Prestamos De Equipos Electronicos</p>
                </div>
            </div>
            <div class="col-md-5 col-lg-5">
                <div class="ban_img">
                    <figure><img src="assets/images/prueba1.jpeg" alt="#" /></figure>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end banner -->
<!-- about section -->
<div id="about" class="about">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-lg-7">
                <div class="about_box">
                    <div class="titlepage">
                        <h2><strong class="yellow">Bienvenido a </strong><br> G I R D</h2>
                    </div>
                    <h3>Gestor De Inventario Y Prestamos De Equipos Electronicos</h3>
                    <span>Este Sistema Es Exclusivo De <br>Cecadec</span>
                    <p>Aqui podras solicitar cualquier equipo electronico que necesites del area de Redes Digitales </p>
                </div>
            </div>
            <div class="col-md-12 col-lg-5">
                <div class="about_img">
                    <img src="assets/images/prueba4.jpeg" alt=""/>
                    <br>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- about section -->
<!-- portfolio -->
<div class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ">
                <div class="titlepage">
                    <h2><strong class="yellow">UTEZ</strong><br>DATID</h2>
                    <span>División Académica de Tecnologías de la Información y Diseño</span>
                    <p> En la actualidad ofrece programas educativos de Técnico Superior Universitario (TSU), Licenciatura e Ingeniería además de servicios tecnológicos y proyectos estratégicos que vinculan a la institución con el sector privado, así como cursos de educación continua al público en general, instituciones públicas y privadas.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<center> <img src="assets/images/carrusel1.jpg"> </center>
<br>
<br>
<!-- end portfolio section -->
<!-- team  section
<div id="team" class="team">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
         </div>
      </div>
      <div class="row">
         <div class="col-md-12">
            <div id="team" class="carousel slide team_Carousel " data-ride="carousel">
               <ol class="carousel-indicators">
                  <li data-target="#team" data-slide-to="0" class="active"></li>
                  <li data-target="#team" data-slide-to="1"></li>
                  <li data-target="#team" data-slide-to="2"></li>
               </ol>
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="container">
                        <div class="carousel-caption ">
                           <div class="row">
                              <div class="col-md-4 col-sm-6">
                                 <div id="ho_bg" class="team_img">
                                    <img src="images/datd.png" alt="#" />
                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-6">
                                 <div id="ho_bg" class="team_img">
                                    <img src="images/dacea.jpeg" alt="#" />
                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-6 d_none1">
                                 <div id="ho_bg" class="team_img ">
                                    <img src="images/dami.png" alt="#" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="container">
                        <div class="carousel-caption">
                           <div class="row">
                              <div class="col-md-4 col-sm-6 d_none1">
                                 <div id="ho_bg" class="team_img ">
                                    <img src="images/datefi.png" alt="#" />
                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-6">
                                 <div id="ho_bg" class="team_img">
                                    <img src="images/halcones.jpeg" alt="#" />
                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-6">
                                 <div id="ho_bg" class="team_img">
                                    <img src="images/ei.png" alt="#" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="container">
                        <div class="carousel-caption">
                           <div class="row">
                              <div class="col-md-4 col-sm-6">
                                 <div id="ho_bg" class="team_img">
                                    <img src="images/incu.png" alt="#" />
                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-6 d_none1">
                                 <div id="ho_bg" class="team_img ">
                                    <img src="images/cds.png" alt="#" />

                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-6">
                                 <div id="ho_bg" class="team_img">
                                    <img src="images/ani.jpg" alt="#" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#team" role="button" data-slide="prev">
                  <i class="fa fa-chevron-left" aria-hidden="true"></i>
               </a>
               <a class="carousel-control-next" href="#team" role="button" data-slide="next">
                  <i class="fa fa-chevron-right" aria-hidden="true"></i>
               </a>
            </div>
         </div>
      </div>
   </div>
</div>
-->
<!-- end team  section -->
<!-- contact  section -->
<!--
<div id="contact" class="contact ">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage">
               <h2><br>Contacto</h2>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-md-8 offset-md-2">
            <form id="post_form" class="contact_form">
               <div class="row">
                  <div class="col-md-12 ">
                     <input class="contact_control" placeholder=" Nombre y Apellido" type="type" name="Name">
                  </div>
                  <div class="col-md-12">
                     <input class="contact_control" placeholder=" Correo Electronico" type="type" name="Email">
                  </div>
                  <div class="col-md-12">
                     <input class="contact_control" placeholder=" Telefono " type="type" name="Phone Number ">
                  </div>
                  <div class="col-md-12">
                     <textarea class="textarea" placeholder="Message" type="type" Message="Name">Mensaje </textarea>
                  </div>
                  <div class="col-md-12">
                     <button class="send_btn">Enviar</button>
                  </div>
            </form>
         </div>
      </div>
   </div>
</div>
</div>
-->
<!-- end contact  section -->

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
                        <li><a href="https://goo.gl/maps/FnkGcw8AHjHUGxjRA"><i class="fa fa-map-marker" aria-hidden="true"></i></a> Palo Escrito 62760
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
                        <li><a href="index.jsp"></a>Iniciar Sesion</li>
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