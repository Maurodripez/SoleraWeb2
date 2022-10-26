//funciones jqyuery entran aqui
$(document).ready(function () {
  //////////////inicio de todos los botones de busqueda////////////////////
  $("#txtBotonEditar").click(function () {
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
        $(".tablaActual").remove();
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
        $(".tablaActual").remove();
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
        $(".tablaActual").remove();
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
        $(".tablaActual").remove();
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
        $(".tablaActual").remove();
        $("#ResultadoAjax").html(result);
      },
    });
  });
});
//funciones javascript entranc aqui
function busquedaGeneral(thisValue) {
  //let txtFiltro = document.getElementById("txtBtnGeneralBuscar").value;
  let txtIdGuardado = document.getElementById("txtBtnGeneralBuscar").id;
  $.ajax({
    url: "buscar.do",
    data: {
      filtro: thisValue,
      idGuardado: txtIdGuardado,
    },
    success: function (result) {
      $(".tablaActual").remove();
      let tablaMensajes = document.getElementById("TablaPGeneral");
      console.log(result);
      let sinGuion = result.split("-/");
      for (let i = 0; i < sinGuion.length - 1; i++) {
        let sinDiagonal = sinGuion[i].split("//");
        // Creando los 'td' que almacenará cada parte de la información del usuario actual
        let boton = `<td class='tablaActual botonesTabla col'><button type='button' id=${sinDiagonal[0]} class='btn btn-primary' data-bs-toggle='modal'
        data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'
        width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>
        <path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 
        1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>
         <path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 
        0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>
        </svg></button></td>`;
        let idRegistro = `<td class='tablaActual'>${sinDiagonal[0]}</td>`;
        let dias = `<td class='tablaActual'>${sinDiagonal[1]}</td>`;
        let primerDoc = `<td class='tablaActual'>${sinDiagonal[2]}</td>`;
        let siniestro = `<td class='tablaActual'>${sinDiagonal[3]}</td>`;
        let poliza = `<td class='tablaActual'>${sinDiagonal[4]}</td>`;
        let asegurado = `<td class='tablaActual'>${sinDiagonal[5]}</td>`;
        let estatus = `<td class='tablaActual'>${sinDiagonal[6]}</td>`;
        tablaMensajes.innerHTML += `<tr class='tablaActual'>${
          boton +
          idRegistro +
          dias +
          primerDoc +
          siniestro +
          poliza +
          asegurado +
          estatus
        }</tr>`;
      }
      // alert(result);
      //$("#ResultadoAjax").html(result);
    },
  });
}
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
      $(".tablaActual").remove();
      $("#ResultadoAjax").html(result);
      document.getElementsByClassName("btnDinamicos").style.background =
        "#0000FF";
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
      $(".tablaActual").remove();
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
      $(".tablaActual").remove();
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
      $(".tablaActual").remove();
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
      $(".tablaActual").remove();
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
      $(".tablaActual").remove();
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
      $(".tablaActual").remove();
      $("#ResultadoAjax").html(result);
    },
  });
}
////////////////////finalizan las funciones para buscar///////////////////////////////////

