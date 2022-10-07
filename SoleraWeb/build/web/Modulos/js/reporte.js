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
      let sinComas = result.split(",");
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
$(document).ready(function () {
  //mostrar en tiempo real la grafica de folios//
  $.ajax({
    method: "POST",
    url: "../DatosReporte",
    data: {
      accion: "InfoCartas",
    },
    success: function (result) {
      let sinComas;
      let nuevoP = 0;
      let nuevoC = 0;
      let marcacionP = 0;
      let marcacionC = 0;
      let procesoP = 0;
      let procesoC = 0;
      let terminadoP = 0;
      let terminadoC = 0;
      let canceladoP = 0;
      let canceladoC = 0;
      let porcentaje;
      sinComas = result.split(",");

      for (let i = 1; i < sinComas.length; i = i + 2) {
        //se hace para hacer el calculo del procentaje de cada caso
        porcentaje = (sinComas[i - 1] * 100) / sinComas[sinComas.length - 1];
        switch (sinComas[i]) {
          case "Nuevo":
            nuevoC = sinComas[i - 1];
            $("#nuevo").html("Casos: " + nuevoC);
            nuevoP = porcentaje + "%";
            break;
          case "Marcacion":
            marcacionC = sinComas[i - 1];
            $("#marcacion").html("Casos: " + marcacionC);
            marcacionP = porcentaje + "%";
            break;
          case "Proceso":
            procesoC = sinComas[i - 1];
            $("#proceso").html("Casos: " + procesoC);
            procesoP = porcentaje + "%";
            break;
          case "Cancelado":
            canceladoC = sinComas[i - 1];
            $("#canceladoTotal").html("Casos: " + canceladoC);
            canceladoP = porcentaje + "%";
            break;
          case "Terminado":
            terminadoC = sinComas[i - 1];
            $("#terminado").html("Casos: " + terminadoC);
            terminadoP = porcentaje + "%";
            break;
        }
      }
      let options = {
        chart: {
          type: "bar",
        },
        series: [
          {
            name: "Folios",
            data: [procesoC, nuevoC, marcacionC, terminadoC, canceladoC],
          },
        ],
        labels: [
          "Proceso: " + procesoP + "",
          "Nuevo: " + nuevoP + "",
          "Marcacion: " + marcacionP + "",
          "Facturado: " + terminadoP + "",
          "Cancelado: " + canceladoP + "",
        ],
        title: {
          text: "Distribucion de folios por area",
          style: {
            fontSize: "30px",
            align: "center",
          },
        },
      };

      let chart = new ApexCharts(
        document.querySelector("#foliosGrafica"),
        options
      );

      chart.render();
    },
  });

  //grafica dona//
  $.ajax({
    method: "POST",
    url: "../DatosReporte",
    data: {
      accion: "InfoCartas",
    },
    success: function (result) {
      let sinComas;
      let nuevoP = 0;
      let nuevoC = 0;
      let marcacionP = 0;
      let marcacionC = 0;
      let procesoP = 0;
      let procesoC = 0;
      let terminadoP = 0;
      let terminadoC = 0;
      let canceladoP = 0;
      let canceladoC = 0;
      let porcentaje;
      sinComas = result.split(",");

      for (let i = 1; i < sinComas.length; i = i + 2) {
        //se hace para hacer el calculo del procentaje de cada caso
        porcentaje = (sinComas[i - 1] * 100) / sinComas[sinComas.length - 1];
        switch (sinComas[i]) {
          case "Nuevo":
            nuevoC = sinComas[i - 1];
            $("#nuevo").html("Casos: " + nuevoC);
            nuevoP = porcentaje;
            break;
          case "Marcacion":
            marcacionC = sinComas[i - 1];
            $("#marcacion").html("Casos: " + marcacionC);
            marcacionP = porcentaje;
            break;
          case "Proceso":
            procesoC = sinComas[i - 1];
            $("#proceso").html("Casos: " + procesoC);
            procesoP = porcentaje;
            break;
          case "Cancelado":
            canceladoC = sinComas[i - 1];
            $("#canceladoTotal").html("Casos: " + canceladoC);
            canceladoP = porcentaje;
            break;
          case "Terminado":
            terminadoC = sinComas[i - 1];
            $("#terminado").html("Casos: " + terminadoC);
            terminadoP = porcentaje;
            break;
        }
      }
      let options = {
        series: [procesoP, nuevoP, marcacionP, terminadoP, canceladoP],
        chart: {
          width: 600,
          type: "donut",
        },
        labels: [
          "Proceso: " + procesoC + "",
          "Nuevo: " + nuevoC + "",
          "Marcacion: " + marcacionC + "",
          "Facturado: " + terminadoC + "",
          "Cancelado: " + canceladoC + "",
        ],
        responsive: [
          {
            breakpoint: 480,
            options: {
              chart: {
                width: 200,
              },
              legend: {
                position: "bottom",
              },
            },
          },
        ],
      };

      let chart = new ApexCharts(document.querySelector("#folioDona"), options);
      chart.render();
    },
  });
  //termina la grafica de folios

  //inicia grafica de seguimiento
  $.ajax({
    method: "POST",
    url: "../DatosReporte",
    data: {
      accion: "seguimiento",
    },
    success: function (result) {
      let csDocumentosC = 0;
      let csDocumentosP;
      let dIncorrectosC = 0;
      let dIncorrectosP;
      let d1a3DocsC = 0;
      let d1a3DocsP;
      let d4a6DocsC = 0;
      let d4a6DocsP;
      let d7a10DocsC = 0;
      let d7a10DocsP;
      let nuevoC = 0;
      let nuevoP;
      let sContactoC = 0;
      let sContactoP;
      let sc30DiasC = 0;
      let sc30DiasP;
      let tDocsC = 0;
      let tDocsP;
      let sinComas = result.split(",");
      for (let i = 1; i < sinComas.length; i = i + 2) {
        //se hace para hacer el calculo del procentaje de cada caso
        porcentaje = (sinComas[i - 1] * 100) / sinComas[sinComas.length - 1];
        switch (sinComas[i]) {
          case "Con contacto sin documentos":
            csDocumentosC = sinComas[i - 1];
            csDocumentosP = porcentaje + "%";
            break;
          case "Datos incorrectos":
            dIncorrectosC = sinComas[i - 1];
            dIncorrectosP = porcentaje + "%";
            break;
          case "De 1 a 3 documentos":
            d1a3DocsC = sinComas[i - 1];
            d1a3DocsP = porcentaje + "%";
            break;
          case "De 4 a 6 documentos":
            d4a6DocsC = sinComas[i - 1];
            d4a6DocsP = porcentaje + "%";
            break;
          case "De 7 a 10 documentos":
            d7a10DocsC = sinComas[i - 1];
            d7a10DocsP = porcentaje + "%";
            break;
          case "Nuevo":
            nuevoC = sinComas[i - 1];
            nuevoP = porcentaje + "%";
            break;
          case "Sin Contacto":
            sContactoC = sinComas[i - 1];
            sContactoP = porcentaje + "%";
            break;
          case "Sin contacto en 30 dias":
            sc30DiasC = sinComas[i - 1];
            sc30DiasP = porcentaje + "%";
            break;
          case "Total de documentos":
            tDocsC = sinComas[i - 1];
            tDocsP = porcentaje + "%";
            break;
        }
      }

      //quitamos la ultima coma para poder traer los resultados correctos
      let options = {
        colors: [
          "#F44336",
          "#E91E63",
          "#9C27B0",
          "#F5BF07",
          "#D1F507",
          "#77F507",
          "#07F589",
          "#9407F5",
          "#0707F5",
        ],
        series: [
          Number(csDocumentosC),
          Number(dIncorrectosC),
          Number(d1a3DocsC),
          Number(d4a6DocsC),
          Number(d7a10DocsC),
          Number(nuevoC),
          Number(sContactoC),
          Number(sc30DiasC),
          Number(tDocsC),
        ],
        chart: {
          width: 650,
          type: "pie",
        },
        labels: [
          "Con contacto sin documentos",
          "Datos incorrectos",
          "De 1 a 3 documentos",
          "De 4 a 6 documentos",
          "De 7 a 10 documentos",
          "Nuevo",
          "Sin Contacto",
          "Sin contacto en 30 dias",
          "Total de documentos",
        ],
        responsive: [
          {
            breakpoint: 480,
            options: {
              chart: {
                width: 200,
              },
              legend: {
                position: "bottom",
              },
            },
          },
        ],
        title: {
          text: "Analisis de estatus",
          style: {
            fontSize: "27px",
            align: "center",
          },
        },
      };

      let chart = new ApexCharts(
        document.querySelector("#seguimientosGrafica"),
        options
      );
      chart.render();
    },
  });

  $.ajax({
    method: "POST",
    url: "../DatosReporte",
    data: {
      accion: "AsignadosEntregados",
    },
    success: function (result) {
      let sinUltima = result.substring(0, result.length - 1);
      let sinComas = sinUltima.split(",");
      alert(sinComas[0]);
      alert(sinComas[1]);
      alert(sinComas[2]);
      // obtener fecha
      let hoy = new Date();
      const meses = [
        "Enero",
        "Febrero",
        "Marzo",
        "Abril",
        "Mayo",
        "Junio",
        "Julio",
        "Agosto",
        "Septiembre",
        "Octubre",
        "Noviembre",
        "Diciembre",
      ];
      let options = {
        series: [
          {
            name: "series1",
            data: [31, 40, 28, 51, 42, 109, 100],
          },
          {
            name: "series2",
            data: [11, 32, 45, 32, 34, 52, 41],
          },
        ],
        chart: {
          height: 350,
          type: "area",
        },
        dataLabels: {
          enabled: false,
        },
        stroke: {
          curve: "smooth",
        },
        xaxis: {
          type: "text",
          categories: [
            meses[hoy.getMonth() - 10],
            meses[hoy.getMonth() - 9],
            meses[hoy.getMonth() - 8],
            meses[hoy.getMonth() - 7],
            meses[hoy.getMonth() - 6],
            meses[hoy.getMonth() - 5],
            meses[hoy.getMonth() - 4],
            meses[hoy.getMonth() - 3],
            meses[hoy.getMonth() - 2],
            meses[hoy.getMonth() - 1],
            meses[hoy.getMonth()],
            meses[hoy.getMonth() + 1],
          ],
        },
      };

      let chart = new ApexCharts(
        document.querySelector("#foliosEntregados"),
        options
      );
      chart.render();
    },
  });
});
