<!DOCTYPE html>
<html lang="en">

<head>
  <script src="./js/jquery-3.6.1.js"></script>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="Estilos/stylesheet.css" />
  <script src="./js/Principal.js"></script>
  <title>Document</title>
</head>

<body>
  <% response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    if(session.getAttribute("usuarioActivo")==null){ response.sendRedirect("index.jsp"); } %>
    <div id="sideNavigation" class="sidenav font-size: 1.6rem" style="background-color: #222d32 !important">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <div class="col-md-2" style="padding: 0;">
        <ul class="nav flex-column gap-lg-0 nav-pills col align-self-start" aria-orientation="vertical">
          <a id="Home" onclick="controlIframe(this.id)" class="nav-link text-white" aria-current="page" href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house"
              viewBox="0 0 16 16">
              <path fill-rule="evenodd"
                d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
              <path fill-rule="evenodd"
                d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
            </svg>
            Home
          </a>
          <a id="datos" onclick="controlIframe(this.id)" class="nav-link text-white" href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
              class="bi bi-cloud-download" viewBox="0 0 16 16">
              <path
                d="M4.406 1.342A5.53 5.53 0 0 1 8 0c2.69 0 4.923 2 5.166 4.579C14.758 4.804 16 6.137 16 7.773 16 9.569 14.502 11 12.687 11H10a.5.5 0 0 1 0-1h2.688C13.979 10 15 8.988 15 7.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 2.825 10.328 1 8 1a4.53 4.53 0 0 0-2.941 1.1c-.757.652-1.153 1.438-1.153 2.055v.448l-.445.049C2.064 4.805 1 5.952 1 7.318 1 8.785 2.23 10 3.781 10H6a.5.5 0 0 1 0 1H3.781C1.708 11 0 9.366 0 7.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z" />
              <path
                d="M7.646 15.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 14.293V5.5a.5.5 0 0 0-1 0v8.793l-2.146-2.147a.5.5 0 0 0-.708.708l3 3z" />
            </svg>
            Datos</a>
          <a id="Reporte" onclick="controlIframe(this.id)" class="nav-link text-white" href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-bar-chart"
              viewBox="0 0 16 16">
              <path
                d="M4 11H2v3h2v-3zm5-4H7v7h2V7zm5-5v12h-2V2h2zm-2-1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1h-2zM6 7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7zm-5 4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3z" />
            </svg>
            Reporte</a>
          <a class="nav-link text-white" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
              fill="currentColor" class="bi bi-cloud-upload" viewBox="0 0 16 16">
              <path fill-rule="evenodd"
                d="M4.406 1.342A5.53 5.53 0 0 1 8 0c2.69 0 4.923 2 5.166 4.579C14.758 4.804 16 6.137 16 7.773 16 9.569 14.502 11 12.687 11H10a.5.5 0 0 1 0-1h2.688C13.979 10 15 8.988 15 7.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 2.825 10.328 1 8 1a4.53 4.53 0 0 0-2.941 1.1c-.757.652-1.153 1.438-1.153 2.055v.448l-.445.049C2.064 4.805 1 5.952 1 7.318 1 8.785 2.23 10 3.781 10H6a.5.5 0 0 1 0 1H3.781C1.708 11 0 9.366 0 7.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z" />
              <path fill-rule="evenodd"
                d="M7.646 4.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V14.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3z" />
            </svg>
            Asigncion</a>
          <a class="nav-link text-white" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
              fill="currentColor" class="bi bi-pie-chart" viewBox="0 0 16 16">
              <path
                d="M7.5 1.018a7 7 0 0 0-4.79 11.566L7.5 7.793V1.018zm1 0V7.5h6.482A7.001 7.001 0 0 0 8.5 1.018zM14.982 8.5H8.207l-4.79 4.79A7 7 0 0 0 14.982 8.5zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z" />
            </svg>
            Encuesta</a>
          <a class="nav-link text-white" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
              fill="currentColor" class="bi bi-info-square" viewBox="0 0 16 16">
              <path
                d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
              <path
                d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
            </svg>
            Informacion</a>
            <a class="nav-link text-white" href="/SoleraWeb/CerrarSesion""><svg
                xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                  d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z" />
                <path fill-rule="evenodd"
                  d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z" />
              </svg>
              Salir
            </a>
        </ul>
      </div>
    </div>

    <nav class="topnav">
      <a class="navbar-brand text-white font-size: 1.6rem" href="#"> Solera </a>
      <a href="#" onclick="openNav()">
        <svg width="15" height="15" id="icoOpen">
          <path d="M0,5 30,5" stroke="#000" stroke-width="5" />
          <path d="M0,14 30,14" stroke="#000" stroke-width="5" />
          <path d="M0,23 30,23" stroke="#000" stroke-width="5" />
        </svg>
      </a>
    </nav>

    <div id="main">
      <!-- Add all your websites page content here  -->
      <div class="container iFrame">
        <iframe  id="controladorIframe" name="iframeControl" scrolling="auto" class="responsive-iframe" src="ModuloPrincipal.jsp"></iframe>
      </div>
    </div>
    <script>
      function openNav() {

        document.getElementById("sideNavigation").style.width = "250px";
        document.getElementById("sideNavigation").style.marginTop = "55px";
        document.getElementById("main").style.marginLeft = "250px";
      }

      function closeNav() {
        document.getElementById("sideNavigation").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
      }
    </script>
</body>

</html>