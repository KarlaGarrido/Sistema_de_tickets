<?php
 require_once("../config/conexion.php");
 require_once("../models/Telefonia.php");
 $telefonia= new Telefonia();

 require_once("../models/Usuario.php");
 $usuario = new Usuario();

switch($_GET["op"]){
  
	case "insert":
		$telefonia->insert_telefonia($_POST["tel_id"], $_POST["tel_num"], $_POST["tel_tipo"], $_POST["tel_mar"],$_POST["tel_mod"], $_POST["tel_ser"], $_POST["est_tel"], $_POST["resp_id"], $_POST["usu_nom"], $_POST["usu_ap"], $_POST["fech_crea"]);
		break;

		case "listar":
			$tel_id = isset($_POST["tel_id"]) ? $_POST["tel_id"] : null;
			$datos = $telefonia->listar_telefono($tel_id);
			
			foreach($datos as $row){
				$sub_array = array();
				$sub_array[] = $row["tel_id"];
				$sub_array[] = $row["tel_num"];
				$sub_array[] = $row["tel_tipo"];
				$sub_array[] = $row["tel_mar"];
				$sub_array[] = $row["tel_mod"];
                $sub_array[] = $row["tel_ser"];
				
				$sub_array[] = ($row["est_tel"] == null) ? '<span class="label label-pill label-default">Disponible</span>' : (
					($row["est_tel"] == "asignado") ? '<span class="label label-pill label-warning">Asignado</span>' : (
						($row["est_tel"] == "robado") ? '<span class="label label-pill label-danger">Robado</span>' : (
						($row["est_tel"] == "dañado") ? '<span class="label label-pill label-danger">Dañado</span>' : ''
					)
					)
				);
				
				
				$sub_array[] = $row["resp_id"];
				
				
				if ($row["usu_nom"]==null) {
					$sub_array[] = '<a onClick="asignar('. $row["tel_id"] .');"><span class="label label-pill label-default">Sin asignar</span></a>';
				} else {
						$datos=$usuario->get_usuario_x_id($row["usu_nom"]);
						foreach($datos as $row1){
							$sub_array[] = '<span class="label label-pill label-success">'.$row1["usu_nom"].'</span>'; 
						}
					}
				$button = '<button type="button" onClick="ver(' . $row["tel_id"] . ');" id="' . $row["tel_id"] . '" class="btn btn-inline btn-primary btn-sm ladda-button"><i class="fa fa-eye"></i></button>';
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
