function init() {
    $(document).ready(function() {
      // Limpiar el formulario de Información al hacer clic en el botón Limpiar
      $("#limpiarInformacionBtn").click(function() {
        $("#informacionForm")[0].reset();
      });
  
      // Limpiar el formulario de Características al hacer clic en el botón Limpiar
      $("#limpiarCaracteristicasBtn").click(function() {
        $("#caracteristicasForm")[0].reset();
      });
  
      // Mostrar mensaje y limpiar el formulario de Información al enviar los datos correctamente
      $("#informacionForm").submit(function(event) {
        event.preventDefault(); // Evitar el envío del formulario por defecto
        $.ajax({
          url: "../models/Computo.php?op=insert", // Actualiza el URL según corresponda
          type: "POST", // Actualiza el método según corresponda
          data: $(this).serialize(),
          success: function(response) {
            $("#informacionForm")[0].reset();
            swal("Correcto!", "Registrado Correctamente", "success");
          },
          error: function(xhr, status, error) {
            // Manejar el error en caso de que ocurra
          }
        });
      });
  
      // Mostrar mensaje y limpiar el formulario de Características al enviar los datos correctamente
      $("#caracteristicasForm").submit(function(event) {
        event.preventDefault(); // Evitar el envío del formulario por defecto
        $.ajax({
          url: "../models/Computo.php?op=insert", // Actualiza el URL según corresponda
          type: "POST", // Actualiza el método según corresponda
          data: $(this).serialize(),
          success: function(response) {
            $("#caracteristicasForm")[0].reset();
            swal("Correcto!", "Registrado Correctamente", "success");
          },
          error: function(xhr, status, error) {
            // Manejar el error en caso de que ocurra
          }
        });
      });
    });
  }
  
  init();
  