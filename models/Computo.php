<?php
 class Computo extends Conectar{

public function listar_computo($compu_id){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="SELECT
                tm_computo.compu_id,
                tm_computo.compu_tipo,
                tm_computo.compu_mar,
                tm_computo.compu_mod,
                tm_computo.compu_ser,
                tm_computo.est_compu,
                tm_computo.resp_id,
                tm_usuario.usu_nom
                FROM 
                tm_computo
                INNER join tm_usuario on tm_computo.usu_nom = tm_usuario.usu_nom
                WHERE
                tm_computo.est = ?
                ";
            $sql=$conectar->prepare($sql);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
    }
?>