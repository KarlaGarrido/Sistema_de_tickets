function init(){  
   function obtenerDetallesEquipo() {
        var idEquipo = document.getElementById('id').value;

        // Realizar una solicitud AJAX a obtener_detalles_equipo.php con el ID del equipo
        // y actualizar los campos del formulario con la respuesta obtenida

        // Ejemplo de solicitud AJAX usando JavaScript puro
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var detallesEquipo = JSON.parse(this.responseText);
                document.getElementById('tipo').value = detallesEquipo.tipo;
                document.getElementById('marca').value = detallesEquipo.marca;
                document.getElementById('modelo').value = detallesEquipo.modelo;
                document.getElementById('serie').value = detallesEquipo.serie;
                document.getElementById('procesador').value = detallesEquipo.procesador;
                document.getElementById('so').value = detallesEquipo.so;
                document.getElementById('ram').value = detallesEquipo.ram;
                document.getElementById('hdd').value = detallesEquipo.hdd;
                document.getElementById('ssd').value = detallesEquipo.ssd;
            }
        };
        xmlhttp.open("GET", "Responsivas.php?id=" + idEquipo, true);
        xmlhttp.send();
    }

    // Evento de envío del formulario
    document.getElementById("formulario").addEventListener("submit", function (event) {
        event.preventDefault(); // Evitar que el formulario se envíe de forma predeterminada

        // Obtener los valores de los campos del formulario
        var idEquipo = document.getElementById('id').value;
        var estado = document.getElementById('estado').value;
        var idUsuario = document.getElementById('usuario').value;

        // Realizar aquí la lógica para registrar la responsiva con los valores obtenidos
        // ...

        // Mostrar un mensaje de éxito o redirigir a otra página
        
        swal({
            title: "HelpDesk!",
            text: "Responsiva guardada correctamente.",
            type: "success",
            confirmButtonClass: "btn-success"
        });
    });

    // Evento del botón "Imprimir Responsiva"
    document.getElementById("imprimirResponsiva").addEventListener("click", function () {
        // Realizar aquí la lógica para imprimir la responsiva
        // ...
    });
}
init();
