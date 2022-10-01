<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="./js/jquery-3.6.1.js"></script>
</head>

<body>

    <div id="images">
    </div>
    <button onclick=mostrarDoc()>
        apieta
    </button>

    <script>
        function mostrarDoc() {
            alert("entra");
            $.ajax({
                method: "POST",
                url: "FuncionesBtnDocs",
                data: {
                    entra: "mostrarImagen",
                }, success: function () {
                    let images = document.getElementById("images");
                    let newimg = document.createElement("img");
                    newimg.setAttribute("src", "./documentos/descarga.jpg");
                    images.appendChild(newimg);
                },
            });


        }
    </script>
</body>

</html>