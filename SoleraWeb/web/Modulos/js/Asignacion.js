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
  for (let x = 1; x < contenido.length; x++) {
    let miYear = contenido[x][1].getUTCFullYear();
    let miMes = contenido[x][1].getUTCMonth() + 1;
    let miDia = contenido[x][1].getUTCDate();
    if (miMes <= 9) {
      miMes = "0" + miMes;
    }
    if (miDia <= 9) {
      miDia = "0" + miDia;
    }
    let nFechaSin = miYear + "-" + miMes + "-" + miDia;
    miYear = contenido[x][15].getUTCFullYear();
    miMes = contenido[x][15].getUTCMonth() + 1;
    miDia = contenido[x][15].getUTC0Date();
    if (miMes <= 9) {
      miMes = "0" + miMes;
      console.log(miMes);
    }
    if (miDia <= 9) {
      miDia = "0" + miDia;
    }
    let nFechaDec = miYear + "-" + miMes + "-" + miDia;
    $.ajax({
      method: "POST",
      url: "../CargarSiniestro",
      data: {
        numSiniestro: contenido[x][0],
        fechaSiniestro: nFechaSin,
        numPoliza: contenido[x][2],
        cobertura: contenido[x][3],
        afectado: contenido[x][4],
        nomAsegurado: contenido[x][5],
        regimen: contenido[x][6],
        telefonoPrincipal: contenido[x][7],
        telefonoSec: contenido[x][8],
        correo: contenido[x][9],
        marca: contenido[x][10],
        tipo: contenido[x][11],
        modelo: contenido[x][12],
        numSerie: contenido[x][13],
        ciudad: contenido[x][14],
        fechaDecreto: nFechaDec,
        taller: contenido[x][16],
      },
      success: function (result) {
        alert(result);
      },
    });
  }
});
