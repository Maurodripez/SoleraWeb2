//inicio de la carga de imagenes por medio del usuario
let botonPresionado;
$(document).ready(function (e) {
  //funcion para obtneer el boton que se preciona en ese momento
  $(function () {
    $(".botonGuardar").click(function () {
      botonPresionado = $(this).attr("id");
    });
  });
  //file type validation
});
function userSubmit() {
  //obtenemos el form data para guardar la imagen
  let imagen = new FormData(document.getElementById("cargaDocs"));
  //  alert(typeof botonPresionado);
  let queGuardar = botonPresionado;
  $.ajax({
    url: "detener",
    method: "post",
    data: {
      queGuardar,
    },
    success: function (result) {
      alert(result);
    },
  });
  $.ajax({
    url: "detener",
    type: "post",
    data: imagen,
    queGuardar,
    cache: false,
    processData: false, // Estos tres deben ser falsos
    contentType: false, //
    success: function (data) {
      //  alert(data);
    },
    error: function () {
      alert("Servidor anormal, intente nuevamente más tarde ...");
    },
  });
  return false;
}
window.addEventListener("load", function () {});
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
