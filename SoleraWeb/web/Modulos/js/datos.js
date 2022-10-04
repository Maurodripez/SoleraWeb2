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
      alert(result);
    },
  });
}
function validarUsuario() {
  $.ajax({
    url: "../ControladorMostrarDatos",
    data: {
      valiar: "usuario?",
    },
    success: function (result) {
      alert(result);
    },
  });
}
