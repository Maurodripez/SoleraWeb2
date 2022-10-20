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
  <table id="tblData">
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
    </tr>
    <tr>
      <td>John Doe</td>
      <td>john@gmail.com</td>
      <td>USA</td>
    </tr>
    <tr>
      <td>Michael Addison</td>
      <td>michael@gmail.com</td>
      <td>UK</td>
    </tr>
    <tr>
      <td>Sam Farmer</td>
      <td>sam@gmail.com</td>
      <td>France</td>
    </tr>
  </table>
  <button onclick="exportTableToExcel('tblData', 'members-data')">Export Table Data To Excel File</button>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
  </script>
  <script src="./js/pruebasrutas.js"></script>
</body>

</html>