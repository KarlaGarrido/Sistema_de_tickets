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
  <div class="page-content">
		<div class="container-fluid">

			<header class="section-header">
				<div class="tbl">
					<div class="tbl-row">
						<div class="tbl-cell">
							<h3>Tareas</h3>
							<ol class="breadcrumb breadcrumb-simple">
								<li><a href="#">Home</a></li>
								<li class="active">Tareas</li>
							</ol>
						</div>
					</div>
				</div>
			</header>


      
      <div class="box-typical box-typical-padding">
				<table id="ticket_data" class="table table-bordered table-striped table-vcenter js-dataTable-full">
					<thead>
						<tr>
							<th style="width: 5%;">No.Tarea</th>
							<th class="d-none d-sm-table-cell" style="width: 25%;">Titulo</th>
							<th class="d-none d-sm-table-cell" style="width: 5%;">Estado</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">Fecha Creación</th>
							<th class="d-none d-sm-table-cell" style="width: 10%;">Fecha Entrega</th>
							<th class="text-center" style="width: 5%;"></th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>

		</div>
	</div>

  <div class="page-content">
		<div class="container-fluid">

			<div class="tasks-grid">
				<div class="tasks-grid-col red">
					<div class="tasks-grid-col-title">New tasks <strong>1</strong></div>

					<section class="box-typical task-card">
						<div class="task-card-create">
							<input type="text" placeholder="Create new task"/>
						</div>
						<div class="task-card-footer text-center">
							<button type="button" class="btn btn-rounded">Create task</button>
						</div>
					</section>

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