<?php
  require_once("../../config/conexion.php");
  if(isset($_SESSION["usu_id"])){
?>
<!DOCTYPE html>
<html>
    <?php require_once("../MainHead/head.php"); ?>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link rel="stylesheet" type="text/css" href="carrusel.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>SSITEL::Generar Responsiva</title>
</head>
<body class="with-side-menu">

    <?php require_once("../MainHeader/header.php"); ?>

    <div class="mobile-menu-left-overlay"></div>

    <?php require_once("../MainNav/nav.php"); ?>

    <!-- Contenido -->
    <div class="page-content">
        <div class="container-fluid">

            <header class="section-header">
                <div class="tbl">
                    <div class="tbl-row">
                        <div class="tbl-cell">
                            <h3>Generación de responsivas</h3>
                            <ol class="breadcrumb breadcrumb-simple">
                                <li><a href="#">Home</a></li>
                                <li class="active">Equipo de computo</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </header>

            <div class="row">
                <div class="col-md-6">
				<div class="row">
    <div class="col-md-6">
        <!-- Columna izquierda -->
        <form id="formulario">
            <div class="form-group">
                <label for="id">ID:</label>
                <input type="text" id="id" name="id" class="form-control" onchange="obtenerDetallesEquipo()">
            </div>

            <div class="form-group">
                <label for="tipo">Tipo:</label>
                <input type="text" id="tipo" name="tipo" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="marca">Marca:</label>
                <input type="text" id="marca" name="marca" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="modelo">Modelo:</label>
                <input type="text" id="modelo" name="modelo" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="serie">Serie:</label>
                <input type="text" id="serie" name="serie" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="procesador">Procesador:</label>
                <input type="text" id="procesador" name="procesador" class="form-control" readonly>
            </div>
        </div>

        <div class="col-md-6">
            <!-- Columna derecha -->
            <div class="form-group">
                <label for="so">SO:</label>
                <input type="text" id="so" name="so" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="ram">RAM BASE:</label>
                <input type="text" id="ram" name="ram" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="hdd">HDD:</label>
                <input type="text" id="hdd" name="hdd" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="ssd">SSD:</label>
                <input type="text" id="ssd" name="ssd" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="estado">Estado:</label>
                <select id="estado" name="estado" class="form-control">
				<option value="Asignado">Seleccionar</option>
				<option value="Asignado">Asignado</option>
                </select>
            </div>

            <div class="form-group">
                <label for="usuario">Usuario:</label>
                <select id="usuario" name="usuario" class="form-control">
                    <option value="">Seleccionar usuario</option>
                    <!-- Agrega aquí las opciones de los empleados -->
                    <?php
                    // Obtener los datos de los empleados desde la base de datos
                    $query = "SELECT usu_id, usu_nom, usu_ap FROM tm_usuario";
                    $result = mysqli_query($conexion, $query);

                    while ($row = mysqli_fetch_assoc($result)) {
						$idEmpleado = $row['usu_id'];
						$nombre = $row['usu_nom'];
						$apellido = $row['usu_ap'];
					
						$nombreEmpleado = $nombre . ' ' . $apellido;

                        echo "<option value=\"$idEmpleado\">$nombreEmpleado</option>";
                    }
                    ?>
                    <!-- Agrega más opciones según tus necesidades -->
                </select>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Registrar Responsiva</button>
                <button type="button" class="btn btn-secondary">Imprimir Responsiva</button>
            </div>
        </div>
    </div>
</form>


    <?php require_once("../MainJs/js.php"); ?>

    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script type="text/javascript" src="generar.js"></script>

</body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>
