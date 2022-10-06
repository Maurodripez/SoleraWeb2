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
    success: function (result) {},
  });
});
function buscarDatos() {
  txtFechaCarga = document.getElementById("txtFechaCarga").value;
  if (txtFechaCarga == "Selecciona...") {
    txtFechaCarga = "";
  }
  txtEstacion = document.getElementById("txtEstacion").value;
  if (txtEstacion == "Selecciona...") {
    txtEstacion = "";
  }
  txtEstatus = document.getElementById("txtEstatus").value;
  if (txtEstatus == "Selecciona...") {
    txtEstatus = "";
  }
  txtSubEstatus = document.getElementById("txtSubEstatus").value;
  if (txtSubEstatus == "Selecciona...") {
    txtSubEstatus = "";
  }
  txtFechaSeguimiento = document.getElementById("txtFechaSeguimiento").value;
  if (txtFechaSeguimiento == "Selecciona...") {
    txtFechaSeguimiento = "";
  }
  txtRegion = document.getElementById("txtRegion").value;
  if (txtRegion == "Todos-Ninguna") {
    txtRegion = "";
  }
  txtEstado = document.getElementById("txtEstado").value;
  if (txtEstado == "Selecciona...") {
    txtEstado = "";
  }
  txtCobertura = document.getElementById("txtCobertura").value;
  if (txtCobertura == "Selecciona...") {
    txtCobertura = "";
  }
  $.ajax({
    url: "../ControladorMostrarDatos",
    data: {
      fechaCarga: txtFechaCarga,
      estacion: txtEstacion,
      estatus: txtEstatus,
      subEstatus: txtSubEstatus,
      fechaSeguimiento: txtFechaSeguimiento,
      region: txtRegion,
      estado: txtEstado,
      cobertura: txtCobertura,
    },
    success: function (result) {
      $("#mostrarTablaDatos").html(result);
    },
  });
}
window.addEventListener("load", function CartasEstacion() {
  $.ajax({
    method: "POST",
    url: "../DatosReporte",
    data: {
      accion: "InfoCartas",
    },
    success: function (result) {
      sinComas = result.split(",");
      let cantSiniestro;
      for (let i = 1; i < sinComas.length; i = i + 2) {
        if (sinComas[i - 1] > 0) {
          //se hace para hacer el calculo del procentaje de cada caso
          cantSiniestro = sinComas[i - 1];
          sinComas[i - 1] =
            (sinComas[i - 1] * 100) / sinComas[sinComas.length - 1];
        }
        switch (sinComas[i]) {
          case "Nuevo":
            $("#nuevo").html(sinComas[i - 1] + "%");
            break;
          case "Marcacion":
            $("#marcacion").html(sinComas[i - 1] + "%");
            break;
          case "Proceso":
            $("#proceso").html(sinComas[i - 1] + "%");
            break;
          case "Cancelado":
            $("#cancelado").html(sinComas[i - 1] + "%");
            $("#canceladoTotal").html("Casos: " + cantSiniestro);
            break;
          case "Terminado":
            $("#terminado").html(sinComas[i - 1] + "%");
            $("#canceladoTotal").html("Casos: " + cantSiniestro);
            break;
        }
      }
    },
  });
});
