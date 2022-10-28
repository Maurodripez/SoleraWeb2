<html>

<head>
    <meta charset="utf-8" />
    <title>Ejemplo 1.1</title>
    <style type="text/css">
        #areaContador {
            font-size: 40px;
            font-weight: bold;
            font-family: impact;
            margin: 10px;
        }
    </style>
</head>

<body>
    <p id="ejemplo">
        En este párrafo se mostrará la opción clickada por el usuario
    </p>

    <button onclick="eliminar()">Clicka para mostrar mensaje</button>
    <script type="text/javascript">
        function eliminar() {
            let mensaje;
            let opcion = confirm("Confirma para eliminar siniestro");
            if (opcion == true) {
                mensaje = "Has clickado OK";
            } else {
                mensaje = "Has clickado Cancelar";
            }
            alert("Siniestro eliminado");
        }
    </script>
</body>

</html>