<?php
 require_once("../config/conexion.php");
 require_once("../models/Telefonia.php");
 $telefonia= new Telefonia();

switch($_GET["op"]){

case "listar":
			$datos=$computo->listar_telefonia($_POST["tel_id"]);
			$data=Array();
			foreach($datos as $row){
				$sub_array = array();
				$sub_array[] = $row["tel_id"];
				$sub_array[] = $row["tel_num"];
				$sub_array[] = $row["tel_tipo"];
				$sub_array[] = $row["tel_mar"];
				$sub_array[] = $row["tel_mod"];
				$sub_array[] = $row["tel_ser"];
				$sub_array[] = $row["est_tel"];
                $sub_array[] = $row["resp_id"];
				$sub_array[] = $row["usu_nom"];
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
