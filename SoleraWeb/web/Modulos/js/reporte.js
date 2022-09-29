//se llama a la funcion cundo carga la pagina
//funcion para obtener los siniestros por estdos y cambior los colores en el mapa de la repyublica
window.addEventListener("load", function () {
  $.ajax({
    method: "POST",
    url: "../MostrarDatosMapas",
    data: {
      consulta: "cambioColores",
    },
    success: function (result) {
      let cont = 0;
      let sinComas = result.split(",");
      let sinEspacios;
      sinComas.forEach((element) => {
        cont += 1;
      });
      for (let i = 0; i < cont - 1; i += 2) {
        if (sinComas[i + 1] < 6) {
          sinEspacios = sinComas[i].replace(/\s+/g, "");
          //se quitan los espacios de toda la cadena
          document
            .getElementById(sinEspacios.toLowerCase())
            .setAttribute("fill", "#00FF04");
        } else if (sinComas[i + 1] < 11) {
          sinEspacios = sinComas[i].replace(/\s+/g, "");
          document
            .getElementById(sinEspacios.toLowerCase())
            .setAttribute("fill", "#FDCB00");
        } else if (sinComas[i + 1] > 10) {
          sinEspacios = sinComas[i].replace(/\s+/g, "");
          document
            .getElementById(sinEspacios.toLowerCase())
            .setAttribute("fill", "#F50707");
        }
      }
    },
  });
});
window.addEventListener("load", function () {
  $.ajax({
    method: "POST",
    url: "../MostrarDatosMapas",
    data: {
      consulta: "resultadosEstacion",
    },
    success: function (result) {
      alert(result);
    },
  });
});
