$(document).ready(function () {
  $("#sidebarCollapse").on("click", function () {
    $("#sidebar").toggleClass("active");
  });
});
function controlIframe(txtIframe) {
  let iframecontrolador = document.getElementById("controladorIframe");
  switch (txtIframe) {
    case "Home":
      iframecontrolador.src="ModuloPrincipal.jsp";
      alert( iframecontrolador.src);
      break;
    case "datos":
      iframecontrolador.src = "./Modulos/Datos.jsp";
      break;
    case "Reporte":
      iframecontrolador.src = "./Modulos/Reporte.jsp";
      break;
  }
}
