<!DOCTYPE html>
<html lang="en">

<head>
  <%@ page contentType="text/html; charset=UTF-8" %>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Bootstrap demo</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
  <script src="./js/jquery-3.6.1.js"></script>
</head>

<body>
  <button onclick="obtenerRuta()">
    aprietame
  </button>
  <select class="filtrosBusqueda form-select" id="txtFechaSeguimiento">
    <option selected>Selecciona...</option>
    <option value="Hoy">Hoy</option>
    <option value="Ayer">Ayer</option>
    <option value="Ultimos 7 Dias">Ultimos 7 Dias</option>
    <option value="Ultimos 30 Dias">Ultimos 30 Dias</option>
    <option value="Mes Anterior">Mes Anterior</option>
</select>
<button onclick="valores()">
aprietame
</button>
  <button onclick="exportTableToExcel('tblData', 'members-data')">Export Table Data To Excel File</button>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
  </script>
  <script src="./js/pruebasrutas.js"></script>
</body>

</html>