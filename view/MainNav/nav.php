<?php
    if ($_SESSION["rol_id"]==1){
        ?>
            <nav class="side-menu">
                <ul class="side-menu-list">
                    <li class="blue-dirty">
                        <a href="..\Home\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Inicio</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\NuevoTicket\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Nuevo Ticket</span>
                        </a>
                    </li>

                    <li class="blue-dirty">
                        <a href="..\ConsultarTicket\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Consultar Ticket</span>
                        </a>
                    </li>
                </ul>
            </nav>
        <?php
    }else if ($_SESSION["rol_id"]==2){
        ?>
            <nav class="side-menu">
                <ul class="side-menu-list">
                    <li class="blue-dirty">
                        <a href="..\Home\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Inicio</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\MntUsuario\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Mantenimiento Usuario</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\ConsultarTicket\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Consultar Ticket</span>
                        </a>
                    </li>

                    <li class="blue-dirty">
                        <a href="..\Activoscomputo\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Activos Cómputo</span>
                        </a>
                    </li>
                    
                    <li class="blue-dirty">
                       <a href="..\Activostele\">
                       <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Activos Telefonía</span>
                        </a>
                    </li>

                    <li class="blue-dirty">
                        <a href="..\Nuevocomputo\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Nuevo Registro de Cómputo</span>
                        </a>
                    </li>

                    <li class="blue-dirty">
                        <a href="..\Nuevotelefonia\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Nuevo Registro de Telefonía</span>
                        </a>
                    </li>

                    <li class="blue-dirty">
                <a href="..\Responsivas\">
                    <span class="glyphicon glyphicon-th"></span>
                    <span class="lbl">Generación de responsivas cómputo</span>
                </a>
            </li>

            <li class="blue-dirty">
                <a href="..\ResponsivasT\">
                    <span class="glyphicon glyphicon-th"></span>
                    <span class="lbl">Generación de responsivas telefonía</span>
                </a>
            </li>
                    <li class="blue-dirty">
                <a href="..\NuevaTarea\index.php">
                    <span class="glyphicon glyphicon-th"></span>
                    <span class="lbl">Crear Tarea</span>
                </a>
            </li>

            <li class="blue-dirty">
                <a href="..\Tareas\">
                    <span class="glyphicon glyphicon-th"></span>
                    <span class="lbl">Consultar tareas</span>
                </a>
            </li>
                </ul>
            </nav>

            
            
        <?php
    } elseif ($_SESSION["rol_id"] == 3) {
        ?>
        <nav class="side-menu">
            <ul class="side-menu-list">
                <li class="blue-dirty">
                    <a href="..\Home\">
                        <span class="glyphicon glyphicon-th"></span>
                        <span class="lbl">Inicio</span>
                    </a>
                </li>

                <li class="blue-dirty">
                    <a href="..\NuevoTicket\">
                        <span class="glyphicon glyphicon-th"></span>
                        <span class="lbl">Nuevo Ticket</span>
                    </a>
                </li>

                <li class="blue-dirty">
                    <a href="..\MntUsuario\">
                        <span class="glyphicon glyphicon-th"></span>
                        <span class="lbl">Mant. Usuario</span>
                    </a>
                </li>

                <li class="blue-dirty">
                    <a href="..\ConsultarTicket\">
                        <span class="glyphicon glyphicon-th"></span>
                        <span class="lbl">Consultar Ticket</span>
                    </a>
                </li>
            </ul>
        </nav>
    <?php
}
?>
