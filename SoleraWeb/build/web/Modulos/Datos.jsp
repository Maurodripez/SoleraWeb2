<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Datos</title>
        <script src="./js/datos.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
        <script src="../js/jquery-3.6.1.js"></script>
    </head>

    <body class="p-2">
        <%@page import="DAO.DiasEsperandoRespuesta" %>
        <% DiasEsperandoRespuesta deRespuesta=new DiasEsperandoRespuesta();%>
        <div class="accordion p-4" id="accordionPanelsStayOpenExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseOne">
                        Documentos Recibidos
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseOne" class="accordion-collapse
                     collapse show" aria-labelledby="panelsStayOpen-headingOne">
                    <div class="accordion-body">
                        <div class="row">
                            <div id="collapseOne" class="accordion-collapse
                                 collapse show col-3" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="card 1" style="width: 18rem;">
                                    <div class="card-body">
                                        <div class="row">
                                            <h5 class="card-title">
                                                <%=deRespuesta.Dias0a2()%>
                                            </h5>
                                        </div>
                                        <div class="row">
                                            <div class="col-8">
                                                <p class="card-text">
                                                    0-2 Dias
                                                </p>
                                            </div>
                                            <div class="col-4">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50"
                                                     fill="currentColor" class="bi bi-hand-thumbs-up"
                                                     viewBox="0 0 16 16">
                                                <path d="M8.864.046C7.908-.193
                                                      7.02.53 6.956
                                                      1.466c-.072 1.051-.23
                                                      2.016-.428
                                                      2.59-.125.36-.479
                                                      1.013-1.04
                                                      1.639-.557.623-1.282
                                                      1.178-2.131 1.41C2.685
                                                      7.288 2 7.87 2
                                                      8.72v4.001c0 .845.682
                                                      1.464 1.448 1.545
                                                      1.07.114 1.564.415
                                                      2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217
                                                      1.466.217h3.5c.937 0
                                                      1.599-.477
                                                      1.934-1.064a1.86 1.86 0
                                                      0 0
                                                      .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857
                                                      0-.288-.036-.585-.113-.856a2.144
                                                      2.144 0 0 0-.138-.362
                                                      1.9 1.9 0 0 0
                                                      .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84
                                                      9.84 0 0 0-.443.05 9.365
                                                      9.365 0 0
                                                      0-.062-4.509A1.38 1.38 0
                                                      0 0
                                                      9.125.111L8.864.046zM11.5
                                                      14.721H8c-.51
                                                      0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65
                                                      1.095-.3 1.977-.996
                                                      2.614-1.708.635-.71
                                                      1.064-1.475
                                                      1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34
                                                      8.34 0 0 1-.145
                                                      4.725.5.5 0 0 0
                                                      .595.644l.003-.001.014-.003.058-.014a8.908
                                                      8.908 0 0 1
                                                      1.036-.157c.663-.06
                                                      1.457-.054
                                                      2.11.164.175.058.45.3.57.65.107.308.087.67-.266
                                                      1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581
                                                      0
                                                      .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224
                                                      2.224 0 0
                                                      1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866
                                                      0 0
                                                      1-.121.416c-.165.288-.503.56-1.066.56z" />
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="badge text-bg-primary badge-lg">25% Urgencia</span>
                                </div>
                            </div>
                            <div id="collapseOne" class="accordion-collapse
                                 collapse show col-3" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="card 1" style="width: 18rem;">
                                    <div class="card-body">
                                        <div class="row">
                                            <h5 class="card-title">
                                                <%=deRespuesta.Dias3a5()%>
                                            </h5>
                                        </div>
                                        <div class="row">
                                            <div class="col-7">
                                                <p class="card-text">
                                                    3-5 Dias
                                                </p>
                                            </div>
                                            <div class="col-5">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                                     fill="currentColor" class="bi
                                                     bi-hand-thumbs-up" viewBox="0 0 16 16">
                                                <path d="M8.864.046C7.908-.193
                                                      7.02.53 6.956
                                                      1.466c-.072
                                                      1.051-.23 2.016-.428
                                                      2.59-.125.36-.479
                                                      1.013-1.04
                                                      1.639-.557.623-1.282
                                                      1.178-2.131
                                                      1.41C2.685 7.288 2
                                                      7.87 2 8.72v4.001c0
                                                      .845.682 1.464 1.448
                                                      1.545 1.07.114
                                                      1.564.415
                                                      2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217
                                                      1.466.217h3.5c.937 0
                                                      1.599-.477
                                                      1.934-1.064a1.86
                                                      1.86 0 0 0
                                                      .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857
                                                      0-.288-.036-.585-.113-.856a2.144
                                                      2.144 0 0
                                                      0-.138-.362 1.9 1.9
                                                      0 0 0
                                                      .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84
                                                      9.84 0 0 0-.443.05
                                                      9.365 9.365 0 0
                                                      0-.062-4.509A1.38
                                                      1.38 0 0 0
                                                      9.125.111L8.864.046zM11.5
                                                      14.721H8c-.51
                                                      0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65
                                                      1.095-.3 1.977-.996
                                                      2.614-1.708.635-.71
                                                      1.064-1.475
                                                      1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34
                                                      8.34 0 0 1-.145
                                                      4.725.5.5 0 0 0
                                                      .595.644l.003-.001.014-.003.058-.014a8.908
                                                      8.908 0 0 1
                                                      1.036-.157c.663-.06
                                                      1.457-.054
                                                      2.11.164.175.058.45.3.57.65.107.308.087.67-.266
                                                      1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581
                                                      0
                                                      .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224
                                                      2.224 0 0
                                                      1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866
                                                      0 0
                                                      1-.121.416c-.165.288-.503.56-1.066.56z" />
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="badge text-bg-primary badge-lg">50% Urgencia</span>
                                </div>
                            </div>
                            <div id="collapseOne" class="accordion-collapse collapse show
                                 col-3" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="card 1" style="width:
                                     18rem;">
                                    <div class="card-body">
                                        <div class="row">
                                            <h5 class="card-title">
                                                <%=deRespuesta.Dias6a14()%>
                                            </h5>
                                        </div>
                                        <div class="row">
                                            <div class="col-7">
                                                <p class="card-text">
                                                    6-14 Dias
                                                </p>
                                            </div>
                                            <div class="col-5">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi
                                                     bi-hand-thumbs-down" viewBox="0 0 16 16">
                                                <path d="M8.864
                                                      15.674c-.956.24-1.843-.484-1.908-1.42-.072-1.05-.23-2.015-.428-2.59-.125-.36-.479-1.012-1.04-1.638-.557-.624-1.282-1.179-2.131-1.41C2.685
                                                      8.432 2 7.85 2
                                                      7V3c0-.845.682-1.464
                                                      1.448-1.546
                                                      1.07-.113
                                                      1.564-.415
                                                      2.068-.723l.048-.029c.272-.166.578-.349.97-.484C6.931.08
                                                      7.395 0 8
                                                      0h3.5c.937 0
                                                      1.599.478 1.934
                                                      1.064.164.287.254.607.254.913
                                                      0
                                                      .152-.023.312-.077.464.201.262.38.577.488.9.11.33.172.762.004
                                                      1.15.069.13.12.268.159.403.077.27.113.567.113.856
                                                      0
                                                      .289-.036.586-.113.856-.035.12-.08.244-.138.363.394.571.418
                                                      1.2.234
                                                      1.733-.206.592-.682
                                                      1.1-1.2
                                                      1.272-.847.283-1.803.276-2.516.211a9.877
                                                      9.877 0 0
                                                      1-.443-.05 9.364
                                                      9.364 0 0 1-.062
                                                      4.51c-.138.508-.55.848-1.012.964l-.261.065zM11.5
                                                      1H8c-.51
                                                      0-.863.068-1.14.163-.281.097-.506.229-.776.393l-.04.025c-.555.338-1.198.73-2.49.868-.333.035-.554.29-.554.55V7c0
                                                      .255.226.543.62.65
                                                      1.095.3
                                                      1.977.997 2.614
                                                      1.709.635.71
                                                      1.064 1.475
                                                      1.238
                                                      1.977.243.7.407
                                                      1.768.482
                                                      2.85.025.362.36.595.667.518l.262-.065c.16-.04.258-.144.288-.255a8.34
                                                      8.34 0 0
                                                      0-.145-4.726.5.5
                                                      0 0 1
                                                      .595-.643h.003l.014.004.058.013a8.912
                                                      8.912 0 0 0
                                                      1.036.157c.663.06
                                                      1.457.054
                                                      2.11-.163.175-.059.45-.301.57-.651.107-.308.087-.67-.266-1.021L12.793
                                                      7l.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581
                                                      0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315l-.353-.354.353-.354c.047-.047.109-.176.005-.488a2.224
                                                      2.224 0 0
                                                      0-.505-.804l-.353-.354.353-.354c.006-.005.041-.05.041-.17a.866.866
                                                      0 0
                                                      0-.121-.415C12.4
                                                      1.272 12.063 1
                                                      11.5 1z" />
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="badge text-bg-primary badge-lg">75% Urgencia</span>
                                </div>
                            </div>
                            <div id="collapseOne" class="accordion-collapse collapse
                                 show col-3" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="card 1" style="width:
                                     18rem;">
                                    <div class="card-body">
                                        <div class="row">
                                            <h5 class="card-title">
                                                <%=deRespuesta.DiasMas15()%>
                                            </h5>
                                        </div>
                                        <div class="row">
                                            <div class="col-7">
                                                <p class="card-text">
                                                    Mas de 15 Dias
                                                </p>
                                            </div>
                                            <div class="col-5">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                                     fill="currentColor" class="bi
                                                     bi-hand-thumbs-up" viewBox="0 0 16
                                                     16">
                                                <path d="M8.864.046C7.908-.193
                                                      7.02.53
                                                      6.956
                                                      1.466c-.072
                                                      1.051-.23
                                                      2.016-.428
                                                      2.59-.125.36-.479
                                                      1.013-1.04
                                                      1.639-.557.623-1.282
                                                      1.178-2.131
                                                      1.41C2.685
                                                      7.288 2 7.87
                                                      2
                                                      8.72v4.001c0
                                                      .845.682
                                                      1.464 1.448
                                                      1.545
                                                      1.07.114
                                                      1.564.415
                                                      2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217
                                                      1.466.217h3.5c.937
                                                      0 1.599-.477
                                                      1.934-1.064a1.86
                                                      1.86 0 0 0
                                                      .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857
                                                      0-.288-.036-.585-.113-.856a2.144
                                                      2.144 0 0
                                                      0-.138-.362
                                                      1.9 1.9 0 0
                                                      0
                                                      .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84
                                                      9.84 0 0
                                                      0-.443.05
                                                      9.365 9.365
                                                      0 0
                                                      0-.062-4.509A1.38
                                                      1.38 0 0 0
                                                      9.125.111L8.864.046zM11.5
                                                      14.721H8c-.51
                                                      0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65
                                                      1.095-.3
                                                      1.977-.996
                                                      2.614-1.708.635-.71
                                                      1.064-1.475
                                                      1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34
                                                      8.34 0 0
                                                      1-.145
                                                      4.725.5.5 0
                                                      0 0
                                                      .595.644l.003-.001.014-.003.058-.014a8.908
                                                      8.908 0 0 1
                                                      1.036-.157c.663-.06
                                                      1.457-.054
                                                      2.11.164.175.058.45.3.57.65.107.308.087.67-.266
                                                      1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581
                                                      0
                                                      .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224
                                                      2.224 0 0
                                                      1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866
                                                      0 0
                                                      1-.121.416c-.165.288-.503.56-1.066.56z" />
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="badge text-bg-primary badge-lg">100% Urgencia</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseTwo">
                        Formulario de consulta
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                     aria-labelledby="panelsStayOpen-headingTwo">
                    <div class="accordion-body">
                        <!--inicia el despliegue de opciones-->
                        <div class="row 1">
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-calendar-check p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                        <path
                                            d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                        </svg>
                                        Fecha Carga
                                    </label>
                                    <select class="form-select" id="txtFechaCarga">
                                        <option selected>Selecciona...</option>
                                        <option value="Hoy">Hoy</option>
                                        <option value="Ayer">Ayer</option>
                                        <option value="Ultimos 7 Dias">Ultimos 7 Dias</option>
                                        <option value="Ultimos 30 Dias">Ultimos 30 Dias</option>
                                        <option value="Mes Anterior">Mes Anterior</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-plus-square-fill p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z" />
                                        </svg>
                                        Estacion
                                    </label>
                                    <select class="form-select" id="txtEstacion">
                                        <option selected>Selecciona...</option>
                                        <option value="Cancelado">Cancelado</option>
                                        <option value="Marcacion">Marcacion</option>
                                        <option value="Nuevo">Nuevo</option>
                                        <option value="Proceso">Proceso</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-plus-square-fill p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z" />
                                        </svg>
                                        Estatus
                                    </label>
                                    <select class="form-select" id="txtEstatus">
                                        <option selected>Selecciona...</option>
                                        <option value="Con contacto sin documentos">Con contacto sin documentos
                                        </option>
                                        <option value="Datos incorrectos">Datos incorrectos</option>
                                        <option value="De 1 a 3 documentos">De 1 a 3 documentos</option>
                                        <option value="De 4 a 6 documentos">De 4 a 6 documentos</option>
                                        <option value="De 7 a 10 documentos">De 7 a 10 documentos</option>
                                        <option value="Nuevo2">Nuevo</option>
                                        <option value="Sin Contacto">Sin Contacto</option>
                                        <option value="Sin contacto en 30 dia2">Sin contacto en 30 dia</option>
                                        <option value="Total de documentos">Total de documentos</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-plus-square-fill p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z" />
                                        </svg>
                                        Subestatus
                                    </label>
                                    <select class="form-select" id="txtSubEstatus">
                                        <option selected>Selecciona...</option>
                                        <option value="Con contacto. sin documentos, en seguimiento">Con contacto.
                                            sin documentos, en seguimiento</option>
                                        <option value="Datos incorrectos, Cancelado">Datos incorrectos, Cancelado
                                        </option>
                                        <option value="De 1 a 3 documento, en seguimiento">De 1 a 3 documentos, en
                                            seguimiento</option>
                                        <option value="De 4 a 6 documentos en seguimiento">De 4 a 6 documentos en
                                            seguimiento</option>
                                        <option value="De 7 a 10 documentos en seguimiento">De 7 a 10 documentos en
                                            seguimiento</option>
                                        <option value="Nuevo2, activacion por proceso normal">Nuevo, activacion por
                                            proceso normal</option>
                                        <option value="Sin Contacto, en seguimiento">Sin Contacto, en seguimiento
                                        </option>
                                        <option value="Sin contacto en 30 dias, cancelafo">Sin contacto en 30 dia,
                                            cancelado</option>
                                        <option value="Total de documentos, terminado">Total de documentos,
                                            terminado</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row 2">
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-calendar-check p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                        <path
                                            d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                        </svg>
                                        Fecha seguimiento
                                    </label>
                                    <select class="form-select" id="txtFechaSeguimiento">
                                        <option selected>Selecciona...</option>
                                        <option value="Hoy">Hoy</option>
                                        <option value="Ayer">Ayer</option>
                                        <option value="Ultimos 7 Dias">Ultimos 7 Dias</option>
                                        <option value="Ultimos 30 Dias">Ultimos 30 Dias</option>
                                        <option value="Mes Anterior">Mes Anterior</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                             stroke-linecap="round" stroke-linejoin="round"
                                             class="feather feather-globe p-1">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <line x1="2" y1="12" x2="22" y2="12"></line>
                                        <path
                                            d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z">
                                        </path>
                                        </svg>
                                        Region
                                    </label>
                                    <select class="form-select" id="txtRegion">
                                        <option selected>
                                            Todos-Ninguna
                                        </option>
                                        <option
                                            value="Layout ZG A: Guadalajara, Colima, Nayarit">
                                            Layout ZG A: Guadalajara, Colima,
                                            Nayarit
                                        </option>
                                        <option
                                            value="Layout ZG B: Acapulco, Toluca. Pachuca, Cuernavaca">
                                            Layout ZG B: Acapulco, Toluca.
                                            Pachuca, Cuernavaca
                                        </option>
                                        <option
                                            value="Layout ZG Layout ZG C: Puebla, Queretaro, Tlaxcala">
                                            Layout ZG C: Puebla, Queretaro,
                                            Tlaxcala
                                        </option>
                                        <option
                                            value="Layout ZG D: Merida, Cancun, Tuxtla, Villahermosa, Campeche">
                                            Layout ZG D: Merida,
                                            Cancun, Tuxtla,
                                            Villahermosa,
                                            Campeche</option>
                                        <option
                                            value="Layout ZG E: Leon, San Luis Potosi, Aguascalientes, Morelia, Tamaulipas, Zacatecas">
                                            Layout ZG E: Leon, San Luis
                                            Potosi,
                                            Aguascalientes, Morelia,
                                            Tamaulipas,
                                            Zacatecas</option>
                                        <option
                                            value="Layout ZG F: CDMX, Estado de Mexico">
                                            Layout ZG F: CDMX, Estado de
                                            Mexico
                                        </option>
                                        <option
                                            value="Layout ZG G: Coatzacualcos, Oaxaca, Veracruz, Xalapa">
                                            Layout ZG G: Coatzacualcos,
                                            Oaxaca, Veracruz, Xalapa
                                        </option>
                                        <option
                                            value="Layout ZG H: Monterrey">H:
                                            Layout ZG Monterrey</option>
                                        <option
                                            value="Layout ZG I: Chihuahua, Cd. Juarez, Reynosa, Saltillo, Tampico, Torreon, Nuevo Laredo, Durango">
                                            Layout ZG I: Chihuahua, Cd.
                                            Juarez,
                                            Reynosa, Saltillo,
                                            Tampico,
                                            Torreon,
                                            Nuevo Laredo, Durango
                                        </option>
                                        <option
                                            value="Layout ZG J: Mexicali, Cd. Obregon, Culiacan, Hermosillo, Los Mochis, Tijuana Baja California, Baja California Sur">
                                            Layout ZG J: Mexicali, Cd.
                                            Obregon,
                                            Culiacan, Hermosillo,
                                            Los
                                            Mochis,
                                            Tijuana Baja California,
                                            Baja
                                            California Sur</option>
                                        <option
                                            value="Todos/Ninguno">
                                            Todos/Ninguno</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-plus-square-fill p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z" />
                                        </svg>
                                        Estado
                                    </label>
                                    <select id="txtEstado" class="form-select" name="txtEstado" required>
                                        <option selected>
                                            Selecciona...
                                        </option>
                                        <option value="Aguascalientes">
                                            Aguascalientes</option>
                                        <option value="Baja California">
                                            Baja
                                            California</option>
                                        <option value="Baja California Sur">
                                            Baja California Sur
                                        </option>
                                        <option value="Campeche">
                                            Campeche
                                        </option>
                                        <option value="Chiapas">
                                            Chiapas
                                        </option>
                                        <option value="Chiahuahua">
                                            Chiahuahua</option>
                                        <option value="Ciudad de Mexico">
                                            Ciudad de Mexico
                                        </option>
                                        <option value="Coahuila de Zaragoza">
                                            Coahuila de Zaragoza
                                        </option>
                                        <option value="Colima">
                                            Colima
                                        </option>
                                        <option value="Durango">
                                            Durango
                                        </option>
                                        <option value="Guanajato">
                                            Guanajato
                                        </option>
                                        <option value="Guerrero">
                                            Guerrero
                                        </option>
                                        <option value="Hidalgo">
                                            Hidalgo
                                        </option>
                                        <option value="Jalisco">
                                            Jalisco
                                        </option>
                                        <option value="Estado de Mexico">
                                            Estado de Mexico
                                        </option>
                                        <option value="Michoacan de Ocampo">
                                            Michoacan de Ocampo
                                        </option>
                                        <option value="Morelos">
                                            Morelos
                                        </option>
                                        <option value="Nayarit">
                                            Nayarit
                                        </option>
                                        <option value="Nuevo Leon">
                                            Nuevo
                                            Leon</option>
                                        <option value="Oaxaca">
                                            Oaxaca
                                        </option>
                                        <option value="Puebla">
                                            Puebla
                                        </option>
                                        <option value="Queretaro">
                                            Queretaro
                                        </option>
                                        <option value="Quintana Roo">
                                            Quintana Roo</option>
                                        <option value="San Luis de Potosi<">
                                            San Luis de Potosi
                                        </option>
                                        <option value="Sinaloa">
                                            Sinaloa
                                        </option>
                                        <option value="Sonora">
                                            Sonora
                                        </option>
                                        <option value="Tabasco">
                                            Tabasco
                                        </option>
                                        <option value="Tamaulipas">
                                            Tamaulipas</option>
                                        <option value="Tlaxcala">
                                            Tlaxcala
                                        </option>
                                        <option value="Veracruz">
                                            Veracruz
                                        </option>
                                        <option value="Yucatan">
                                            Yucatan
                                        </option>
                                        <option value="Zacatecas">
                                            Zacatecas
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group mb-3">
                                    <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                                             fill="currentColor" class="bi bi-plus-square-fill p-1"
                                             viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z" />
                                        </svg>
                                        Cobertura
                                    </label>
                                    <select class="form-select" id="txtCobertura">
                                        <option selected>Selecciona...</option>
                                        <option value="DM">DM</option>
                                        <option value="RT">RT</option>
                                        <option value="RC">RC</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group" role="group">
                            <button id="btnBuscar" onclick="buscarDatos()" type="button"
                                    class="btn btn-primary">Buscar</button>
                            <button type="button" class="btn btn-primary">Limpiar</button>
                            <button type="button" class="btn btn-primary">Exportar</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <!--inicio de la tabla de resultados-->
                <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                    <button class="accordion-button
                            collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseThree">
                        Tabla de resultados
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                     aria-labelledby="panelsStayOpen-headingThree">
                    <div class="accordion-body">
                        <!--inicio de acordeon para mostrar tabla de resutlados-->
                        <div class="row">
                            <div class="botonRefrescar
                                 col-1">
                                <button class="btn
                                        btn-primary" type="submit">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                         fill="currentColor" class="bi
                                         bi-arrow-repeat" viewBox="0 0 16 16">
                                    <path d="M11.534
                                          7h3.932a.25.25 0
                                          0 1
                                          .192.41l-1.966
                                          2.36a.25.25 0 0
                                          1-.384
                                          0l-1.966-2.36a.25.25
                                          0 0 1
                                          .192-.41zm-11
                                          2h3.932a.25.25 0
                                          0 0
                                          .192-.41L2.692
                                          6.23a.25.25 0 0
                                          0-.384 0L.342
                                          8.59A.25.25 0 0
                                          0 .534 9z" />
                                    <path fill-rule="evenodd" d="M8
                                          3c-1.552
                                          0-2.94.707-3.857
                                          1.818a.5.5 0
                                          1
                                          1-.771-.636A6.002
                                          6.002 0 0 1
                                          13.917
                                          7H12.9A5.002
                                          5.002 0 0 0
                                          8 3zM3.1
                                          9a5.002
                                          5.002 0 0 0
                                          8.757
                                          2.182.5.5 0
                                          1 1
                                          .771.636A6.002
                                          6.002 0 0 1
                                          2.083
                                          9H3.1z" />
                                    </svg>
                                </button>
                            </div>
                            <div class="botoncantidadResultados
                                 col-1">
                                <select class="form-select" aria-label="Default
                                        select example">
                                    <option selected>Resultados</option>
                                    <option value="1">5</option>
                                    <option value="2">10</option>
                                    <option value="3">20</option>
                                </select>
                            </div>
                            <div class="col" name="SearchButtonGeneral">
                                <!--se implementa el boton busqueda general-->
                                <form class="form-search
                                      float-end">
                                    <div class="input-group">
                                        <input class="form-control" maxlength="128" placeholder="Buscar" size="35"
                                               type="text">
                                        <span class="input-group-btn">
                                            <button class="btn
                                                    btn-primary">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi
                                                     bi-search" viewBox="0
                                                     0
                                                     16
                                                     16">
                                                <path d="M11.742
                                                      10.344a6.5
                                                      6.5
                                                      0
                                                      1
                                                      0-1.397
                                                      1.398h-.001c.03.04.062.078.098.115l3.85
                                                      3.85a1
                                                      1
                                                      0
                                                      0
                                                      0
                                                      1.415-1.414l-3.85-3.85a1.007
                                                      1.007
                                                      0
                                                      0
                                                      0-.115-.1zM12
                                                      6.5a5.5
                                                      5.5
                                                      0
                                                      1
                                                      1-11
                                                      0
                                                      5.5
                                                      5.5
                                                      0
                                                      0
                                                      1
                                                      11
                                                      0z" />
                                                </svg>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <table class="table
                               table-hover col
                               float-end">
                            <thead>
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">
                                        Numero
                                        de
                                        registro
                                    </th>
                                    <th scope="col">
                                        Siniestro
                                    </th>
                                    <th scope="col">
                                        Poliza
                                    </th>
                                    <th scope="col">Siniestro</th>
                                    <th scope="col">
                                        Marca
                                    </th>
                                    <th scope="col">Tipo</th>
                                    <th scope="col">Modelo</th>
                                    <th scope="col">
                                        Numero de Serie
                                    </th>
                                    <th scope="col">
                                        Fecha carga
                                    </th>
                                    <th scope="col">
                                        Estacion
                                    </th>
                                    <th scope="col">
                                        Estatus
                                    </th>
                                    <th scope="col">
                                        SubEstatus
                                    </th>
                                    <th scope="col">
                                        % de documentos
                                    </th>
                                    <th scope="col">
                                        % total
                                    </th>
                                    <th scope="col">
                                        Estado
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                            <div class="row">
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div class="col" name="SearchButtonGeneral">
                                        <!--se implementa el boton busqueda general-->
                                        <form class="form-search
                                              float-end">
                                            <div class="input-group">
                                                <input class="form-control" maxlength="128"
                                                       placeholder="Buscar" size="15" type="text">
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                
                            </div>
                            </tr>
                            <tr>
                                <th scope="col">
                                    <button type="button" class="btn
                                            btn-outline-primary
                                            btn-xs" disabled>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi
                                             bi-pencil-square" viewBox="0
                                             0
                                             16
                                             16">
                                        <path d="M15.502
                                              1.94a.5.5
                                              0
                                              0
                                              1
                                              0
                                              .706L14.459
                                              3.69l-2-2L13.502.646a.5.5
                                              0
                                              0
                                              1
                                              .707
                                              0l1.293
                                              1.293zm-1.75
                                              2.456-2-2L4.939
                                              9.21a.5.5
                                              0
                                              0
                                              0-.121.196l-.805
                                              2.414a.25.25
                                              0
                                              0
                                              0
                                              .316.316l2.414-.805a.5.5
                                              0
                                              0
                                              0
                                              .196-.12l6.813-6.814z" />
                                        <path fill-rule="evenodd" d="M1
                                              13.5A1.5
                                              1.5
                                              0
                                              0
                                              0
                                              2.5
                                              15h11a1.5
                                              1.5
                                              0
                                              0
                                              0
                                              1.5-1.5v-6a.5.5
                                              0
                                              0
                                              0-1
                                              0v6a.5.5
                                              0
                                              0
                                              1-.5.5h-11a.5.5
                                              0
                                              0
                                              1-.5-.5v-11a.5.5
                                              0
                                              0
                                              1
                                              .5-.5H9a.5.5
                                              0
                                              0
                                              0
                                              0-1H2.5A1.5
                                              1.5
                                              0
                                              0
                                              0
                                              1
                                              2.5v11z" />
                                        </svg>
                                    </button>
                                </th>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td colspan="2">
                                    Larry
                                    the
                                    Bird
                                </td>
                                <td>@twitter</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="row">
                            <nav aria-label="Page
                                 navigation
                                 example">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Anterior</span>
                                        </a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Siguiente</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button onclick="validarUsuario()">
            aprietame
        </button>
    </body>

</html>