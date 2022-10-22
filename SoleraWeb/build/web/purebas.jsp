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
  <div class="accordion" id="documentosAprobadosPanel">
    <div class="row">
      <div class="accordion-item col-3">
        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
          <button class="accordion-button" type="button" data-bs-toggle="collapse"
            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
            aria-controls="panelsStayOpen-collapseOne">
            Documentos Personas fisicas
          </button>
        </h2>
        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse"
          aria-labelledby="panelsStayOpen-headingOne">
          <div class="accordion-body">
            <div class="col">
              <ul class="list-group list-group-flush">
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxIdentificacion">
                  <label class="form-check-label" for="flexCheckDefault">
                    Identificacion oficial
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxComprobante">
                  <label class="form-check-label" for="flexCheckDefault">
                    Comprobante de domicilio
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxInfoAdicional">
                  <label class="form-check-label" for="flexCheckDefault">
                    Informacion adicional
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxFactura">
                  <label class="form-check-label" for="flexCheckDefault">
                    Factura del vehiculo
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxTenencia">
                  <label class="form-check-label" for="flexCheckDefault">
                    Tenencias
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxBaja">
                  <label class="form-check-label" for="flexCheckDefault">
                    Baja
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxEstadoCuenta">
                  <label class="form-check-label" for="flexCheckDefault">
                    Estado de cuenta
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxDenuncia">
                  <label class="form-check-label" for="flexCheckDefault">
                    Denuncia
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxAcreditacion">
                  <label class="form-check-label" for="flexCheckDefault">
                    Acreditacion
                  </label>
                </li> <button id="btnDocsAprobados" onclick="guardarDocsAprobados(this.id)" type="button"
                  class="btn btn-primary btn-sm">Guardar</button>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="accordion-item col-3">
        <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
            aria-controls="panelsStayOpen-collapseTwo">
            Documentos Personas morales
          </button>
        </h2>
        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
          aria-labelledby="panelsStayOpen-headingTwo">
          <div class="accordion-body">
            <div class="col">
              <ul class="list-group list-group-flush">
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxIdentificacion">
                  <label class="form-check-label" for="flexCheckDefault">
                    Identificacion oficial
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxComprobante">
                  <label class="form-check-label" for="flexCheckDefault">
                    Comprobante de domicilio
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxInfoAdicional">
                  <label class="form-check-label" for="flexCheckDefault">
                    Informacion adicional
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxFactura">
                  <label class="form-check-label" for="flexCheckDefault">
                    Factura del vehiculo
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxTenencia">
                  <label class="form-check-label" for="flexCheckDefault">
                    Tenencias
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxBaja">
                  <label class="form-check-label" for="flexCheckDefault">
                    Baja
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxEstadoCuenta">
                  <label class="form-check-label" for="flexCheckDefault">
                    Estado de cuenta
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxDenuncia">
                  <label class="form-check-label" for="flexCheckDefault">
                    Denuncia
                  </label>
                </li>
                <li class="list-group-item list-group-item-sm">
                  <input class="form-check-input" type="checkbox" value="" id="checkboxAcreditacion">
                  <label class="form-check-label" for="flexCheckDefault">
                    Acreditacion
                  </label>
                </li> <button id="btnDocsAprobados" onclick="guardarDocsAprobados(this.id)" type="button"
                  class="btn btn-primary btn-sm">Guardar</button>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
  </script>
  <script src="./js/pruebasrutas.js"></script>
</body>

</html>