<?php
 class Telefonia extends Conectar{

    public function listar_computo($tel_id){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM `tm_telefonia` WHERE 1";

        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
 }    
?>