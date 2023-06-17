function init(){
    $("#ticket_form").on("submit",function(e){
        guardaryeditar(e);
    });
}

$(document).ready(function() {
    $('#tick_descrip').summernote({
        height: 150,
        lang: "es-ES",
        callbacks: {
            onImageUpload: function(image) {
                console.log("Image detect...");
                myimagetreat(image[0]);
            },
            onPaste: function (e) {
                console.log("Text detect...");
            }
        },
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']]
        ]
    });
}
);

$(function() {
    function cb(start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
    }
    cb(moment().subtract(29, 'days'), moment());

    $('#daterange').daterangepicker({
        "timePicker": true,
        ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        "linkedCalendars": false,
        "autoUpdateInput": false,
        "alwaysShowCalendars": true,
        "showWeekNumbers": true,
        "showDropdowns": true,
        "showISOWeekNumbers": true
    });

    $('#daterange2').daterangepicker();

    $('#daterange3').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    });

    $('#daterange').on('show.daterangepicker', function(ev, picker) {
        /*$('.daterangepicker select').selectpicker({
            size: 10
        });*/
    });

    /* ==========================================================================
     Datepicker
     ========================================================================== */

    $('.datetimepicker-1').datetimepicker({
        widgetPositioning: {
            horizontal: 'right'
        },
        debug: false
    });

    $('.datetimepicker-2').datetimepicker({
        widgetPositioning: {
            horizontal: 'right'
        },
        format: 'LT',
        debug: false
    });
});

function guardaryeditar(e){
    e.preventDefault();
    var formData = new FormData($("#tarea_form")[0]);
    if ($('#tarea_descrip').summernote('isEmpty') || $('#tarea_titulo').val()==''){
        swal("Advertencia!", "Campos Vacios", "warning");
    }else{
        var totalfiles = $('#fileElem').val().length;
        for (var i = 0; i < totalfiles; i++) {
            formData.append("files[]", $('#fileElem')[0].files[i]);
        }

        $.ajax({
            url: "../../controller/tarea.php?op=insert",
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,
            success: function(data){
                console.log(data);
                data = JSON.parse(data);
                console.log(data[0].tick_id);

                $.post("../../controller/email.php?op=tarea_abierto", {tick_id : data[0].tick_id}, function (data) {

                });

               // $.post("../../controller/whatsapp.php?op=w_ticket_abierto", {tick_id : data[0].tick_id}, function (data) {

               // });

                $('#tarea_titulo').val('');
                $('#tarea_descrip').summernote('reset');
                swal("Correcto!", "Registrado Correctamente", "success");
            }
        });
    }
}

