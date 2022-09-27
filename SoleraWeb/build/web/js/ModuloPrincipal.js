//funciones jqyuery entran aqui
$(document).ready(function () {
  //funcion para guardar los datos en la ventana modal

  //////////////inicio de todos los botones de busqueda////////////////////
  $("#txtBotonEditar").click(function () {
    var txtIdGuardado = this.id;
    let txtMayorQue = 0;
    let txtMenorQue = 3;
    $.ajax({
      url: "buscar.do",
      data: {
        idGuardado: txtIdGuardado,
        mayorQue: txtMayorQue,
        menorQue: txtMenorQue,
      },
      success: function (result) {
        $("#ResultadoAjax").html(result);
      },
    });
  });
  $("#txtBuscar0a2").click(function () {
    let txtIdGuardado = this.id;
    let txtMayorQue = 0;
    let txtMenorQue = 3;
    $.ajax({
      url: "buscar.do",
      data: {
        idGuardado: txtIdGuardado,
        mayorQue: txtMayorQue,
        menorQue: txtMenorQue,
      },
      success: function (result) {
        $("#ResultadoAjax").html(result);
      },
    });
  });
  $("#txtBuscar3a5").click(function () {
    let txtIdGuardado = this.id;
    let txtMayorQue = 2;
    let txtMenorQue = 6;
    $.ajax({
      url: "buscar.do",
      data: {
        idGuardado: txtIdGuardado,
        mayorQue: txtMayorQue,
        menorQue: txtMenorQue,
      },
      success: function (result) {
        $("#ResultadoAjax").html(result);
      },
    });
  });
  $("#txtBuscar6a14").click(function () {
    let txtIdGuardado = this.id;
    let txtMayorQue = 5;
    let txtMenorQue = 15;
    $.ajax({
      url: "buscar.do",
      data: {
        idGuardado: txtIdGuardado,
        mayorQue: txtMayorQue,
        menorQue: txtMenorQue,
      },
      success: function (result) {
        $("#ResultadoAjax").html(result);
      },
    });
  });
  $("#txtBuscarMas15").click(function () {
    let txtIdGuardado = this.id;
    let txtMayorQue = 14;
    $.ajax({
      url: "buscar.do",
      data: {
        idGuardado: txtIdGuardado,
        mayorQue: txtMayorQue,
      },
      success: function (result) {
        $("#ResultadoAjax").html(result);
      },
    });
  });
});
//funciones javascript entranc aqui

function buscarId() {
  let txtFiltro = $("#txtBuscarIdRegistro").val();
  let txtIdGuardado = document.getElementById("txtBuscarIdRegistro").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
function buscarDiasTranscurridos() {
  let txtFiltro = $("#txtBuscarDiasTranscurridos").val();
  let txtIdGuardado = document.getElementById("txtBuscarDiasTranscurridos").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
function buscarFechaInicio() {
  let txtFiltro = $("#txtBuscarFechaInicio").val();
  let txtIdGuardado = document.getElementById("txtBuscarFechaInicio").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
function buscarSiniestro() {
  let txtFiltro = $("#txtBuscarSiniestro").val();
  let txtIdGuardado = document.getElementById("txtBuscarSiniestro").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
function buscarPoliza() {
  let txtFiltro = $("#txtBuscarPoliza").val();
  let txtIdGuardado = document.getElementById("txtBuscarPoliza").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
function buscarAsegurado() {
  let txtFiltro = $("#txtBuscarAsegurado").val();
  let txtIdGuardado = document.getElementById("txtBuscarAsegurado").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
function buscarEstatusCaso() {
  let txtFiltro = $("#txtBuscarEstatusCaso").val();
  let txtIdGuardado = document.getElementById("txtBuscarEstatusCaso").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: txtFiltro,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $("#ResultadoAjax").html(result);
    },
  });
}
////////////////////finalizan las funciones para buscar///////////////////////////////////

/////////////////inicio de la funcion para mostrar los valores ya guardados en BD en ventana modal//////////////////
function cambiarNombre(get) {
  /////se recibe el parametro id
  let inputNombre = document.getElementById("idOculto"); ////se obtiene el input oculto para cambiar el valor del boton y mandar el formulario ya que java trabaja con los valores y no id
  inputNombre.value = get;
  let idGuardado = get; ///////////se manda el id para hacer la busqueda y mostrar los datos del siniestro
  $.post({
    url: "MostrarDatosServlet",
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
function guardarDocsAprobados(id) {
  let txtIdentificacion = document.getElementById("checkboxIdentificacion");
  let txtComprobante = document.getElementById("checkboxComprobante");
  let txtInfoAdicional = document.getElementById("checkboxInfoAdicional");
  let txtFactura = document.getElementById("checkboxFactura");
  let txtTenencia = document.getElementById("checkboxTenencia");
  let txtBaja = document.getElementById("checkboxBaja");
  let txtEstadoDeCuenta = document.getElementById("checkboxEstadoCuenta");
  let txtDenuncia = document.getElementById("checkboxDenuncia");
  let txtAcreditacion = document.getElementById("checkboxAcreditacion");
  let txtIdRegistro = document.getElementById("idOculto");
  let guardarDocs = "guardarDocsAprobados";
  $.ajax({
    url: "DocumentosAprobados",
    data: {
      identificacion: txtIdentificacion.checked,
      comprobante: txtComprobante.checked,
      infoAdicional: txtInfoAdicional.checked,
      factura: txtFactura.checked,
      tenencia: txtTenencia.checked,
      baja: txtBaja.checked,
      estadoCuenta: txtEstadoDeCuenta.checked,
      denuncia: txtDenuncia.checked,
      acreditacion: txtAcreditacion.checked,
      idRegistro: txtIdRegistro.value,
      funcARealizar: guardarDocs,
    },
    success: function (resultado) {
      alert(resultado);
    },
  });
}
function mostrarDocsAprobados() {
  let porcentaje = 0;
  let txtIdRegistro = document.getElementById("idOculto").value;
  let mostrarDocs = "mostrarDocsAprobados";
  $.ajax({
    url: "DocumentosAprobados",
    data: {
      idRegistro: txtIdRegistro,
      funcARealizar: mostrarDocs,
    },
    success: function (result) {
      //alert(result);
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
      porcentajeBarra.innerHTML  = porcentaje + "%";
    },
  });
}
function guardarImagenes() {
  let nombreArchivo = document.getElementById("nombreArchivo");
  let formData = new FormData();
}
function GuardarRegistros() {
  $.ajax({
    type: "POST",
    url: "ObtenerInfoDesplegableServlet",
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
    $("#mensaje").html(respuesta.mensaje);
  });
}
function valoresSesiones() {
  let obtenerSesiones = "obtenerSesiones";
  $.ajax({
    url: "DocumentosAprobados",
    data: {
      funcARealizar: obtenerSesiones,
    },
    success: function (result) {
      alert(result);
    },
  });
}
