//inicio de la carga de imagenes por medio del usuario
let botonPresionado;
$(document).ready(function (e) {
  $(".accordion-button").on("click", function () {
    let acordeon = $(this).attr("id");
    alert(acordeon);
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
  //funciones para darle a todas las clases ocultas el id del usuario
  const idsOcultos = document.querySelectorAll(".idsOcultos");
  let obtenerInfo = document.getElementById("Valor").textContent;
  idsOcultos.forEach((element) => {
    element.value = obtenerInfo;
  });
  idsOcultos[0].value = idsOcultos[0].value + ",Identificacion oficial";
  idsOcultos[1].value = idsOcultos[1].value + ",Comprobante de domicilio";
  idsOcultos[8].value = idsOcultos[2].value + ",Informacion adicional";
  idsOcultos[2].value = idsOcultos[3].value + ",Factura del vehiculo";
  idsOcultos[3].value = idsOcultos[4].value + ",Tenencias";
  idsOcultos[4].value = idsOcultos[5].value + ",Baja";
  idsOcultos[5].value = idsOcultos[6].value + ",Estado de cuenta";
  idsOcultos[6].value = idsOcultos[7].value + ",Denuncia";
  idsOcultos[7].value = idsOcultos[8].value + ",Acreditacion";

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
function mortrarImagen() {
  let obtenerInfo = document.getElementById("Valor").textContent;
  $.ajax({
    method: "post",
    url: "ImagenesUsuario",
    data: {
      id: obtenerInfo,
    },
    success: function (result) {
      let sinCodificado = result.split("=/=");
      for (let i = 0; i < sinCodificado.length - 1; i = i + 3) {
        switch (sinCodificado[i]) {
          case "Identificacion oficial":
            if (abrirCerrarIdent == false) {
              let imagenSrc = document.getElementById("imgIdentificacionVer");
              imagenSrc.src = "";
              abrirCerrarIdent = true;
            } else {
              let imagenSrc = document.getElementById("imgIdentificacionVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarIdent = false;
            }
            break;

          case "Comprobante de domicilio":
            if (abrirCerrarComp == false) {
              let imagenSrc = document.getElementById("imgComprobanteVer");
              imagenSrc.src = "";
              abrirCerrarComp = true;
            } else {
              let imagenSrc = document.getElementById("imgComprobanteVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarComp = false;
            }
            break;

          case "Informacion adicional":
            if (abrirCerrarInfo == false) {
              let imagenSrc = document.getElementById("imgInfoVer");
              imagenSrc.src = "";
              abrirCerrarInfo = true;
            } else {
              let imagenSrc = document.getElementById("imgInfoVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarInfo = false;
            }
            break;

          case "Factura del vehiculo":
            if (abrirCerrarFact == false) {
              let imagenSrc = document.getElementById("imgFacturaVer");
              imagenSrc.src = "";
              abrirCerrarFact = true;
            } else {
              let imagenSrc = document.getElementById("imgFacturaVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarFact = false;
            }
            break;

          case "Tenencias":
            if (abrirCerrarTenen == false) {
              let imagenSrc = document.getElementById("imgTenenciasVer");
              imagenSrc.src = "";
              abrirCerrarTenen = true;
            } else {
              let imagenSrc = document.getElementById("imgTenenciasVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarTenen = false;
            }
            break;

          case "Baja":
            if (abrirCerrarBaja == false) {
              let imagenSrc = document.getElementById("imgBajaVer");
              imagenSrc.src = "";
              abrirCerrarBaja = true;
            } else {
              let imagenSrc = document.getElementById("imgBajaVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarBaja = false;
            }
            break;

          case "Estado de cuenta":
            if (abrirCerrarEstado == false) {
              let imagenSrc = document.getElementById("imgEstadoVer");
              imagenSrc.src = "";
              abrirCerrarEstado = true;
            } else {
              let imagenSrc = document.getElementById("imgEstadoVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarEstado = false;
            }
            break;

          case "Denuncia":
            if (abrirCerrarDenun == false) {
              let imagenSrc = document.getElementById("imgDenunciaVer");
              imagenSrc.src = "";
              abrirCerrarDenun = true;
            } else {
              let imagenSrc = document.getElementById("imgDenunciaVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarDenun = false;
            }
            break;

          case "Acreditacion":
            if (abrirCerrarAcred == false) {
              let imagenSrc = document.getElementById("imgAcreditacionVer");
              imagenSrc.src = "";
              abrirCerrarAcred = true;
            } else {
              let imagenSrc = document.getElementById("imgAcreditacionVer");
              imagenSrc.src =
                "./documentos/" + obtenerInfo + "/" + sinCodificado[i + 2] + "";
              abrirCerrarAcred = false;
            }
            break;
        }
      }
    },
  });
}
