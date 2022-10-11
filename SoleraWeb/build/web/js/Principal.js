$(document).ready(function () {
  $("#sidebarCollapse").on("click", function () {
    $("#sidebar").toggleClass("active");
  });
});
function controlIframe(txtIframe) {
  //se controla la pgagina que se muestra en el iframe
  let iframecontrolador = document.getElementById("controladorIframe");
  switch (txtIframe) {
    case "Home":
      iframecontrolador.src = "ModuloPrincipal.jsp";
      break;
    case "datos":
      iframecontrolador.src = "./Modulos/Datos.jsp";
      break;
    case "Reporte":
      iframecontrolador.src = "./Modulos/Reporte.jsp";
      break;
    case "Asignacion":
      iframecontrolador.src = "./Modulos/Asignacion.jsp";
      break;
    case "CrearUsuario":
      iframecontrolador.src = "./Modulos/CrearUsuario.jsp";
      break;
  }
}
