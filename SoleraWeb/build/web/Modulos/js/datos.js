window.addEventListener("load", function () {
  $.ajax({
    method: "POST",
    url: "../ControladorMostrarDatos",
    data: {
      accion: "MostrarSiniestrosNoDocs",
      soloDatos: "SoloDatos",
    },
    success: function (result) {
      $("#mostrarTablaDatos").html(result);
    },
  });
  //muestra los dias paasados por documentos
  $.ajax({
    method: "POST",
    url: "../SiniestrosNoDocs",
    data: {
      accion: "SiniestrosEnRespuesta",
    },
    success: function (result) {
      let sinComas = result.split(",");
      $("#de0a2").html(sinComas[0]);
      $("#de3a5").html(sinComas[1]);
      $("#de6a14").html(sinComas[2]);
      $("#mas15").html(sinComas[3]);
    },
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
      accion: "mostrarTabla",
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
function cambiarNombre(get) {
  /////se recibe el parametro id
  let inputNombre = document.getElementById("idOculto"); ////se obtiene el input oculto para cambiar el valor del boton y mandar el formulario ya que java trabaja con los valores y no id
  let inputNombreFk = document.getElementById("fkIdOculto");
  inputNombreFk.value = get;
  inputNombre.value = get;
  let idGuardado = get; ///////////se manda el id para hacer la busqueda y mostrar los datos del siniestro
  $.post({
    url: "../MostrarDatosServlet",
    data: {
      idGuardadoEnvio: idGuardado,
    },
    success: function (result) {
      let resultados = "";
      ///////si en java todo sale correcto, se mandan los resultados y se realiza la obtencion de datos y dividirlos para desplegarlos en pantalla
      resultados = result.split(","); ///mandamos los datos por nmedio de , y asi poder dividirlos ymandarlos de manera individual
      //sebuscan los id para poder modificar su contenido
      let fechaCarga = document.getElementById("fechaCarga");
      let numSiniestro = document.getElementById("numSiniestro");
      let poliza = document.getElementById("poliza");
      let afectado = document.getElementById("afectado");
      let tipoDeCaso = document.getElementById("tipoDeCaso");
      let cobertura = document.getElementById("cobertura");
      let fechaSiniestro = document.getElementById("fechaSiniestro");
      let datosAudatex = document.getElementById("datosAudatex");
      let estado = document.getElementById("estado");
      let ciudad = document.getElementById("ciudad");
      let region = document.getElementById("region");
      let ubicacionTaller = document.getElementById("ubicacionTaller");
      let financiado = document.getElementById("financiado");
      let regimenFiscal = document.getElementById("regimenFiscal");
      let passwordExterno = document.getElementById("passwordExterno");
      let estatusCliente = document.getElementById("estatusCliente");
      let comentariosCliente = document.getElementById("comentariosCliente");
      let marca = document.getElementById("marca");
      let tipo = document.getElementById("tipo");
      let modelo = document.getElementById("modelo");
      let placas = document.getElementById("placas");
      let numSerie = document.getElementById("numSerie");
      let valIndemnizacion = document.getElementById("valIndemnizacion");
      let valComercial = document.getElementById("valComercial");
      let asegurado = document.getElementById("asegurado");
      let correo = document.getElementById("correo");
      let telPrincipal = document.getElementById("telPrincipal");
      let telSecundario = document.getElementById("telSecundario");
      let contacto = document.getElementById("contacto");
      let correoContacto = document.getElementById("correoContacto");
      let telContacto = document.getElementById("telContacto");
      //el arreglo que se crea se lo agregagmos a cada boton que hay
      fechaCarga.value = resultados[0];
      numSiniestro.value = resultados[1];
      poliza.value = resultados[2];
      afectado.value = resultados[3];
      tipoDeCaso.value = resultados[4];
      cobertura.value = resultados[5];
      fechaSiniestro.value = resultados[6];
      datosAudatex.value = resultados[7];
      estado.value = resultados[8];
      ciudad.value = resultados[9];
      region.value = resultados[10];
      ubicacionTaller.value = resultados[11];
      financiado.value = resultados[12];
      regimenFiscal.value = resultados[13];
      passwordExterno.value = resultados[14];
      estatusCliente.value = resultados[15];
      comentariosCliente.value = resultados[16];
      marca.value = resultados[17];
      tipo.value = resultados[18];
      modelo.value = resultados[19];
      placas.value = resultados[20];
      numSerie.value = resultados[21];
      valIndemnizacion.value = resultados[22];
      valComercial.value = resultados[23];
      asegurado.value = resultados[24];
      correo.value = resultados[25];
      telPrincipal.value = resultados[26];
      telSecundario.value = resultados[27];
      contacto.value = resultados[28];
      correoContacto.value = resultados[29];
      telContacto.value = resultados[30];
    },
  });
}
function mostrarDocsAprobados() {
  let porcentaje = 0;
  let txtIdRegistro = document.getElementById("idOculto").value;
  let mostrarDocs = "mostrarDocsAprobados";
  $.ajax({
    url: "../DocumentosAprobados",
    data: {
      idRegistro: txtIdRegistro,
      funcARealizar: mostrarDocs,
    },
    success: function (result) {
      resultados = result.split(",");
      if (resultados[0] == "true") {
        document.getElementById("checkboxIdentificacion").checked = true;
        porcentaje += 10;
      } else {
        document.getElementById("checkboxIdentificacion").checked = false;
      }
      if (resultados[1] == "true") {
        document.getElementById("checkboxComprobante").checked = true;
        porcentaje += 10;
      } else {
        document.getElementById("checkboxComprobante").checked = false;
      }
      if (resultados[2] == "true") {
        document.getElementById("checkboxInfoAdicional").checked = true;
        porcentaje += 10;
      } else {
        document.getElementById("checkboxInfoAdicional").checked = false;
      }
      if (resultados[3] == "true") {
        document.getElementById("checkboxFactura").checked = true;
        porcentaje += 15;
      } else {
        document.getElementById("checkboxFactura").checked = false;
      }
      if (resultados[4] == "true") {
        document.getElementById("checkboxTenencia").checked = true;
        porcentaje += 15;
      } else {
        document.getElementById("checkboxTenencia").checked = false;
      }
      if (resultados[5] == "true") {
        document.getElementById("checkboxBaja").checked = true;
        porcentaje += 15;
      } else {
        document.getElementById("checkboxBaja").checked = false;
      }
      if (resultados[6] == "true") {
        document.getElementById("checkboxEstadoCuenta").checked = true;
        porcentaje += 10;
      } else {
        document.getElementById("checkboxEstadoCuenta").checked = false;
      }
      if (resultados[7] == "true") {
        document.getElementById("checkboxDenuncia").checked = true;
        porcentaje += 7.5;
      } else {
        document.getElementById("checkboxDenuncia").checked = false;
      }
      if (resultados[8] == "true") {
        document.getElementById("checkboxAcreditacion").checked = true;
        porcentaje += 7.5;
      } else {
        document.getElementById("checkboxAcreditacion").checked = false;
      }
      porcentajeBarra = document.getElementById("progresoDocsAprobados");
      porcentajeBarra.style.width = porcentaje + "%";
      porcentajeBarra.innerHTML = porcentaje + "%";
    },
  });

  $.ajax({
    url: "../DocumentosAprobados",
    data: {
      funcARealizar: "mostrarTabla",
      idRegistro: txtIdRegistro,
    },
    success: function (result) {
      $("#mostrarTablaImagenes").html(result);
    },
  });
}
function funcionesBoton(getId) {
  let direccionId = document.getElementById("idOculto").value;
  let sinComas = getId.split(",");
  switch (sinComas[0]) {
    case "Ver":
      $.ajax({
        method: "POST",
        url: "../FuncionesBtnDocs",
        data: {
          accion: "Ver",
        },
        success: function (result) {
          let imagen = document.getElementById("docSeleccionado");
          imagen.setAttribute(
            "src",
            "../documentos/" + direccionId + "/" + sinComas[2] + ""
          );
        },
      });
      break;
    case "Eliminar":
      $.ajax({
        method: "POST",
        url: "../FuncionesBtnDocs",
        data: {
          accion: "Eliminar",
          fkId: sinComas[3],
          nombreArchivo: sinComas[2],
          idImagen: sinComas[1],
        },
        success: function (result) {
          alert(result);
          mostrarDocsAprobados(); //se manda de nueva la funcion para actualizar las imagene que estan borradas
        },
      });
      break;
  }
}
function GuardarRegistros() {
  $.ajax({
    type: "POST",
    url: "../ObtenerInfoDesplegableServlet",
    data: {
      fechaCarga: document.getElementById("fechaCarga").value,
      numSiniestro: document.getElementById("numSiniestro").value,
      poliza: document.getElementById("poliza").value,
      afectado: document.getElementById("afectado").value,
      tipoDeCaso: document.getElementById("tipoDeCaso").value,
      cobertura: document.getElementById("cobertura").value,
      fechaSiniestro: document.getElementById("fechaSiniestro").value,
      datosAudatex: document.getElementById("datosAudatex").value,
      estado: document.getElementById("estado").value,
      ciudad: document.getElementById("ciudad").value,
      region: document.getElementById("region").value,
      ubicacionTaller: document.getElementById("ubicacionTaller").value,
      financiado: document.getElementById("financiado").value,
      regimenFiscal: document.getElementById("regimenFiscal").value,
      passwordExterno: document.getElementById("passwordExterno").value,
      estatusCliente: document.getElementById("estatusCliente").value,
      comentariosCliente: document.getElementById("comentariosCliente").value,
      marca: document.getElementById("marca").value,
      tipo: document.getElementById("tipo").value,
      modelo: document.getElementById("modelo").value,
      placas: document.getElementById("placas").value,
      numSerie: document.getElementById("numSerie").value,
      valIndemnizacion: document.getElementById("valIndemnizacion").value,
      valComercial: document.getElementById("valComercial").value,
      asegurado: document.getElementById("asegurado").value,
      correo: document.getElementById("correo").value,
      telPrincipal: document.getElementById("telPrincipal").value,
      telSecundario: document.getElementById("telSecundario").value,
      contacto: document.getElementById("contacto").value,
      correoContacto: document.getElementById("correoContacto").value,
      telContacto: document.getElementById("telContacto").value,
      idEditableActual: document.getElementById("idOculto").value,
    },
  }).done(function (respuesta) {
    alert("realiza");
    //    $("#mensaje").html(respuesta.mensaje);
  });
}
function InsertarSeguimiento() {
  $.ajax({
    url: "../GuardarSeguimiento",
    data: {
      estacion: document.getElementById("txtEstacion").value,
      comentSeguimiento: document.getElementById("txtComentSeguimiento").value,
      estatusSeguimiento: document.getElementById("txtEstatusSeguimiento")
        .value,
      respSolera: document.getElementById("txtRespSolera").value,
      persContactada: document.getElementById("txtPersContactada").value,
      tipoPersona: document.getElementById("txtTipoPersona").value,
      tipoContacto: document.getElementById("txTipoContacto").value,
      fechaSeguimiento: document.getElementById("txtFechaSeguimiento").value,
      fechaPrimEnvDocs: document.getElementById("txtFechaPrimEnvDocs").value,
      fechaIntExp: document.getElementById("txtFechaIntExp").value,
      fechaFactServ: document.getElementById("txtFechaFactServ").value,
      fechaTermino: document.getElementById("txtFechaTermino").value,
      idRegistro: document.getElementById("idOculto").value,
    },
    success: function (result) {
      alert(result);
    },
  });
}