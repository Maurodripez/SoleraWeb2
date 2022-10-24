<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body class="p-4">
    <nav class="navbar bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="../Iconos/person-plus.svg" alt="Logo" width="30" height="24"
                    class="d-inline-block align-text-top">
                Crear usuario
            </a>
        </div>
    </nav>
    <div class="row justify-content-center">
        <div class="card col-5">
            <div class="card-header">
                Nuevo usuario
            </div>
            <div class="card-body">
                <div class="mb-3 row justify-content-center">
                    <label for="usuario" class="col-sm-2 col-form-label">Usuario</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="usuario">
                    </div>
                </div>
                <div class="mb-3 row justify-content-center">
                    <label for="password" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="password">
                    </div>
                </div>
                <div class="mb-3 row justify-content-center">
                    <label for="privilegios" class="col-sm-2 col-form-label">Privilegios</label>
                    <div class="col-sm-6">
                        <select class="form-select">
                            <option selected>Privilegios...</option>
                            <option value="root">Root</option>
                            <option value="supervisor">Supervisor</option>
                            <option value="teamlider">Teamlider</option>
                            <option value="integrador">Integrador</option>
                            <option value="operador">Operador</option>
                            <option value="consulta">Consulta</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <div class="d-grid col-sm-8 mx-auto">
                        <button class="btn btn-primary">
                            Crear usuario
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-5">
            <div class="card-header">
                Editar Usuario
            </div>
            <div class="card-body">
                <h5 class="card-title">Special title treatment</h5>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="card col-5">
            <div class="card-header">
                Eliminar usuario
            </div>
            <div class="card-body">
                <h5 class="card-title">Special title treatment</h5>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>
</body>

</html>