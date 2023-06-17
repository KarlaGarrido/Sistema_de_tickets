<?php
  require_once("../../config/conexion.php"); 
  if(isset($_SESSION["usu_id"])){ 
?>
<!DOCTYPE html>
<html>
    <?php require_once("../MainHead/head.php");?>
	<title>SSITEL::Nueva Tarea</title>
</head>
<body class="with-side-menu">

    <?php require_once("../MainHeader/header.php");?>

    <div class="mobile-menu-left-overlay"></div>

    <?php require_once("../MainNav/nav.php");?>

	<!-- Contenido -->
	<div class="page-content">
		<div class="container-fluid">

			<header class="section-header">
				<div class="tbl">
					<div class="tbl-row">
						<div class="tbl-cell">
							<h3>Nueva Tarea</h3>
							<ol class="breadcrumb breadcrumb-simple">
								<li><a href="#">Home</a></li>
								<li class="active">Nueva Tarea</li>
							</ol>
						</div>
					</div>
				</div>
			</header>

			<div class="box-typical box-typical-padding">
				<p>
					Desde esta ventana podra generar tareas personales de soporte o enlazados con un ticket.
				</p>

				<h5 class="m-t-lg with-border">Ingresar Información</h5>

				<div class="row">
					<form method="post" id="tarea_form">

						<input type="hidden" id="usu_id" name="usu_id" value="<?php echo $_SESSION["usu_id"] ?>">

                        <div class="col-lg-2">
							<fieldset class="form-group">
								<label class="form-label semibold" for="tarea_id">No.Ticket</label>
								<input type="text" class="form-control" id="tarea_id" name="tarea_id" placeholder="Ingrese Ticket de seguimiento">
							</fieldset>
						</div>

						<div class="col-lg-8">
							<fieldset class="form-group">
								<label class="form-label semibold" for="tarea_titulo">Titulo</label>
								<input type="text" class="form-control" id="tarea_titulo" name="tarea_titulo" placeholder="Ingrese Titulo">
							</fieldset>
						</div>

                        <div class="card-block">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
                            <label class="form-label semibold" for="fech_crea">Fecha de creacion</label>
								<div class='input-group date datetimepicker-1'>
									<input type='text' class="form-control" />
								<span class="input-group-addon">
									<i class="font-icon font-icon-calend"></i>
								</span>
								</div>
							</div>
						</div>


                        <div class="card-block">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
                            <label class="form-label semibold" for="fech_entre">Fecha de entrega</label>
								<div class='input-group date datetimepicker-1'>
									<input type='text' class="form-control" />
								<span class="input-group-addon">
									<i class="font-icon font-icon-calend"></i>
								</span>
								</div>
							</div>
						</div>

                        <div class="card-block">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
                            <label class="form-label semibold" for="fech_inicio">Inicio de Actividad</label>
								<div class='input-group date datetimepicker-1'>
									<input type='text' class="form-control" />
								<span class="input-group-addon">
									<i class="font-icon font-icon-calend"></i>
								</span>
								</div>
							</div>
						</div>

                        
                        <div class="card-block">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
                            <label class="form-label semibold" for="fech_fin">Fin de actividad</label>
								<div class='input-group date datetimepicker-1'>
									<input type='text' class="form-control" />
								<span class="input-group-addon">
									<i class="font-icon font-icon-calend"></i>
								</span>
								</div>
							</div>
						</div>

						
						<div class="col-lg-12">
							<fieldset class="form-group">
								<label class="form-label semibold" for="tarea_descrip">Descripción</label>
								<div class="summernote-theme-1">
									<textarea id="tick_descrip" name="tick_descrip" class="summernote" name="name"></textarea>
								</div>
							</fieldset>
						</div>

                        <div class="col-lg-3">
							<fieldset class="form-group">
								<label class="form-label semibold" for="exampleInput">Documentos Adicionales</label>
								<input type="file" name="fileElem" id="fileElem" class="form-control" multiple>
							</fieldset>
						</div>
                        
						<div class="col-lg-12">
							<button type="submit" name="action" value="add" class="btn btn-rounded btn-inline btn-primary">Guardar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- Contenido -->

	<?php require_once("../MainJs/js.php");?>

	<script type="text/javascript" src="nuevatarea.js"></script>

</body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>