<?php
  require_once("../../config/conexion.php"); 
  if(isset($_SESSION["usu_id"])){ 
?>
<!DOCTYPE html>
<html>
    <?php require_once("../MainHead/head.php");?>
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
	<link rel="stylesheet" type="text/css" href="carrusel.css">
    <link rel="stylesheet" type="text/css" href="style.css">
	<title>SSITEL::Tareas</title>
</head>
<body class="with-side-menu">

    <?php require_once("../MainHeader/header.php");?>

    <div class="mobile-menu-left-overlay"></div>
    
    <?php require_once("../MainNav/nav.php");?>

	<!-- Contenido -->
  
  <div class="container">
    <h2>Responsivas de Equipos de Cómputo</h2>
    <form>
      <label for="nombre">Nombre:</label>
      <input type="text" id="nombre" name="nombre" placeholder="Ingrese su nombre">
      
      <label for="email">Correo electrónico:</label>
      <input type="email" id="email" name="email" placeholder="Ingrese su correo electrónico">
      
      <label for="equipo">Equipo:</label>
      <input type="text" id="equipo" name="equipo" placeholder="Ingrese el nombre del equipo">
      
      <label for="numero_serie">Número de serie:</label>
      <input type="text" id="numero_serie" name="numero_serie" placeholder="Ingrese el número de serie del equipo">
      
      <label for="departamento">Departamento:</label>
      <input type="text" id="departamento" name="departamento" placeholder="Ingrese el departamento">
      
      <label for="fecha">Fecha:</label>
      <input type="text" id="fecha" name="fecha" placeholder="Ingrese la fecha">
      
      <label for="comentarios">Comentarios:</label>
      <textarea id="comentarios" name="comentarios" placeholder="Ingrese sus comentarios"></textarea>
      
      <button type="submit">Enviar</button>
    </form>
  </div>
</body>
</html>
	<!-- Contenido -->

	<?php require_once("../MainJs/js.php");?>

	<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script type="text/javascript" src="carrusel.js"></script>
	<script type="text/javascript" src="home.js"></script>

</body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>