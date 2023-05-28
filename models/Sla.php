
<?php

class Sla extends Conectar{


    public function tiempo_transcurrido_crea_a_ahora($tick_id,$fech_crea,$usu_asig,$tick_estado){

        $conectar=parent::conexion();

        parent::set_names();
			$sql="SELECT 
				tick_id,
				TIMESTAMPDIFF(MINUTE, fech_crea, NOW()) AS usu_asig
			FROM
				tm_ticket
			WHERE
				tick_estado = 'Abierto'";
			$sql=$conectar->prepare($sql);
            $sql->bindValue(1, $tick_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
}


    public function horario_atencion($tick_id,$tick_estado,$fech_crea,$fech_asig,$usu_asig){//revisa si el ticket se esta abriendo en horario laboral
        $conectar=parent::conexion();
        parent::set_names();
			$sql="SELECT 
				tick_id
			FROM
				tm_ticket
			WHERE
				tick_estado = 'Abierto'
				AND WEEKDAY(fech_crea) <> 6
				AND (TIME(fech_crea) >= '08:30:00' AND TIME(NOW()) <= '18:30:00')";
				$sql=$conectar->prepare($sql);
						$sql->bindValue(1, $tick_id);
						$sql->execute();
						return $resultado=$sql->fetchAll();

}


    public function tiempo_transcurrido_asig_a_ahora($tick_id,$fech_asig,$usu_asig){//tiempo desde asignacion y de lo que lleva abierto
        $conectar=parent::conexion();
        parent::set_names();   
				$sql="SELECT 
				tick_id,
				TIMESTAMPDIFF(MINUTE, fech_asig, NOW()) AS usu_asig
			FROM
				tm_ticket
			WHERE
				usu_asig = ?";
				$sql=$conectar->prepare($sql);
						$sql->bindValue(1, $tick_id);
						$sql->execute();
						return $resultado=$sql->fetchAll();
 
}
 
    public function alerta_tiempo_sin_asignar($tick_id,$fech_crea,$tick_estado){  //para notificar si ya se va a cumplir la hora sin asignar empleado de soporte 
        $conectar=parent::conexion();
        parent::set_names(); 
				$sql="SELECT 
					tick_id,
					fech_crea
				FROM
					tm_ticket
				WHERE
					tick_estado = 'Abierto'
					AND TIMESTAMPDIFF(HOUR, fech_crea, NOW()) >= 1";
					
					$sql=$conectar->prepare($sql);
					$sql->bindValue(1, $tick_id);
					$sql->execute();
					return $resultado=$sql->fetchAll();
    }
}   



?>