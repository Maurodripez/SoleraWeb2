function obtenerRuta() {
  let ruta;
  $.ajax({
    method: "POST",
    url: "ObtenerRutas",
    data: {
      ruta: "accedo",
    },
    success: function (result) {
      console.log(result);
    },
  });
}
