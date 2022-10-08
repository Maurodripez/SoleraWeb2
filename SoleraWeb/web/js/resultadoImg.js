$(document).ready(function () {
  function mostrarimagenServlet() {
    $.ajax({
      method: "post",
      url: "leerImagenes",
      data: {
        accion: "traerImagen64",
      },
      success: function (result) {
        alert(result);
        //   let imagen = document.getElementById("mostrarimagen64");
        //  imagen.src = result;
      },
    });
  }
  setInterval(mostrarimagenServlet, 1000);
});
