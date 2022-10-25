<!DOCTYPE html>

<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <link rel="stylesheet" href="./Estilos/controlImagenes.css" />
    <script src="./js/jquery-3.6.1.js"></script>
</head>

<body class="p-2">
    Esto es una prueba con la ñ y los acentos ò
    <nav class="navbar bg-light p-3">
        <div class="container-fluid">
            <span class="navbar-brand mb-0 h1">
                Centro de control para usuarios
            </span>
        </div>
    </nav>
    <div class="row">
        <div class="col card text-center text-bg-info" style="height: 30rem">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor"
                class="bi bi-chat-left-dots" viewBox="0 0 16 16">
                <path
                    d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                <path
                    d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
            </svg>
            <div class="card-body">
                <h5 class="card-title">Mensajes</h5>
                <p class="card-text">Envia Mensajes si tienes alguna duda</p>
                <!-- Button trigger modal -->
                <button type="button" onclick="TablaMensajes()" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#modalMensajes">
                    Mensajes
                </button>
            </div>
        </div>
        <div class="col card text-center text-bg-success" style="width: 18rem">
            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor"
                class="bi bi-file-earmark-arrow-up" viewBox="0 0 16 16">
                <path
                    d="M8.5 11.5a.5.5 0 0 1-1 0V7.707L6.354 8.854a.5.5 0 1 1-.708-.708l2-2a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 7.707V11.5z" />
                <path
                    d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
            </svg>
            <div class="card-body">
                <h5 class="card-title">Subir documentos</h5>
                <p class="card-text">Sube tus documentos</p>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalDocumentos">
                    Documentos
                </button>
            </div>
        </div>
        <div class="col card text-center text-bg-primary" style="width: 18rem">
            <div class="card-body">
                <h5 class="card-title">Responder encuesta</h5>
                <p class="card-text">
                    Responde unas preguntas para ayudar a mejorar nuestra plataforma
                </p>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalEncuesta">
                    Encuesta
                </button>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade modal-lg" id="modalMensajes" tabindex="-1" aria-labelledby="modalMensajesLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="modalMensajesLabel">
                        Centro de mensajes
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="comentarios" class="form-label">
                                Escribe el mensaje que quieres enviar
                            </label>
                            <textarea type="text" class="form-control" id="comentarios" rows="3"
                                minlength="5"></textarea>
                        </div>
                        <label id="EnviarMensError"></label>
                        <button id="EnviarComentario" onclick="GuardarComent()" type="button" class="btn btn-success">
                            Enviar
                        </button>
                    </form>
                    <table id="DatosTabla"
                        class="table table-striped align-middle table-responsive table-hover col float-end text-center">
                        <thead>
                            <tr>
                                <th scope="col">Usuario</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Comentario</th>
                            </tr>
                        </thead>
                        <tbody id="Tablamensajes"></tbody>
                    </table>
                    <button id="exportarTabla" onclick="exportTableToExcel('DatosTabla', 'datosExportados')"
                        type="button" class="btn btn-primary">Exportar</button>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Cerrar
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade modal-lg" id="modalDocumentos" tabindex="-1" aria-labelledby="modalDocumentosLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="modalDocumentosLabel">
                        Documentos
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="accordion" id="accordionDocumentos">
                        <div class="accordion-item panelImagen">
                            <form class="formImagenes" enctype="multipart/form-data" method="post"
                                id="cargaIdentificacion" onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" value="Identificacion oficial"
                                        id="btnIdentificacion" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#identifiacion" aria-expanded="true"
                                        aria-controls="collapseOne">
                                        Identificacion oficial
                                    </button>
                                </h2>
                                <div id="identifiacion" class="accordion-collapse collapse"
                                    aria-labelledby="headingOne">
                                    <div id="imagenIdentificacion" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgIdentificacion" name="" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <!--aqui se guardan el id del cliente -->
                                                <input type="hidden" class="idsOcultos" name="fkImagenes"
                                                    id="cargaId" />
                                                <input type="hidden" name="documentoNombre">
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gIdentificacion" type="submit"
                                                    class="botonGuardar btn btn-primary col-2 btn-sm"
                                                    id="imgIdentificacion">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltIdentificacion">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameIdentificacion" src="" width="100%" height="500px"
                                frameborder="0"></iframe>
                            <img id="imgIdentificacionVer" src="" alt="" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaComprobante"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button value="Comprobante de domicilio" id="btnComprobante"
                                        class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#comprobante" aria-expanded="false" aria-controls="collapseTwo">
                                        Comprobante de domicilio
                                    </button>
                                </h2>
                                <div id="comprobante" class="accordion-collapse collapse" aria-labelledby="headingTwo">
                                    <div id="imagenComprobante" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgComprobante" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaC" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gComprobante" type="submit"
                                                    class="botonGuardar btn btn-primary col-2 btn-sm"
                                                    id="imgComprobante">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltComprobante">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameComprobante" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgComprobanteVer" class="img-fluid" src="" alt="" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaInfo"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Informacion adicional" id="btnInfo"
                                        class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#infoadicional" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        Informacion adicional
                                    </button>
                                </h2>
                                <div id="infoadicional" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree">
                                    <div id="imagenInfo" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgInfo" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaI" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gInfo" type="submit"
                                                    class="botonGuardar btn btn-primary col-2 btn-sm" id="imgInfo">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm" id="dltInfo">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameInfo" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgInfoVer" class="img-fluid" src="" alt="" onload="resizeImg(this, 200, 100)" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaFactura"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Factura del vehiculo" id="btnFactura"
                                        class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#factura" aria-expanded="false" aria-controls="collapseThree">
                                        Factura del vehiculo
                                    </button>
                                </h2>
                                <div id="factura" class="accordion-collapse collapse" aria-labelledby="headingThree">
                                    <div id="imagenFactura" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgFactura" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaF" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gFactura" type="submit"
                                                    class="botonGuardar btn btn-primry col-2 btn-sm" id="imgFactura">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltFactura">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameFactura" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgFacturaVer" class="img-fluid" src="" alt=""
                                onload="resizeImg(this, 200, 100)" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaTenencias"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Tenencias" id="btnTenencias" class="accordion-button collapsed"
                                        type="button" data-bs-toggle="collapse" data-bs-target="#tenencias"
                                        aria-expanded="false" aria-controls="collapseThree">
                                        Tenencias
                                    </button>
                                </h2>
                                <div id="tenencias" class="accordion-collapse collapse" aria-labelledby="headingThree">
                                    <div id="imagenTenencias" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgTenencias" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaT" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gTenencias" type="submit"
                                                    class="botonGuardar btn btn-primry col-2 btn-sm" id="imgTenencias">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltTenencias">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameTenencia" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgTenenciasVer" class="img-fluid" src="" alt=""
                                onload="resizeImg(this, 200, 100)" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaBaja"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Baja" id="btnBaja" class="accordion-button collapsed" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#baja" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        Baja
                                    </button>
                                </h2>
                                <div id="baja" class="accordion-collapse collapse" aria-labelledby="headingThree">
                                    <div id="imagenBaja" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgBaja" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaB" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gBaja" type="submit"
                                                    class="botonGuardar btn btn-primry col-2 btn-sm" id="imgBaja">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm" id="dltBaja">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameBaja" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgBajaVer" class="img-fluid" src="" alt="" onload="resizeImg(this, 200, 100)" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaEstado"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Estado de cuenta" id="btnEstado" class="accordion-button collapsed"
                                        type="button" data-bs-toggle="collapse" data-bs-target="#estadoCuenta"
                                        aria-expanded="false" aria-controls="collapseThree">
                                        Estado de cuenta
                                    </button>
                                </h2>
                                <div id="estadoCuenta" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree">
                                    <div id="imagenEstado" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgEstado" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaE" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gEstado" type="submit"
                                                    class="botonGuardar btn btn-primry col-2 btn-sm" id="imgEstado">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltEstado">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameEstado" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgEstadoVer" class="img-fluid" src="" alt="" onload="resizeImg(this, 200, 100)" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post" id="cargaDenuncia"
                                onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Denuncia" id="btnDenuncia" class="accordion-button collapsed"
                                        type="button" data-bs-toggle="collapse" data-bs-target="#denuncias"
                                        aria-expanded="false" aria-controls="collapseThree">
                                        Denuncia
                                    </button>
                                </h2>
                                <div id="denuncias" class="accordion-collapse collapse" aria-labelledby="headingThree">
                                    <div id="imagenDenuncia" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgDenuncia" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaD" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gDenuncia" type="submit"
                                                    class="botonGuardar btn btn-primry col-2 btn-sm" id="imgDenuncia">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltDenuncia">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameDenuncia" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgDenunciaVer" class="img-fluid" src="" alt=""
                                onload="resizeImg(this, 200, 100)" />
                        </div>
                        <div class="accordion-item">
                            <form class="formImagenes" enctype="multipart/form-data" method="post"
                                id="cargaAcreditacion" onsubmit="return userSubmit()">
                                <h2 class="accordion-header" id="headingThree">
                                    <button value="Acreditacion" id="btnAcreditacion" class="accordion-button collapsed"
                                        type="button" data-bs-toggle="collapse" data-bs-target="#acreditacion"
                                        aria-expanded="false" aria-controls="collapseThree">
                                        Acreditacion
                                    </button>
                                </h2>
                                <div id="acreditacion" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree">
                                    <div id="imagenAcreditacion" class="accordion-body">
                                        <div class="row">
                                            <div class="mb-0 col-10">
                                                <label for="imgAcreditacion" class="form-label">
                                                    Cargar documento
                                                </label>
                                                <input class="form-control" type="file" name="imagen" accept="image/*"
                                                    capture="camera" />
                                                <input type="hidden" class="idsOcultos" name="fkImagenes" id="cargaA" />
                                            </div>
                                            <div class="btn-group col-2" role="group">
                                                <button name="gAcreditacion" type="submit"
                                                    class="botonGuardar btn btn-primry col-2 btn-sm"
                                                    id="imgAcreditacion">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-cloud-arrow-up"
                                                        viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M7.646 5.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1-.708.708L8.5 6.707V10.5a.5.5 0 0 1-1 0V6.707L6.354 7.854a.5.5 0 1 1-.708-.708l2-2z" />
                                                        <path
                                                            d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383zm.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z" />
                                                    </svg>
                                                </button>
                                                <button type="button" class="btn btn-danger col-2 btn-sm"
                                                    id="dltAcreditacion">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                        fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                        <path
                                                            d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <iframe id="iFrameAcreditacion" src="" width="100%" height="500px" frameborder="0"></iframe>
                            <img id="imgAcreditacionVer" class="img-fluid" src="" alt=""
                                onload="resizeImg(this, 200, 100)" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Cerrar
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="modalEncuesta" tabindex="-1" aria-labelledby="modalEncuestaLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="modalEncuestaLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h3>Por favor, ayudanos a responde estas breves preguntas</h3>
                    <div class="container">
                        <p>¿Qué tan accesible fue la pagina?</p>
                        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                            <option selected>Selecciona...</option>
                            <option value="2">Muy buena</option>
                            <option value="1">Buena</option>
                            <option value="2">Regular</option>
                            <option value="3">mala</option>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <b style="display: none" id="Valor"><%= request.getParameter("id") %></b>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>
    <script src="./js/DatosUsuario.js"></script>
</body>

</html>