<?php
 require_once("../config/conexion.php");
 require_once("../models/Computo.php");
 $computo= new Computo();

switch($_GET["op"]){

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
				$sub_array[] = $row["est_compu"];
				$sub_array[] = $row["resp_id"];
				$sub_array[] = $row["usu_nom"];
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
