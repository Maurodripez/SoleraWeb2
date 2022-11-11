$(document).ready(function () {
  let apretado = false;
  if ($("#btnMovimientos").click() || apretado === true) {
    alert("etnra");
  }
  $("#btnMovimientos").click(function () {
    $("#example").DataTable({
      dom: "Bfrtip",
      buttons: ["csv", "excel"],
    });
  });
});
function exportarUsuarios() {
  $.ajax({
    method: "POST",
    url: "ExportarUsuarios",
    data: {
      accion: "ExportarUsuarios",
    },
  });
}
