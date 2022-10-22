<!--creacion del inicio de sesion -->
<!DOCTYPE html>
<html lang="es">
    <head>
        <%@ page contentType="text/html; charset=UTF-8" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Solera</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
            crossorigin="anonymous"
        >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container mt-4 col-lg-4 card col-sm-10">
            <div class="card-body">
                <form action="LoginControlador" method="post">
                    <div class="form-group text-center">
                        <h3>Login</h3>
                        <label>Bienvenido</label>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="txtUsuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="txtPassword" class="form-control">
                        </div>
                        <div class="d-grid gap-3 p-2">
                            <input
                                class="btn btn-primary"
                                name="btnIngresar"
                                type="submit"
                                value="Ingresar"
                            >
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
