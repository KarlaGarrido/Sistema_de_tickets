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
                  <li class="active">Telefonía</li>
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
                <label>IMEI:</label>
                <input type="text" name="serie" class="form-control">
              </div>
              <div class="form-group">
                <label>Número:</label>
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
             

      </div>
    </div>
         
    <!-- Contenido -->

    <?php require_once("../MainJs/js.php"); ?>

    <script type="text/javascript" src="detalleticket.js"></script>
    <script>
      $(document).ready(function() {
        // Limpiar el formulario de Información al hacer clic en el botón Limpiar
        $("#limpiarInformacionBtn").click(function() {
          $("#informacionForm")[0].reset();
        });

        // Limpiar el formulario de Características al hacer clic en el botón Limpiar
        $("#limpiarCaracteristicasBtn").click(function() {
          $("#caracteristicasForm")[0].reset();
        });

        // Mostrar mensaje y limpiar el formulario de Información al enviar los datos correctamente
        $("#informacionForm").submit(function(event) {
          event.preventDefault(); // Evitar el envío del formulario por defecto
          $.ajax({
            url: $(this).attr("action"),
            type: $(this).attr("method"),
            data: $(this).serialize(),
            success: function(response) {
              $("#informacionForm")[0].reset();
              swal("Correcto!", "Registrado Correctamente", "success");
            },
            error: function(xhr, status, error) {
              // Manejar el error en caso de que ocurra
            }
          });
        });

        // Mostrar mensaje y limpiar el formulario de Características al enviar los datos correctamente
        $("#caracteristicasForm").submit(function(event) {
          event.preventDefault(); // Evitar el envío del formulario por defecto
          $.ajax({
            url: $(this).attr("action"),
            type: $(this).attr("method"),
            data: $(this).serialize(),
            success: function(response) {
              $("#caracteristicasForm")[0].reset();
              swal("Correcto!", "Registrado Correctamente", "success");
            },
            error: function(xhr, status, error) {
              // Manejar el error en caso de que ocurra
            }
          });
        });
      });
    </script>

  </body>

  </html>
<?php
} else {
  header("Location:" . Conectar::ruta() . "index.php");
}
?>
