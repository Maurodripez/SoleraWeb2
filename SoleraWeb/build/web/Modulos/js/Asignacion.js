function leerArchivo(e) {
  let archivo = e.target.files[0];
  if (!archivo) {
    return;
  }
  let lector = new FileReader();
  lector.onload = function (e) {
    let contenido = e.target.result;
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

document
  .getElementById("file-input")
  .addEventListener("change", leerArchivo, false);
const excelInput = document.getElementById("LeerExcel");
excelInput.addEventListener("change", async function () {
  const contenido = await readXlsxFile(excelInput.files[0]);
  if (!contenido) {
    return;
  }
  let contenidoJson = JSON.stringify(contenido);
  let contenido2 = JSON.parse(contenidoJson);
  console.log(contenido2);
  console.log(contenido[0][0]);
  console.log(contenido[1][0]);
  console.log(contenido[1][1]);

  console.log(contenido);
  console.log(contenido[0].length);
  console.log(contenido[0][1].length);
});
