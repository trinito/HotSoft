$(document).ready(function () {
    var estado = true;
    $('#btnArriba').click(function () {
        if (estado == true)
        {
            document.getElementById('divEjemplo').style.height = "500px";
            estado = false;
        }
        else
        {
            estado = true;
            document.getElementById('divEjemplo').style.height = "300px";
        }

    });

   

});