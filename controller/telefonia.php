<?php
require_once("../config/conexion.php");
require_once("../models/Telefonia.php");
$telefonia = new Telefonia();

if (isset($_GET["op"])) {
    switch ($_GET["op"]) {
       
			case "insert":
				$telefonia->insert_telefonia($_POST["tel_id"], $_POST["tel_num"], $_POST["tel_tipo"], $_POST["tel_mar"], $_POST["tel_mod"], $_POST["tel_ser"], $_POST["est_tel"], $_POST["resp_id"], $_POST["usu_nom"], $_POST["usu_ap"], $_POST["fech_crea"]);
				break;

           
                
            

        case "listar_x_tel":
            if (isset($_POST["tel_id"])) {
                $datos = $telefonia->listar_tel($_POST["tel_id"]);
                $data = array();
                foreach ($datos as $row) {
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
                    "sEcho" => 1,
                    "iTotalRecords" => count($data),
                    "iTotalDisplayRecords" => count($data),
                    "aaData" => $data
                );
                echo json_encode($results);
            }
            break;
    }
}
?>

