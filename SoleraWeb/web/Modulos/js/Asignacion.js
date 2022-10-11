function leerArchivo(e) {
  var archivo = e.target.files[0];
  if (!archivo) {
    return;
  }
  var lector = new FileReader();
  lector.onload = function (e) {
    var contenido = e.target.result;
    let contenidoJson = JSON.parse(contenido);
    for (let i of contenidoJson) {
      $.ajax({
        method: "POST",
        url: "../CargarSiniestro",
        data: {
          numSiniestro: i.numSiniestro,
          fechaSiniestro: i.fechaSiniestro,
          numPoliza: i.numPoliza,
          cobertura: i.cobertura,
          afectado: i.afectado,
          nomAsegurado: i.nomAsegurado,
          regimen: i.regimen,
          telefonoPrincipal: i.telefonoPrincipal,
          telefonoSec: i.telefonoSec,
          correo: i.correo,
          marca: i.marca,
          tipo: i.tipo,
          modelo: i.modelo,
          numSerie: i.numSerie,
          ciudad: i.ciudad,
          fechaDecreto: i.fechaDecreto,
          taller: i.taller,
        },
        success: function (result) {
          alert(result);
        },
      });
    }
    mostrarContenido(contenido);
  };
  lector.readAsText(archivo);
}

function mostrarContenido(contenido) {
  var elemento = document.getElementById("contenido-archivo");
  elemento.innerHTML = contenido;
}

document
  .getElementById("file-input")
  .addEventListener("change", leerArchivo, false);
