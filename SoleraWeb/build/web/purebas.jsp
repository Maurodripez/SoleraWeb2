<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Exportar tabla HTML a Excel</title>
        <script src="./js/xlsx.full.min.js"></script>
        <script src="./js/FileSaver.min.js"></script>
        <script src="./js/tableexport.min.js"></script>
        <link rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <h1>Tabla HTML a Excel</h1>
        <p>
            Exportar los datos de una tabla de una página web a una hoja de cálculo de Excel
            <br>
            <a href="//parzibyte.me/blog">By Parzibyte</a>
        </p>
        <button id="btnExportar">Exportar</button>
        <br>
        <br>
        <table id="tabla">
            <thead>
                <tr>
                    <th>
                        <input type="text" placeholder="Hola">
                    </th>
                    <th>Lenguaje</th>
                    <th>Sitio web</th>
                    <th>Algunos usos</th>
                </tr>
                <tr>
                    <th>
                        <input type="text" placeholder="Hola">
                    </th>
                    <th>
                        <input type="text" placeholder="Hola">
                    </th>
                    <th>
                        <input type="text" placeholder="Hola">
                    </th>
                    <th>
                        <input type="text" placeholder="Hola">
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>
                        <button>hola</button>
                    </th>
                    <td>PHP</td>
                    <td>php.net</td>
                    <td>Aplicaciones web</td>
                </tr>
                <tr>
                    <th>
                        <button>hola</button>
                    </th>
                    <td>Python</td>
                    <td>python.org</td>
                    <td>Aplicaciones web y de escritorio. Machine learning</td>
                </tr>
                <tr>
                    <th>
                        <button>hola</button>
                    </th>
                    <td>islaBit</td>
                    <td>islabit.com</td>
                    <td>¡Cursos y tutoriales de Excel gratis! ^^</td>
                </tr>
            </tbody>
        </table>
        <script src="./js/pruebasrutas.js"></script>
    </body>
</html>