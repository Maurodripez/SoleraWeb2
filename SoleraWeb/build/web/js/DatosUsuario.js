//inicio de la carga de imagenes por medio del usuario
let botonPresionado;
let btnAcordeon;
$(document).ready(function (e) {
  //obtenemos la clasepara saber que boton se esta presionando
  $(".accordion-button").on("click", function () {
    btnAcordeon = $(this).attr("value");
    mortrarImagen(btnAcordeon);
  });
  //funcion para obtneer el boton que se preciona en ese momento
  $(function () {
    $(".botonGuardar").click(function () {
      //le agregamos el valor del boton que se apreto con la clase
      botonPresionado = $(this).attr("id");
    });
  });
  //file type validation
});
function userSubmit() {
  let imagen;
  //obtenemos el form data para guardar la imagen
  switch (botonPresionado) {
    case "imgIdentificacion":
      imagen = new FormData(document.getElementById("cargaIdentificacion"));
      break;
    case "imgComprobante":
      imagen = new FormData(document.getElementById("cargaComprobante"));
      break;
    case "imgInfo":
      imagen = new FormData(document.getElementById("cargaInfo"));
      break;
    case "imgFactura":
      imagen = new FormData(document.getElementById("cargaFactura"));
      break;
    case "imgTenencias":
      imagen = new FormData(document.getElementById("cargaTenencias"));
      break;
    case "imgBaja":
      imagen = new FormData(document.getElementById("cargaBaja"));
      break;
    case "imgEstado":
      imagen = new FormData(document.getElementById("cargaEstado"));
      break;
    case "imgDenuncia":
      imagen = new FormData(document.getElementById("cargaDenuncia"));
      break;
    case "imgAcreditacion":
      imagen = new FormData(document.getElementById("cargaAcreditacion"));
      break;
  }

  $.ajax({
    url: "GuardarImagenesCliente",
    method: "post",
    data: imagen,
    cache: false,
    processData: false, // Estos tres deben ser falsos
    contentType: false, //
    success: function (data) {
      alert(data);
    },
    error: function () {
      alert("Servidor anormal, intente nuevamente más tarde ...");
    },
  });
  return false;
}
window.addEventListener("load", function () {
  document.getElementById("iFrameIdentificacion").style.display = "none";
  document.getElementById("iFrameComprobante").style.display = "none";
  document.getElementById("iFrameInfo").style.display = "none";
  document.getElementById("iFrameFactura").style.display = "none";
  document.getElementById("iFrameTenencia").style.display = "none";
  document.getElementById("iFrameBaja").style.display = "none";
  document.getElementById("iFrameEstado").style.display = "none";
  document.getElementById("iFrameDenuncia").style.display = "none";
  document.getElementById("iFrameAcreditacion").style.display = "none";
  //funciones para darle a todas las clases ocultas el id del usuario
  const idsOcultos = document.querySelectorAll(".idsOcultos");
  let obtenerInfo = document.getElementById("Valor").textContent;
  let contador = 0;
  idsOcultos.forEach((element) => {
    element.value = obtenerInfo;
    console.log(element.value);
  });
  idsOcultos[0].value = idsOcultos[0].value + ",Identificacion oficial";
  idsOcultos[1].value = idsOcultos[1].value + ",Comprobante de domicilio";
  idsOcultos[2].value = idsOcultos[2].value + ",Informacion adicional";
  idsOcultos[3].value = idsOcultos[3].value + ",Factura del vehiculo";
  idsOcultos[4].value = idsOcultos[4].value + ",Tenencias";
  idsOcultos[5].value = idsOcultos[5].value + ",Baja";
  idsOcultos[6].value = idsOcultos[6].value + ",Estado de cuenta";
  idsOcultos[7].value = idsOcultos[7].value + ",Denuncia";
  idsOcultos[8].value = idsOcultos[8].value + ",Acreditacion";
  //////////////////////////////////////////////
});
function GuardarComent() {
  //funcion para guardar los mensajes del cliente
  let obtenerInfo = document.getElementById("Valor").textContent;
  let infoTexto = document.getElementById("comentarios");
  $.ajax({
    method: "post",
    url: "Comentarios",
    data: {
      accion: "GuardarComents",
      comentario: infoTexto.value,
      idRegistro: obtenerInfo,
    },
    success: function (result) {
      alert(result);
    },
  });
}
function TablaMensajes() {
  let obtenerInfo = document.getElementById("Valor").textContent;
  $.ajax({
    method: "post",
    url: "Comentarios",
    data: {
      accion: "MostrarTabla",
      idRegistro: obtenerInfo,
    },
    success: function (result) {
      console.log(result);
      let tablaMensajes = document.getElementById("Tablamensajes");
      let sinDiagonal = result.split("/");
      console.log(sinDiagonal.length);
      for (let i = 0; i < sinDiagonal.length - 1; i++) {
        let sinComas = sinDiagonal[i].split(",");
        // Creando los 'td' que almacenará cada parte de la información del usuario actual
        let usuario = `<td>${sinComas[0]}</td>`;
        let fecha = `<td>${sinComas[1]}</td>`;
        let comentario = `<td>${sinComas[2]}</td>`;

        tablaMensajes.innerHTML += `<tr>${usuario + fecha + comentario}</tr>`;
      }
    },
  });
}

