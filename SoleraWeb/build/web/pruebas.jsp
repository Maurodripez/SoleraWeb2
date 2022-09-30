<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>
    <h1>Hello, world!</h1>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>

    <div class="btn-group" role="group">
        <div>
            <div class="btn-group-vertical">
                <input type="radio" class="btn-check" name="btnOpciones" value="perro" id="idVer" autocomplete="off">
                <label class="btn btn-outline-danger" for="idVer">Ver</label>
                <input type="radio" class="btn-check" name="btnOpciones2" id="idConvertirPdf" autocomplete="off">
                <label class="btn btn-outline-danger" for="idConvertirPdf">Pdf</label>
            </div>
            <div class="btn-group-vertical">
                <input type="radio" class="btn-check" name="btnOpciones3" id="idDescarga" autocomplete="off">
                <label class="btn btn-outline-danger" for="idDescarga">Descargar</label>
                <input type="radio" class="btn-check" name="btnOpciones4" id="idEliminar" autocomplete="off">
                <label class="btn btn-outline-danger" for="idEliminar">eliminar</label>
            </div>
        </div>

    </div>
    <button onclick="nada()">
        aprietame
    </button>
    <script>
        function nada(){
            alert(document.getElementById("idVer").value)
        }
    </script>

</body>

</html>