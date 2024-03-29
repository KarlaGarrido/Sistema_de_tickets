<?php
require_once("../../config/conexion.php");
if (isset($_SESSION["usu_id"])) {
?>
  <!DOCTYPE html>
  <html>
  <?php require_once("../MainHead/head.php"); ?>
  <title>SSITEL::Nuevo</title>
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
                <h3 id="lblnomidticket">Nuevo registro</h3>
                <div id="lblestado"></div>
                <span class="label label-pill label-primary" id="lblnomusuario"></span>
                <span class="label label-pill label-default" id="lblfechcrea"></span>
                <ol class="breadcrumb breadcrumb-simple">
                  <li><a href="#">Home</a></li>
                  <li class="active">Cómputo</li>
                </ol>
              </div>
            </div>
          </div>
        </header>

        <div class="row">
          <div class="col-md-6">
            <form id="informacionForm" method="POST" action="guardar_informacion.php">
              <h4>Información</h4>
              <div class="form-group">
                <label>ID:</label>
                <input type="text" name="id" class="form-control" readonly>
              </div>
              <div class="form-group">
                <label>Tipo:</label>
                <input type="text" name="tipo" class="form-control">
              </div>
              <div class="form-group">
                <label>Marca:</label>
                <input type="text" name="marca" class="form-control">
              </div>
              <div class="form-group">
                <label>Modelo:</label>
                <input type="text" name="modelo" class="form-control">
              </div>
              <div class="form-group">
                <label>Serie:</label>
                <input type="text" name="serie" class="form-control">
              </div>
              <div class="form-group">
                <label>Estado:</label>
                <input type="text" name="estado" class="form-control">
              </div>
              <div class="form-group">
                <label>Usuario:</label>
                <input type="text" name="usuario" class="form-control">
              </div>
              <div class="form-group">
                <label>Fecha de Asignación:</label>
                <input type="text" name="fecha_asignacion" class="form-control">
              </div>
              <button type="submit" class="btn btn-primary">Guardar</button>
              <button type="button" class="btn btn-default" id="limpiarInformacionBtn">Limpiar</button>
            </form>
          </div>
          <div class="col-md-6">
            <form id="caracteristicasForm" method="POST" action="guardar_caracteristicas.php">
              <h4>Características</h4>
              <div class="form-group">
                <label>Procesador:</label>
                <input type="text" name="procesador" class="form-control">
              </div>
              <div class="form-group">
                <label>SO:</label>
                <input type="text" name="so" class="form-control">
              </div>
              <div class="form-group">
                <label>RAM BASE:</label>
                <input type="text" name="ram_base" class="form-control">
              </div>
              <div class="form-group">
                <label>HDD:</label>
                <input type="text" name="hdd" class="form-control">
              </div>
              <div class="form-group">
                <label>SSD:</label>
                <input type="text" name="ssd" class="form-control">
              </div>
              <button type="submit" class="btn btn-primary">Guardar</button>
              <button type="button" class="btn btn-default" id="limpiarCaracteristicasBtn">Limpiar</button>
            </form>
          </div>
        </div>

      </div>
    </div>
         
    <!-- Contenido -->

    <?php require_once("../MainJs/js.php"); ?>

    <script type="text/javascript" src="detallecomputo.js"></script>

  </body>

  </html>
<?php
} else {
  header("Location:" . Conectar::ruta() . "index.php");
}
?>
