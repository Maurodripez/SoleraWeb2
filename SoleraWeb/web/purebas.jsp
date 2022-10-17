<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script src="./js/jquery-3.6.1.js"></script>
</head>

<body>
    <h2>Modificar información del usuario</h2>
    <form enctype="multipart/form-data" method="post" id="userForm" onsubmit="return userSubmit()">
        Avatar:<input class="botones" name="imagen" id="uimg" type="file"><br>
        Avatar:<input class="botones" name="imagen2" id="uimg" type="file"><br>
        Apodo:<input class="botones" name="nombre" id="uname"><br>
        <input type="submit" value="salvar">
    </form>
    <script src="./js/pruebas.js"></script>
</body>

</html>