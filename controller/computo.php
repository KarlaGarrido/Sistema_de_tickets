<?php
 require_once("../config/conexion.php");
 require_once("../models/Computo.php");
 $computo= new Computo();

 require_once("../models/Usuario.php");
 $usuario = new Usuario();

switch($_GET["op"]){

	case "insert":
		$computo->insert_computo($_POST["compu_id"], $_POST["compu_tipo"], $_POST["compu_mar"], $_POST["compu_mod"],$_POST["compu_ser"], $_POST["est_compu"], $_POST["resp_id"], $_POST["usu_nom"], $_POST["usu_ap"], $_POST["fech_crea"]);
		break;

case "listar":
			$datos=$computo->listar_computo($_POST["compu_id"]);
			$data=Array();
			foreach($datos as $row){
				$sub_array = array();
				$sub_array[] = $row["compu_id"];
				$sub_array[] = $row["compu_tipo"];
				$sub_array[] = $row["compu_mar"];
				$sub_array[] = $row["compu_mod"];
				$sub_array[] = $row["compu_ser"];
				
				$sub_array[] = ($row["est_compu"] == null) ? '<span class="label label-pill label-default">Disponible</span>' : (
					($row["est_compu"] == "asignado") ? '<span class="label label-pill label-warning">Asignado</span>' : (
						($row["est_compu"] == "robado") ? '<span class="label label-pill label-danger">Robado</span>' : (
						($row["est_compu"] == "dañado") ? '<span class="label label-pill label-danger">Dañado</span>' : ''
					)
					)
				);
				
				
				$sub_array[] = $row["resp_id"];
				
				
				if ($row["usu_nom"]==null) {
					$sub_array[] = '<a onClick="asignar('. $row["compu_id"] .');"><span class="label label-pill label-default">Sin asignar</span></a>';
				} else {
						$datos=$usuario->get_usuario_x_id($row["usu_nom"]);
						foreach($datos as $row1){
							$sub_array[] = '<span class="label label-pill label-success">'.$row1["usu_nom"].'</span>'; 
						}
					}
				$button = '<button type="button" onClick="ver(' . $row["compu_id"] . ');" id="' . $row["compu_id"] . '" class="btn btn-inline btn-primary btn-sm ladda-button"><i class="fa fa-eye"></i></button>';
				$sub_array[] = $button;
				$data[] = $sub_array;
				
            }
			 	
			$results = array(
                "sEcho"=>1,
                "iTotalRecords"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);         
            	echo json_encode($results);
		break;
	
		
			

		
	

			

			}
?>
