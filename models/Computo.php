<?php
 class Computo extends Conectar{

    public function insert_computo($compu_id, $compu_tipo, $compu_mar, $compu_mod,$compu_ser, $est_compu, $resp_id, $usu_nom, $usu_ap, $fech_crea){
        $conectar = parent::conexion();
        parent::set_names();
        $sql="INSERT INTO tm_computo (compu_id, compu_tipo, compu_mar, compu_mod,compu_ser, est_compu, resp_id, usu_nom, usu_ap, fech_crea, est) VALUES (NULL, '?', '?', '?', '?', '?', '?', '?', '?', now(), '1');";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $compu_id);
        $sql->bindValue(2, $compu_tipo);
        $sql->bindValue(3, $compu_mar);
        $sql->bindValue(4, $compu_mod);
        $sql->bindValue(5, $compu_ser);
        $sql->bindValue(6, $est_compu);
        $sql->bindValue(7, $resp_id);
        $sql->bindValue(8, $usu_nom);
        $sql->bindValue(9, $usu_ap);
        
        $sql->execute();
        return $resultado=$sql->fetchAll();
            
    }

   
    public function listar_computo($compu_id){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM `tm_computo` WHERE 1";

        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }


    public function insert_nuevo_computo($compu_tipo, $compu_mar, $compu_mod, $compu_ser, $est_compu, $resp_id, $usu_nom, $usu_ap)
{
  $conectar = parent::conexion();
  parent::set_names();
  $sql = "INSERT INTO tm_computo (compu_tipo, compu_mar, compu_mod, compu_ser, est_compu, resp_id, usu_nom, usu_ap, fech_crea, est) 
          VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW(), '1')";
  $sql = $conectar->prepare($sql);
  $sql->bindValue(1, $compu_tipo);
  $sql->bindValue(2, $compu_mar);
  $sql->bindValue(3, $compu_mod);
  $sql->bindValue(4, $compu_ser);
  $sql->bindValue(5, $est_compu);
  $sql->bindValue(6, $resp_id);
  $sql->bindValue(7, $usu_nom);
  $sql->bindValue(8, $usu_ap);

  $sql->execute();
  return $resultado = $sql->fetchAll();
}

    
    
 }    
?>

