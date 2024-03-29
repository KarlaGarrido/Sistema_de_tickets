var tabla;
var usu_id = $('#user_idx').val();
var rol_id = $('#rol_idx').val();

function init(){
    $("#compu_form").on("submit",function(e){
        guardar(e);
    });
}

$(document).ready(function(){

    $.post("../../controller/usuario.php?op=combo_compu", function (data){
        $('#usu_asig').html(data);
    })
    tabla=$('#computo_data').dataTable({
        "aProcessing": true,
        "aServerSide": true,
        dom: 'Bfrtip',
        "searching": true,
        lengthChange: false,
        colReorder: true,
        buttons: [		          
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5'
                ],
        "ajax":{
            url: '../../controller/computo.php?op=listar',
            type : "post",
            dataType : "json",	
            data:{compu_id : 1},					
            error: function(e){
                console.log(e.responseText);	
            }
        },
        "bDestroy": true,
        "responsive": true,
        "bInfo":true,
        "iDisplayLength": 10,
        "autoWidth": false,
        "language": {
            "sProcessing":     "Procesando...",
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla",
            "sInfo":           "Mostrando un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "Buscar:",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }     
    }).DataTable(); 


});


function asignar(compu_id){
    $.post("../../controller/computo.php?op=listar", {compu_id : compu_id}, function (data){
        data.JSON.parse(data);
        $('#compu_id').val(data.compu_id);

        $('#mdltitulo').html('Asignar Usuario');
        $("#modalasignar").modal('show');
    })
  
    
}

init();