let abrirCerrarIdent = true;
let abrirCerrarComp = true;
let abrirCerrarInfo = true;
let abrirCerrarFact = true;
let abrirCerrarTenen = true;
let abrirCerrarBaja = true;
let abrirCerrarEstado = true;
let abrirCerrarDenun = true;
let abrirCerrarAcred = true;
function mortrarImagen(valor) {
  let obtenerInfo = document.getElementById("Valor").textContent;
  $.ajax({
    method: "post",
    url: "ImagenesUsuario",
    data: {
      id: obtenerInfo,
      nombreDoc: btnAcordeon,
    },
    success: function (result) {
      let sinCodificado = result.split("=/=");
      for (let i = 0; i < sinCodificado.length - 1; i = i + 3) {
        switch (sinCodificado[i]) {
          case "Identificacion oficial":
            if (abrirCerrarIdent == false) {
              let imagenSrc = document.getElementById("imgIdentificacionVer");
              let iframe = document.getElementById("iFrameIdentificacion");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarIdent = true;
            } else {
              let imagenSrc = document.getElementById("imgIdentificacionVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameIdentificacion");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarIdent = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarIdent = false;
              }
            }
            break;

          case "Comprobante de domicilio":
            if (abrirCerrarComp == false) {
              let imagenSrc = document.getElementById("imgComprobanteVer");
              let iframe = document.getElementById("iFrameComprobante");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarComp = true;
            } else {
              let imagenSrc = document.getElementById("imgComprobanteVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameComprobante");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarComp = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarComp = false;
              }
            }
            break;

          case "Informacion adicional":
            if (abrirCerrarInfo == false) {
              let imagenSrc = document.getElementById("imgInfoVer");
              let iframe = document.getElementById("iFrameInfo");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarInfo = true;
            } else {
              let imagenSrc = document.getElementById("imgInfoVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameInfo");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarInfo = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarInfo = false;
              }
            }
            break;

          case "Factura del vehiculo":
            if (abrirCerrarFact == false) {
              let imagenSrc = document.getElementById("imgFacturaVer");
              let iframe = document.getElementById("iFrameFactura");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarFact = true;
            } else {
              let imagenSrc = document.getElementById("imgFacturaVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameFactura");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarFact = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarFact = false;
              }
            }
            break;

          case "Tenencias":
            if (abrirCerrarTenen == false) {
              let imagenSrc = document.getElementById("imgTenenciasVer");
              let iframe = document.getElementById("iFrameTenencia");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarTenen = true;
            } else {
              let imagenSrc = document.getElementById("imgTenenciasVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameTenencia");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarTenen = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarTenen = false;
              }
            }
            break;

          case "Baja":
            if (abrirCerrarBaja == false) {
              let imagenSrc = document.getElementById("imgBajaVer");
              let iframe = document.getElementById("iFrameBaja");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarBaja = true;
            } else {
              let imagenSrc = document.getElementById("imgBajaVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameBaja");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarBaja = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarBaja = false;
              }
            }
            break;

          case "Estado de cuenta":
            if (abrirCerrarEstado == false) {
              let imagenSrc = document.getElementById("imgEstadoVer");
              let iframe = document.getElementById("iFrameEstado");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarEstado = true;
            } else {
              let imagenSrc = document.getElementById("imgEstadoVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameEstado");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarEstado = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarEstado = false;
              }
            }
            break;

          case "Denuncia":
            if (abrirCerrarDenun == false) {
              let imagenSrc = document.getElementById("imgDenunciaVer");
              let iframe = document.getElementById("iFrameDenuncia");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarDenun = true;
            } else {
              let imagenSrc = document.getElementById("imgDenunciaVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameDenuncia");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarDenun = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarDenun = false;
              }
            }
            break;

          case "Acreditacion":
            if (abrirCerrarAcred == false) {
              let imagenSrc = document.getElementById("imgAcreditacionVer");
              let iframe = document.getElementById("iFrameAcreditacion");
              iframe.style.display = "none";
              imagenSrc.src = "";
              abrirCerrarAcred = true;
            } else {
              let imagenSrc = document.getElementById("imgAcreditacionVer");
              let saberExt = sinCodificado[i + 2].slice(
                ((sinCodificado[i + 2].lastIndexOf(".") - 1) >>> 0) + 2
              );
              if (saberExt === "pdf") {
                let iframe = document.getElementById("iFrameAcreditacion");
                iframe.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                iframe.style.display = "";
                abrirCerrarAcred = false;
              } else {
                imagenSrc.src =
                  "./documentos/" +
                  obtenerInfo +
                  "/" +
                  sinCodificado[i + 2] +
                  "";
                abrirCerrarAcred = false;
              }
            }
            break;
        }
      }
    },
  });
}
function exportTableToExcel(tableID, filename = ''){
  var downloadLink;
  var dataType = 'application/vnd.ms-excel';
  var tableSelect = document.getElementById(tableID);
  var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
  
  // Specify file name
  filename = filename?filename+'.xls':'excel_data.xls';
  
  // Create download link element
  downloadLink = document.createElement("a");
  
  document.body.appendChild(downloadLink);
  
  if(navigator.msSaveOrOpenBlob){
      var blob = new Blob(['ufeff', tableHTML], {
          type: dataType
      });
      navigator.msSaveOrOpenBlob( blob, filename);
  }else{
      // Create a link to the file
      downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
  
      // Setting the file name
      downloadLink.download = filename;
      
      //triggering the function
      downloadLink.click();
  }
}