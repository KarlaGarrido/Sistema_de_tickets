<?php
 class Telefonia extends Conectar{

    public function insert_telefonia($tel_id, $tel_num, $tel_tipo, $tel_mar,$tel_mod, $tel_ser, $est_tel, $resp_id, $usu_nom){
        $conectar = parent::conexion();
        parent::set_names();
        $sql="INSERT INTO tm_telefonia (tel_id, tel_num, tel_tipo, tel_mar,tel_mod, tel_ser, est_tel, resp_id, usu_nom, usu_ap, fech_crea, est) VALUES (NULL, '?', '?', '?', '?', '?', '?', '?', '?','?', now(), '1');";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $tel_id);
        $sql->bindValue(2, $tel_num);
        $sql->bindValue(3, $tel_mar);
        $sql->bindValue(4, $tel_mod);
        $sql->bindValue(5, $tel_ser);
        $sql->bindValue(6, $est_tel);
        $sql->bindValue(7, $resp_id);
        $sql->bindValue(8, $resp_id);
        $sql->bindValue(9, $usu_nom);
        
        $sql->execute();
        return $resultado=$sql->fetchAll();
            
    }

   
    public function listar_telefono($tel_id){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM `tm_telefonia` WHERE 1";

        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    
    
 }    
?>

