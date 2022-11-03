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
      closeNav();
      break;
    case "datos":
      iframecontrolador.src = "./Modulos/Datos.jsp";
      closeNav();
      break;
    case "Reporte":
      iframecontrolador.src = "./Modulos/Reporte.jsp";
      closeNav();
      break;
    case "Asignacion":
      iframecontrolador.src = "./Modulos/Asignacion.jsp";
      closeNav();
      break;
    case "CrearUsuario":
      iframecontrolador.src = "./Modulos/CrearUsuario.jsp";
      closeNav();
      break;
  }
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
      if (result != "root") {
        let crearUsuarios = document.getElementById("CrearUsuario");
        crearUsuarios.style = "display:none";
        let asignacion = document.getElementById("Asignacion");
        asignacion
        .style = "display:none";
      }
    },
  });
}
function openNav() {
  document.getElementById("sideNavigation").style.width = "250px";
  document.getElementById("sideNavigation").style.marginTop = "55px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("sideNavigation").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}
window.addEventListener("load", function () {
  valoresSesiones();
});
