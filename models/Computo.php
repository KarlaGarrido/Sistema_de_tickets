<?php
 class Computo extends Conectar{

    public function listar_computo($compu_id){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM `tm_computo` WHERE 1";

        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
 }    
?>