/////////////////inicio de la funcion para mostrar los valores ya guardados en BD en ventana modal//////////////////
function cambiarNombre(get) {
  /////se recibe el parametro id
  let inputNombre = document.getElementById("idOculto"); ////se obtiene el input oculto para cambiar el valor del boton y mandar el formulario ya que java trabaja con los valores y no id
  let inputNombreFk = document.getElementById("fkIdOculto");
  inputNombreFk.value = get;
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
  let txtFactura = document.getElementById("checkboxFactura");
  let txtPoder = document.getElementById("checkboxPoder");
  let txtIdentificacion = document.getElementById("checkboxIdentificacion");
  let txtSituacion = document.getElementById("checkboxSituacion");
  let txtCurp = document.getElementById("checkboxCurp");
  let txtEstado = document.getElementById("checkboxEstado");
  let txtTenencia = document.getElementById("checkboxTenencia");
  let txtBaja = document.getElementById("checkboxBaja");
  let txtTarjeta = document.getElementById("checkboxTarjeta");
  let txtPoliza = document.getElementById("checkboxPoliza");
  let txtComprobante = document.getElementById("checkboxComprobante");
  let txtIdRegistro = document.getElementById("idOculto");
  let guardarDocs = "guardarDocsAprobados";
  $.ajax({
    url: "DocumentosAprobados",
    data: {
      factura: txtFactura.checked,
      poder: txtPoder.checked,
      identificacion: txtIdentificacion.checked,
      situacion: txtSituacion.checked,
      curp: txtCurp.checked,
      estado: txtEstado.checked,
      tenencia: txtTenencia.checked,
      baja: txtBaja.checked,
      tarjeta: txtTarjeta.checked,
      poliza: txtPoliza.checked,
      comprobante: txtComprobante.checked,
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
      resultados = result.split(",");
      if (resultados[0] == "true") {
        document.getElementById("checkboxFactura").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxFactura").checked = false;
      }
      if (resultados[1] == "true") {
        document.getElementById("checkboxPoder").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxPoder").checked = false;
      }
      if (resultados[2] == "true") {
        document.getElementById("checkboxIdentificacion").checked = true;
        porcentaje += 10;
      } else {
        document.getElementById("checkboxIdentificacion").checked = false;
      }
      if (resultados[3] == "true") {
        document.getElementById("checkboxSituacion").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxSituacion").checked = false;
      }
      if (resultados[4] == "true") {
        document.getElementById("checkboxCurp").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxCurp").checked = false;
      }
      if (resultados[5] == "true") {
        document.getElementById("checkboxEstado").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxEstado").checked = false;
      }
      if (resultados[6] == "true") {
        document.getElementById("checkboxTenencia").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxTenencia").checked = false;
      }
      if (resultados[7] == "true") {
        document.getElementById("checkboxBaja").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxBaja").checked = false;
      }
      if (resultados[8] == "true") {
        document.getElementById("checkboxTarjeta").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxTarjeta").checked = false;
      }
      if (resultados[8] == "true") {
        document.getElementById("checkboxPoliza").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxPoliza").checked = false;
      }
      if (resultados[8] == "true") {
        document.getElementById("checkboxComprobante").checked = true;
        porcentaje += 9;
      } else {
        document.getElementById("checkboxComprobante").checked = false;
      }
      porcentajeBarra = document.getElementById("progresoDocsAprobados");
      porcentajeBarra.style.width = porcentaje + "%";
      porcentajeBarra.innerHTML = porcentaje + "%";
    },
  });

  $.ajax({
    url: "DocumentosAprobados",
    data: {
      funcARealizar: "mostrarTabla",
      idRegistro: txtIdRegistro,
    },
    success: function (result) {
      $("#mostrarTablaImagenes").html(result);
    },
  });
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
    alert("realiza");
    //    $("#mensaje").html(respuesta.mensaje);
  });
}
function InsertarSeguimiento() {
  let sesion = document.getElementById("UsuarioActivo").textContent;
  $.ajax({
    url: "GuardarSeguimiento",
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
      usuario: sesion,
    },
    success: function (result) {
      alert(result);
    },
  });
}
function mostrarSesion() {
  $.ajax({
    url: "ControladorMostrarDatos",
    data: {
      datos: "correcto",
    },
    success: function (result) {
      alert(result);
    },
  });
}
//se ejecutan las funciones del boton para cada imagen
function funcionesBoton(getId) {
  let direccionId = document.getElementById("idOculto").value;
  let sinComas = getId.split(",");
  let sinPuntos = getId.split(".");
  switch (sinComas[0]) {
    case "Ver":
      $.ajax({
        method: "POST",
        url: "FuncionesBtnDocs",
        data: {
          accion: "Ver",
        },
        success: function (result) {
          if (sinPuntos[1] === "txt") {
            alert("entra aqui");
            let imagen = document.getElementById("docSeleccionado");
            $.ajax({
              method: "POST",
              url: "leerImagenes",
              data: {
                accion: "traerImagen64",
              },
              success: function (result) {
                imagen.src = result;
              },
            });
          } else {
            alert(sinComas[2]);
            let imagen = document.getElementById("docSeleccionado");
            imagen.setAttribute(
              "src",
              "./documentos/" + direccionId + "/" + sinComas[2] + ""
            );
            valoresSesiones();
          }
        },
      });
      break;
    case "Eliminar":
      $.ajax({
        method: "POST",
        url: "FuncionesBtnDocs",
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
//convierte el pdf y lo descarga
function convertirPDF(getId) {
  let sinComas = getId.split(",");
  let doc = new jsPDF("landscape");
  let imagenData = new Image();
  idImagen = document.getElementById(getId);
  imagenData.src = "./documentos/" + sinComas[3] + "/" + sinComas[2] + "";
  doc.addImage(imagenData, 10, 10);
  $.ajax({
    method: "POST",
    url: "FuncionesBtnDocs",
    data: {
      accion: "Ver",
    },
    success: function (result) {
      let imagen = document.getElementById("docSeleccionado");
      imagen.setAttribute(
        "src",
        "./documentos/" + sinComas[3] + "/" + sinComas[2] + ""
      );
    },
  });
  nombreArchivo = sinComas[2];
  sinPuntos = nombreArchivo.split(".");
  doc.save("" + sinPuntos[0] + ".pdf");
}
function valoresSesiones() {
  let sesion = document.getElementById("UsuarioActivo").textContent;
  $.ajax({
    method: "POST",
    url: "ValidarSesiones",
    data: {
      accion: "ValidarUsuario",
      usuario: sesion,
    },
    success: function (result) {
      if (result === "consulta") {
        document.getElementById("gDatosBtn").disabled = true;
        document.getElementById("insertarSeguimiento").disabled = true;
        document.getElementById("btnAsignarIntegrador").disabled = true;
        document.getElementById("btnDocsAprobados").disabled = true;
        document.getElementById("btnSubirDoc").disabled = true;
        $(".btnEliminarClass").prop("disabled", true);
        // document.getElementsByClassName("btnEliminarClass").disabled = true;
      } else if (result === "operador" || result === "integrador") {
        document.getElementById("fechaCarga").disabled = true;
      }
    },
  });
}
window.addEventListener("load", function () {
  valoresSesiones();
  CantMensajes();
});
function CantMensajes() {
  $.ajax({
    method: "POST",
    url: "MostrarMensajes",
    data: {
      accion: "MostrarMensajes",
      dias: "btnMsg0a2",
    },
  }).done(function (data) {
    document.getElementById("txt0a2").textContent = data;
  });
  $.ajax({
    method: "POST",
    url: "MostrarMensajes",
    data: {
      accion: "MostrarMensajes",
      dias: "btnMsg3a5",
    },
  }).done(function (data) {
    document.getElementById("txt3a5").textContent = data;
  });
  $.ajax({
    method: "POST",
    url: "MostrarMensajes",
    data: {
      accion: "MostrarMensajes",
      dias: "btnMsg6a14",
    },
  }).done(function (data) {
    document.getElementById("txt6a14").textContent = data;
  });
  $.ajax({
    method: "POST",
    url: "MostrarMensajes",
    data: {
      accion: "MostrarMensajes",
      dias: "btnMsgMas15",
    },
  }).done(function (data) {
    document.getElementById("txtmas15").textContent = data;
  });
}
function MostrarMensajes(getId) {
  let mayor;
  let menor;
  switch (getId) {
    case "btnMsg0a2":
      mayor = 0;
      menor = 3;
      break;
    case "btnMsg3a5":
      mayor = 3;
      menor = 6;
      break;
    case "btnMsg6a14":
      mayor = 6;
      menor = 15;
      break;
    case "btnMsgMas15":
      menor = 15;
      mayor = 365;
      break;
    default:
      break;
  }
  $.ajax({
    method: "post",
    url: "MostrarMensajes",
    data: {
      accion: "MostrarTabla",
      id: getId,
      mayor,
      menor,
    },
  }).done(function (result) {
    console.log(result);
    let tablaMensajes = document.getElementById("TablaPGeneral");
    let sinGuion = result.split("-/");
    for (let i = 0; i < sinGuion.length - 1; i++) {
      let sinDiagonal = sinGuion[i].split("//");
      // Creando los 'td' que almacenará cada parte de la información del usuario actual
      let boton = `<td class='tablaActual botonesTabla col'><button type='button' id=${sinDiagonal[0]} class='btn btn-primary' data-bs-toggle='modal'
      data-bs-target='#staticBackdrop'  onclick='cambiarNombre(this.id)' value='Editar'><svg xmlns='http://www.w3.org/2000/svg'
      width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>
      <path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 
      1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>
       <path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 
      0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>
      </svg></button></td>`;
      let idRegistro = `<td class='tablaActual'>${sinDiagonal[0]}</td>`;
      let dias = `<td class='tablaActual'>${sinDiagonal[1]}</td>`;
      let primerDoc = `<td class='tablaActual'>${sinDiagonal[2]}</td>`;
      let siniestro = `<td class='tablaActual'>${sinDiagonal[3]}</td>`;
      let poliza = `<td class='tablaActual'>${sinDiagonal[4]}</td>`;
      let asegurado = `<td class='tablaActual'>${sinDiagonal[5]}</td>`;
      let estatus = `<td class='tablaActual'>${sinDiagonal[6]}</td>`;
      tablaMensajes.innerHTML += `<tr class='tablaActual'>${
        boton +
        idRegistro +
        dias +
        primerDoc +
        siniestro +
        poliza +
        asegurado +
        estatus
      }</tr>`;
    }
  });
}
