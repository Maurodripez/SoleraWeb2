<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <script src="../js/jquery-3.6.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Estilos/reporte.css" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <link rel="stylesheet" href="./css/graficas.css">
    <script src="../js/jquery-3.6.1.js"></script>
    <script src="../js/jquery.dataTables.min.js"></script>
    <script src="../js/dataTables.buttons.min.js"></script>
    <script src="../js/jszip.min.js"></script>
    <script src="../js/buttons.html5.min.js"></script>
    <script src="../js/buttons.print.min.js"></script>
    <link rel="stylesheet" href="../js/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../js/buttons.dataTables.min.css">
    <script src="./js/reporte.js"></script>

    <title>Document</title>
</head>

<body>
    <div class="row">
        <div id="navPrincipal" class="col p-3">
            <nav class="navbar bg-light">
                <div class="container-fluid">
                    <span class="navbar-brand mb-0 h1">Analisis estadistico de movimientos Seguros SOLERA</span>
                </div>
            </nav>
        </div>
        <div class="col-2 pt-3">
            <form>
                <!-- Button trigger modal -->
                <button id="btnMovimientos" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#movimientosUsuarios">
                    Movimientos
                </button>

                <!-- Modal -->
                <div class="modal fade" id="movimientosUsuarios" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <table id="example" class="table table-responsive display nowrap" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011-04-25</td>
                                            <td>$320,800</td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011-07-25</td>
                                            <td>$170,750</td>
                                        </tr>
                                        <tr>
                                            <td>Ashton Cox</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009-01-12</td>
                                            <td>$86,000</td>
                                        </tr>
                                        <tr>
                                            <td>Cedric Kelly</td>
                                            <td>Senior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2012-03-29</td>
                                            <td>$433,060</td>
                                        </tr>
                                        <tr>
                                            <td>Airi Satou</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008-11-28</td>
                                            <td>$162,700</td>
                                        </tr>
                                        <tr>
                                            <td>Brielle Williamson</td>
                                            <td>Integration Specialist</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2012-12-02</td>
                                            <td>$372,000</td>
                                        </tr>
                                        <tr>
                                            <td>Herrod Chandler</td>
                                            <td>Sales Assistant</td>
                                            <td>San Francisco</td>
                                            <td>59</td>
                                            <td>2012-08-06</td>
                                            <td>$137,500</td>
                                        </tr>
                                        <tr>
                                            <td>Rhona Davidson</td>
                                            <td>Integration Specialist</td>
                                            <td>Tokyo</td>
                                            <td>55</td>
                                            <td>2010-10-14</td>
                                            <td>$327,900</td>
                                        </tr>
                                        <tr>
                                            <td>Colleen Hurst</td>
                                            <td>Javascript Developer</td>
                                            <td>San Francisco</td>
                                            <td>39</td>
                                            <td>2009-09-15</td>
                                            <td>$205,500</td>
                                        </tr>
                                        <tr>
                                            <td>Sonya Frost</td>
                                            <td>Software Engineer</td>
                                            <td>Edinburgh</td>
                                            <td>23</td>
                                            <td>2008-12-13</td>
                                            <td>$103,600</td>
                                        </tr>
                                        <tr>
                                            <td>Jena Gaines</td>
                                            <td>Office Manager</td>
                                            <td>London</td>
                                            <td>30</td>
                                            <td>2008-12-19</td>
                                            <td>$90,560</td>
                                        </tr>
                                        <tr>
                                            <td>Quinn Flynn</td>
                                            <td>Support Lead</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2013-03-03</td>
                                            <td>$342,000</td>
                                        </tr>
                                        <tr>
                                            <td>Charde Marshall</td>
                                            <td>Regional Director</td>
                                            <td>San Francisco</td>
                                            <td>36</td>
                                            <td>2008-10-16</td>
                                            <td>$470,600</td>
                                        </tr>
                                        <tr>
                                            <td>Haley Kennedy</td>
                                            <td>Senior Marketing Designer</td>
                                            <td>London</td>
                                            <td>43</td>
                                            <td>2012-12-18</td>
                                            <td>$313,500</td>
                                        </tr>
                                        <tr>
                                            <td>Tatyana Fitzpatrick</td>
                                            <td>Regional Director</td>
                                            <td>London</td>
                                            <td>19</td>
                                            <td>2010-03-17</td>
                                            <td>$385,750</td>
                                        </tr>
                                        <tr>
                                            <td>Michael Silva</td>
                                            <td>Marketing Designer</td>
                                            <td>London</td>
                                            <td>66</td>
                                            <td>2012-11-27</td>
                                            <td>$198,500</td>
                                        </tr>
                                        <tr>
                                            <td>Paul Byrd</td>
                                            <td>Chief Financial Officer (CFO)</td>
                                            <td>New York</td>
                                            <td>64</td>
                                            <td>2010-06-09</td>
                                            <td>$725,000</td>
                                        </tr>
                                        <tr>
                                            <td>Gloria Little</td>
                                            <td>Systems Administrator</td>
                                            <td>New York</td>
                                            <td>59</td>
                                            <td>2009-04-10</td>
                                            <td>$237,500</td>
                                        </tr>
                                        <tr>
                                            <td>Bradley Greer</td>
                                            <td>Software Engineer</td>
                                            <td>London</td>
                                            <td>41</td>
                                            <td>2012-10-13</td>
                                            <td>$132,000</td>
                                        </tr>
                                        <tr>
                                            <td>Dai Rios</td>
                                            <td>Personnel Lead</td>
                                            <td>Edinburgh</td>
                                            <td>35</td>
                                            <td>2012-09-26</td>
                                            <td>$217,500</td>
                                        </tr>
                                        <tr>
                                            <td>Jenette Caldwell</td>
                                            <td>Development Lead</td>
                                            <td>New York</td>
                                            <td>30</td>
                                            <td>2011-09-03</td>
                                            <td>$345,000</td>
                                        </tr>
                                        <tr>
                                            <td>Yuri Berry</td>
                                            <td>Chief Marketing Officer (CMO)</td>
                                            <td>New York</td>
                                            <td>40</td>
                                            <td>2009-06-25</td>
                                            <td>$675,000</td>
                                        </tr>
                                        <tr>
                                            <td>Caesar Vance</td>
                                            <td>Pre-Sales Support</td>
                                            <td>New York</td>
                                            <td>21</td>
                                            <td>2011-12-12</td>
                                            <td>$106,450</td>
                                        </tr>
                                        <tr>
                                            <td>Doris Wilder</td>
                                            <td>Sales Assistant</td>
                                            <td>Sydney</td>
                                            <td>23</td>
                                            <td>2010-09-20</td>
                                            <td>$85,600</td>
                                        </tr>
                                        <tr>
                                            <td>Angelica Ramos</td>
                                            <td>Chief Executive Officer (CEO)</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2009-10-09</td>
                                            <td>$1,200,000</td>
                                        </tr>
                                        <tr>
                                            <td>Gavin Joyce</td>
                                            <td>Developer</td>
                                            <td>Edinburgh</td>
                                            <td>42</td>
                                            <td>2010-12-22</td>
                                            <td>$92,575</td>
                                        </tr>
                                        <tr>
                                            <td>Jennifer Chang</td>
                                            <td>Regional Director</td>
                                            <td>Singapore</td>
                                            <td>28</td>
                                            <td>2010-11-14</td>
                                            <td>$357,650</td>
                                        </tr>
                                        <tr>
                                            <td>Brenden Wagner</td>
                                            <td>Software Engineer</td>
                                            <td>San Francisco</td>
                                            <td>28</td>
                                            <td>2011-06-07</td>
                                            <td>$206,850</td>
                                        </tr>
                                        <tr>
                                            <td>Fiona Green</td>
                                            <td>Chief Operating Officer (COO)</td>
                                            <td>San Francisco</td>
                                            <td>48</td>
                                            <td>2010-03-11</td>
                                            <td>$850,000</td>
                                        </tr>
                                        <tr>
                                            <td>Shou Itou</td>
                                            <td>Regional Marketing</td>
                                            <td>Tokyo</td>
                                            <td>20</td>
                                            <td>2011-08-14</td>
                                            <td>$163,000</td>
                                        </tr>
                                        <tr>
                                            <td>Michelle House</td>
                                            <td>Integration Specialist</td>
                                            <td>Sydney</td>
                                            <td>37</td>
                                            <td>2011-06-02</td>
                                            <td>$95,400</td>
                                        </tr>
                                        <tr>
                                            <td>Suki Burks</td>
                                            <td>Developer</td>
                                            <td>London</td>
                                            <td>53</td>
                                            <td>2009-10-22</td>
                                            <td>$114,500</td>
                                        </tr>
                                        <tr>
                                            <td>Prescott Bartlett</td>
                                            <td>Technical Author</td>
                                            <td>London</td>
                                            <td>27</td>
                                            <td>2011-05-07</td>
                                            <td>$145,000</td>
                                        </tr>
                                        <tr>
                                            <td>Gavin Cortez</td>
                                            <td>Team Leader</td>
                                            <td>San Francisco</td>
                                            <td>22</td>
                                            <td>2008-10-26</td>
                                            <td>$235,500</td>
                                        </tr>
                                        <tr>
                                            <td>Martena Mccray</td>
                                            <td>Post-Sales support</td>
                                            <td>Edinburgh</td>
                                            <td>46</td>
                                            <td>2011-03-09</td>
                                            <td>$324,050</td>
                                        </tr>
                                        <tr>
                                            <td>Unity Butler</td>
                                            <td>Marketing Designer</td>
                                            <td>San Francisco</td>
                                            <td>47</td>
                                            <td>2009-12-09</td>
                                            <td>$85,675</td>
                                        </tr>
                                        <tr>
                                            <td>Howard Hatfield</td>
                                            <td>Office Manager</td>
                                            <td>San Francisco</td>
                                            <td>51</td>
                                            <td>2008-12-16</td>
                                            <td>$164,500</td>
                                        </tr>
                                        <tr>
                                            <td>Hope Fuentes</td>
                                            <td>Secretary</td>
                                            <td>San Francisco</td>
                                            <td>41</td>
                                            <td>2010-02-12</td>
                                            <td>$109,850</td>
                                        </tr>
                                        <tr>
                                            <td>Vivian Harrell</td>
                                            <td>Financial Controller</td>
                                            <td>San Francisco</td>
                                            <td>62</td>
                                            <td>2009-02-14</td>
                                            <td>$452,500</td>
                                        </tr>
                                        <tr>
                                            <td>Timothy Mooney</td>
                                            <td>Office Manager</td>
                                            <td>London</td>
                                            <td>37</td>
                                            <td>2008-12-11</td>
                                            <td>$136,200</td>
                                        </tr>
                                        <tr>
                                            <td>Jackson Bradshaw</td>
                                            <td>Director</td>
                                            <td>New York</td>
                                            <td>65</td>
                                            <td>2008-09-26</td>
                                            <td>$645,750</td>
                                        </tr>
                                        <tr>
                                            <td>Olivia Liang</td>
                                            <td>Support Engineer</td>
                                            <td>Singapore</td>
                                            <td>64</td>
                                            <td>2011-02-03</td>
                                            <td>$234,500</td>
                                        </tr>
                                        <tr>
                                            <td>Bruno Nash</td>
                                            <td>Software Engineer</td>
                                            <td>London</td>
                                            <td>38</td>
                                            <td>2011-05-03</td>
                                            <td>$163,500</td>
                                        </tr>
                                        <tr>
                                            <td>Sakura Yamamoto</td>
                                            <td>Support Engineer</td>
                                            <td>Tokyo</td>
                                            <td>37</td>
                                            <td>2009-08-19</td>
                                            <td>$139,575</td>
                                        </tr>
                                        <tr>
                                            <td>Thor Walton</td>
                                            <td>Developer</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2013-08-11</td>
                                            <td>$98,540</td>
                                        </tr>
                                        <tr>
                                            <td>Finn Camacho</td>
                                            <td>Support Engineer</td>
                                            <td>San Francisco</td>
                                            <td>47</td>
                                            <td>2009-07-07</td>
                                            <td>$87,500</td>
                                        </tr>
                                        <tr>
                                            <td>Serge Baldwin</td>
                                            <td>Data Coordinator</td>
                                            <td>Singapore</td>
                                            <td>64</td>
                                            <td>2012-04-09</td>
                                            <td>$138,575</td>
                                        </tr>
                                        <tr>
                                            <td>Zenaida Frank</td>
                                            <td>Software Engineer</td>
                                            <td>New York</td>
                                            <td>63</td>
                                            <td>2010-01-04</td>
                                            <td>$125,250</td>
                                        </tr>
                                        <tr>
                                            <td>Zorita Serrano</td>
                                            <td>Software Engineer</td>
                                            <td>San Francisco</td>
                                            <td>56</td>
                                            <td>2012-06-01</td>
                                            <td>$115,000</td>
                                        </tr>
                                        <tr>
                                            <td>Jennifer Acosta</td>
                                            <td>Junior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>43</td>
                                            <td>2013-02-01</td>
                                            <td>$75,650</td>
                                        </tr>
                                        <tr>
                                            <td>Cara Stevens</td>
                                            <td>Sales Assistant</td>
                                            <td>New York</td>
                                            <td>46</td>
                                            <td>2011-12-06</td>
                                            <td>$145,600</td>
                                        </tr>
                                        <tr>
                                            <td>Hermione Butler</td>
                                            <td>Regional Director</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2011-03-21</td>
                                            <td>$356,250</td>
                                        </tr>
                                        <tr>
                                            <td>Lael Greer</td>
                                            <td>Systems Administrator</td>
                                            <td>London</td>
                                            <td>21</td>
                                            <td>2009-02-27</td>
                                            <td>$103,500</td>
                                        </tr>
                                        <tr>
                                            <td>Jonas Alexander</td>
                                            <td>Developer</td>
                                            <td>San Francisco</td>
                                            <td>30</td>
                                            <td>2010-07-14</td>
                                            <td>$86,500</td>
                                        </tr>
                                        <tr>
                                            <td>Shad Decker</td>
                                            <td>Regional Director</td>
                                            <td>Edinburgh</td>
                                            <td>51</td>
                                            <td>2008-11-13</td>
                                            <td>$183,000</td>
                                        </tr>
                                        <tr>
                                            <td>Michael Bruce</td>
                                            <td>Javascript Developer</td>
                                            <td>Singapore</td>
                                            <td>29</td>
                                            <td>2011-06-27</td>
                                            <td>$183,000</td>
                                        </tr>
                                        <tr>
                                            <td>Donna Snider</td>
                                            <td>Customer Support</td>
                                            <td>New York</td>
                                            <td>27</td>
                                            <td>2011-01-25</td>
                                            <td>$112,000</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="accordion p-3" id="formularioConsulta">
        <div class="accordion-item">
            <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                    aria-controls="panelsStayOpen-collapseOne">
                    Formulario de consulta
                </button>
            </h2>
            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                aria-labelledby="panelsStayOpen-headingOne">
                <div class="accordion-body">
                    <!--inicia el despliegue de opciones-->
                    <div class="row 1">
                        <div class="col">
                            <div class="input-group mb-3">
                                <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-calendar-check p-1" viewBox="0 0 16 16">
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
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-plus-square-fill p-1" viewBox="0 0 16 16">
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
                                    <option value="Terminado">Terminado</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="input-group mb-3">
                                <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-plus-square-fill p-1" viewBox="0 0 16 16">
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
                                    <option value="Sin contacto en 30 dias">Sin contacto en 30 dias</option>
                                    <option value="Total de documentos">Total de documentos</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="input-group mb-3">
                                <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-plus-square-fill p-1" viewBox="0 0 16 16">
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
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-calendar-check p-1" viewBox="0 0 16 16">
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
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="feather feather-globe p-1">
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
                                    <option value="Layout ZG A: Guadalajara-Colima-Nayarit">
                                        Layout ZG A: Guadalajara-Colima-Nayarit
                                    </option>
                                    <option value="Layout ZG B: Acapulco-Toluca-Pachuca-Cuernavaca">
                                        Layout ZG B: Acapulco-Toluca-Pachuca-Cuernavaca
                                    </option>
                                    <option value="Layout ZG C: Puebla-Queretaro-Tlaxcala">
                                        Layout ZG C: Puebla-Queretaro-Tlaxcala
                                    </option>
                                    <option value="Layout ZG D: Merida-Cancun-Tuxtla-Villahermosa-Campeche">
                                        Layout ZG D: Merida-Cancun-Tuxtla-Villahermosa-Campeche</option>
                                    <option
                                        value="Layout ZG E: Leon, San Luis Potosi-Aguascalientes-Morelia-Tamaulipas-Zacatecas">
                                        Layout ZG E: Leon, San Luis Potosi-Aguascalientes-Morelia-Tamaulipas-Zacatecas
                                    </option>
                                    <option value="Layout ZG F: CDMX-Estado de Mexico">
                                        Layout ZG F: CDMX-Estado de Mexico
                                    </option>
                                    <option value="Layout ZG G: Coatzacualcos-Oaxaca-Veracruz-Xalapa">
                                        Layout ZG G: Coatzacualcos-Oaxaca-Veracruz-Xalapa
                                    </option>
                                    <option value="Layout ZG H: Monterrey">H:
                                        Layout ZG Monterrey</option>
                                    <option
                                        value="Layout ZG I: Chihuahua-Cd. Juarez-Reynosa-Saltillo-Tampico-Torreon-Nuevo Laredo-Durango">
                                        Layout ZG I: Chihuahua-Cd. Juarez-Reynosa-Saltillo-Tampico-Torreon-Nuevo
                                        Laredo-Durango
                                    </option>
                                    <option
                                        value="Layout ZG J: Mexicali-Cd. Obregon-Culiacan-Hermosillo-Los Mochis-Tijuana Baja California-Baja California Sur">
                                        Layout ZG J: Mexicali-Cd. Obregon-Culiacan-Hermosillo-Los Mochis-Tijuana Baja
                                        California-Baja California Sur</option>
                                    <option value="Todos/Ninguno">
                                        Todos/Ninguno</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="input-group mb-3">
                                <label class="input-group-text fw-bold" for="inputGroupSelect01">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-plus-square-fill p-1" viewBox="0 0 16 16">
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
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-plus-square-fill p-1" viewBox="0 0 16 16">
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
            <h2 class="accordion-header" id="mapaRepublica">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseTwo">
                    Casos por region
                </button>
            </h2>
            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                aria-labelledby="panelsStayOpen-headingTwo">
                <div class="accordion-body">
                    <div class="row">
                        <div class="divMapaMexico col-9">
                            <svg id="mapaMexico" baseprofile="tiny" fill="#7c7c7c" height="631" stroke="#ffffff"
                                stroke-linecap="round" stroke-linejoin="round" stroke-width="2" version="1.2"
                                viewbox="0 0 1000 631" width="1000" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M901.9 362.5l0 0.2-0.2-0.1-0.3 0.1 0.3-0.2 0.2 0z m2.8 0.4l1.1 0.9 1 1.5 0.5 1.2-0.4 1.8-0.4 1-0.5 0.4-0.4-0.1-0.6-0.3-0.3-0.3 0.1-0.4-0.3-0.6 0.2-0.2 0.5-0.2 0.6-0.6 0.1-0.8-0.6-0.7-0.4-0.5-0.1-0.8-0.8-0.4-0.7-0.3-0.6 0.2-0.2 0.5-0.3-0.1 0.2-0.5 0.3-0.5 0.3-0.5 0.5-0.2 1.2 0.5z"
                                    id="MEX99" name="">
                                </path>
                                <a xlink:title="Baja California">
                                    <path
                                        d="M136.4 173.3l-0.8 0-0.3-0.5-0.3 0.1-0.2-0.2 0.1-0.2 0.4-0.3 0.4 0.3 0.5 0.5 0.2 0.3z m-2.4 0l-1.8 0 0.6-0.8 1-1.4 0.6-0.8 0.5 0 0.2 0.9-0.1 0.6-0.6 0.4-0.3 0.3-0.1 0.3-0.1 0.4 0.1 0.1z m-45.5-11.3l0.1 0.2 0.3-0.1 0.4 0 0.1 0.2-0.4 0-0.1 0.3-0.4 0.1-0.3-0.3-0.1-0.2 0.1-0.2 0.3 0z m12.9 7.9l-0.2 0.3 0.2 0.6-0.2 0.5 0.3 0.6-0.1 0.2 0 0.2-0.2-0.1-0.2-0.1-0.3-0.1-0.4 0.2-0.3 0.1-0.2-0.3-0.4 0.1-0.2-0.2-0.3-1.1-0.6-0.6-0.7-0.3-0.6 0.3-0.4 0.1-0.4 0.5-0.3-0.4 0.2-1.2 0.5-0.3 1.9-2.4 1.1-1.5-0.5-1.1-0.2-1.3 0.2-1 0.2-1.1 0.5-0.4 0.6-0.3 0.7 0.6-0.1 0.7 0.4 1 0.3 0.2-0.1 0.3 0.3 0.5 0.1 0.9-0.3 0.9 0 0.8 0.5 0.7 0.1 0.8-0.2 0.7 0.2 0.4-0.3 0.4-0.4 0.2 0 0.3-0.3 0.3 0.1 0.4z m90.8-10l0.1 0.2-0.5-0.2-0.1-0.3 0.3-0.2 0.3 0.2-0.1 0.3z m-14.5-7.4l-0.4 0.2-0.2-0.2-0.1-0.2-0.2 0-0.2-0.8-0.4-0.3-0.6-0.3-0.4-0.5-0.8-0.1 0-0.3-0.2-0.2-0.1-0.2-0.3-0.3-0.3-0.3 1.1 0.3 1.7 1.2 0.5 0.5 0.2 0.2 0.2 0.3 0.4 0.2 0.2 0.3 0.2 0.2-0.3 0.3z m-4.3-3.9l0 0.2-0.3-0.1-0.4-0.2-0.3-0.1-0.1-0.2 0-0.3 0.4 0.4 0.7 0.1 0 0.2z m-1.5-1.1l-0.4-0.1 0-0.2-0.2-0.1 0.1 0 0.2 0.1 0.1 0 0.2 0.3z m12.2-0.5l0.3 0.2 0.1 0.4 0.1 0.2-0.1 0.4 0 0.5-0.2 0.5-0.6 0.2-0.7-0.2-0.3 0.1 0.1-0.2-0.4-1 0-0.8 0.4-0.1 0.2-0.1 0.7 0.1 0.4-0.2z m-13.2-3.3l0.1 0-0.1 0.2-0.1 0-0.2-0.1 0.2-0.1 0.1 0z m-1.8-2.4l-0.2 0.2 0 0.1-0.1 0-0.1-0.1 0.1 0 0.1-0.1 0.1-0.2 0-0.1 0-0.1 0.1 0.1 0.1 0.1-0.1 0.1z m-13.9-2.8l0 0.1-0.2 0 0-0.1 0-0.2 0.1 0 0.1 0.2z m-1-0.8l-0.1 0.1-0.1-0.1-0.1-0.1 0.2-0.2 0.1 0 0.1 0.2-0.1 0.1z m1.5-0.7l-0.1 0-0.1-0.2-0.1-0.2 0.2 0.1 0.1 0.3z m11.9-1.9l-0.2 0.1-0.2-0.1 0.2-0.2 0.2 0 0 0.2z m-12.9 0.9l0 0.1-0.3 0-0.2-0.1 0.1-0.2-0.3-0.3 0.1-0.2 0-0.1-0.1 0 0-0.3 0-0.2-0.2-0.1-0.1-0.3-0.1-0.2 0.2-0.1 0.3 0 0.2 0.1 0 0.2-0.1 0.1 0 0.2 0.1 0.1 0 0.2-0.1 0.3 0.2 0.2 0 0.2 0.1 0.1 0 0.2 0.2 0.1z m-149.2 4.5l-0.8 1.1-0.6-0.1-0.4 0.3-0.2 0 0 0.4-0.3-0.3 0.1-0.4 0.4-0.2-0.3-0.8-0.2-0.6 0.2-0.6-0.2-0.7-0.5-0.5 0.3-0.6-0.3-1-0.3-0.5-0.3-0.4-0.7-0.6-0.1-0.6-0.1-0.5-0.2-0.6 0.1-0.6 0.3-0.7 0.6-0.5 0.9-0.3 0.4-0.5 0.7-0.1 0.6 0.3-0.5 0.6-0.4 0.5-0.1 0.5 0.2 0.7 0.4 0.7 0.5 0.3 0.7 1 0.3 1.7-0.3 0.7 0.2 1.3-0.1 1.6z m149-22.4l0.7 0.1 0.4 0.5 1 0.9 0.4 1 0.7 0.2 0.1 0.3 0.3 0.3-0.1 0.3 0.4 0.5 0.4 0.7-0.1 0.3 0.5 0.4-0.4 0.3-0.4 0.5-0.1 0.6 0.2 0.3 0 0.9 0.8 0.6 1.2 0.2 0.3 0.3 0.4 0 0.3-0.3 0.4 0 0.2 0.1 0.6-0.1 0.5 0 0.5 0.1 0.7-0.1 0.5 0.5-0.3 0.6 0 0.8 0.2 0.4 0 0.7 0 0.4 0.2 0.2-0.2 0.4-0.1 0.8 0 1 0.1 0.3 0.4 0.7 0.1 0.3-0.1 0.3 0.3 0.6 0.3 0.1 0.5 0.2 0.2 0.1 0.5 0.1-0.5 1 0.1 0.4 0 1.1-0.3-0.1-0.4-0.5-0.3-0.1-0.4-0.5-1-0.4-0.3-0.7-0.5-0.3-0.4-0.1-0.5-0.4-0.2-0.4-0.2-0.2-0.2-0.6-0.4-0.5-0.5-0.6-0.3-0.4-0.4 0-0.2-0.4-0.5-0.2-0.6-0.3-0.2-0.6-0.8-0.4-0.6-0.5-0.8-1.1 0.1-0.4-0.2-0.5-0.5-0.5-1 0.1-0.4-0.3-0.3-0.4 0-0.7-0.2-0.4-0.4-0.2-0.3-0.6-0.2-0.2-0.1-0.4-0.5-0.4-0.1-0.3-0.3-0.4-0.6-0.5-0.1-0.8 0.2-0.9 0.4-0.8 0.3-1-0.1-0.6-0.1-0.6 0.4-0.1 0 0.2 0.3 0.2 0.4-0.2 0.4-0.2 0-0.2 0.4 0 0 0.4 0.4 0.1z m-2.1-0.7l-0.3 0.2-0.2-0.4 0.4-0.2 0.2 0.2-0.1 0.2z m-26.2-14.7l-0.3 0-0.5-0.3 0.2-0.3-0.1-0.4 0.5 0 0.1 0.6 0.1 0.4z m-4.6-4.8l0.2 0.1 0 0.2-0.1 0-0.1-0.2-0.2-0.1-0.1 0-0.1-0.1 0.4 0.1z m-49.2-14.3l-0.4 0-0.2-0.1 0-0.2 0.2-0.2 0.2 0 0.2 0.3 0 0.2z m-35.8-70.5l-0.1 0-0.1-0.4-0.1-0.3-0.1-0.1-0.1-0.4 0.2 0.1 0.1 0.2 0.1 0.3 0.1 0.3 0 0.3z m72.7 17.9l-0.8-0.3-0.3-0.2-0.4 0-0.4-0.1-0.4-0.4-0.2 0-0.1-0.2-0.1-0.5-0.1-0.4-0.3-0.2-0.1 0.2 0 0.4 0.1 0.5 0.5 0.8 0.1 0.2 0.3 0.2 0.2 0.1 0.9 0.2 0.5 0.2 0.5 0.4 0.4 0.4 0.3 0.5 0.8 0.2 0.6 0.6 0.4 0.6 0.2 0.6 0.5 0.2 0.2 0.4 0.4 2.6 0.2 0.8 0.5 0.7 0.4 0.9-0.3 0.7-1.1 1.3-0.5 1.3-0.4 1.5 0 5-0.7 2.3 0.1 2.1-0.4 3.3-0.1 0.7 0.1 1.6 0.7 1.1 0.8 0.8 0.7 0.7 0 0.2-0.6 0.6 0 0.8 0.4 0.6 0.6 0.5 2.1 1 0.5 0.3 0.1 0.2 0.1 0.2 0.1 0.4 0 1.2 0.1 0.4 0.1 0.6-0.2 0.5 0.2 0.4 0.2 0.5-0.1 1.7 0.2 0.5 0.2 0.6-0.2 0.3-0.4 0.9 0.3 0.9 0.2 0.6-0.2 1.2 0.4 1.1 0.7 1.2 0.4 0.8 0 0.3 0.1 0.4 0 0.4 0.2 0.4 0.3 0.6 0 0.6-0.2 0.6 0 0.8 0.2 0.6-0.1 1-0.2 0.8 0.2 0.4-0.3 1.9-0.3 0.6 0 0.3 0.1 0.4 0.3 0.5-0.1 0.5-0.3 0.8-0.1 0.5-0.3 0.5 0.2 0.6 0.2 0.3 0.3 0.8 0.4 0.3 0 0.5 0.2 0.5 0.6 0.3 0.3 0.7 0.5 0.7 0 0.7 0.7 1.3 0.4 0.9 0.4 0.9 1.6 0.7 0.3 1.1 0.4 0.3 1 0.1 0.3 0.6 0.3 0.3-0.2 1 0.4 0.8 0.2 0.2-0.2 0-0.2 0.2 0 0.2 0.3 0.2 0.1 0.2 0 0.3 0.1 0.5 0.4 0.3 0.3 0.2 0.2-0.1 0.3 0.1 0.3 0.4 0 0.2 0.2 0.3 0.5 0.1 0.6 0 0.2 0 0.3-0.2 0-0.2 0.1-0.1-0.2-0.1-0.1-0.1 0-0.2 0.3 0 0.1-0.1 0-0.1 0.1 0.1 0.2 0 0-0.1 0.2 0.1 0.1 0.2 0.1-0.1 0.1 0.2 0.1 0 0.3-0.1 0.2 0.2 0.3 0.3 0.2 0 0 0.1 0.4 0.1 0.2 0.2 0.1 0.4 0.1 0.2 0.2 0.1 0.1 0.2 0.1 0 0.1 0.2 0.2 0.1 0.3 0.2 0.1 0.3 0.1 0.1 0.2-0.2 0.3 0.1 0 0.3 0.3 0.3 0 0.2 0.2 0 0.2 0.3 0.2 0.2 0.1 0.1 0.4 0.2 0.2 0.2 0.3 0.1 0.6 0.4 0.1 0.4 0.1 0.2 0.2 0.3 0.1 0.3 0.5 0 0 0.1 0.1 0.2 0.2 0.1 0 0.1 0.2 0.1 0.3 0.1 0.4 0 0.4 0.3 0.2 0.4 0.3 0.4 0.2 0.2 0.2 0.1 0.3 0.5 0.4 0.1 0.2 0.3 0.4 0.4 0.4 0.6 0.6 0.3 0.4 0.5 0.5 0.2 0.4 0 0.2 0.3 0 0.5 0.2 0.2 0.4 0.1 0.3 0.1 0.2 0.3 0.3 0.1 0.5 0.2 2.8 3.3 1.1 0.8 0.3 0.4 0.2 0.7 0.2 0.2 0.1 0.2-0.5 0.5-0.3 0.4-0.3 0.4 0 0.4 0.3 0.1 0.3 0.2-0.1 0.5 0.3 0.4 0.1-0.1 0.1 0.2 0 0.3 0.3 0 0.2-0.1 0 0.4 0.2 0.5 0.4 0.4 0.3 0.1 0.3 0.4 0.2 0.8 0.5 1 0.4 0.5-0.1 0.4-0.3 0-0.2 0.4-0.2 0.2-0.1 0.3 0.1 0.5 0.4 0.3 0.1 0.6 0 0.6-0.3 0.2-0.1 0.2 0.4 0.5 0.4 1 0.2 0.2 0.1 0.3 0.6 0.1 0.7-0.1 0.2-0.2-0.1-0.1 0.2-0.5-0.3-0.2-0.2-0.4 0.2-0.1 0-0.2 0.1-0.2 0.2-0.1 0.3 0.1 0.4 0.1 0.3-0.3 0.2-0.3 0.3 0.4-0.1 0.5 0.5 0.4 0.2-0.1 0-0.2 0.6-0.3 0.1 0.2-0.1 0.1-0.1 0.1-0.1 0.6 0.8 0.2 0 0.2-0.4 0 0 0.3 0.3 0.2 0.1 0.3 0.3 0.2-0.2 0.2-0.1 0.3 0 0.5-0.1 0.3 0.2 0.5 0.4 0.2-0.1 0.6 0.7 0 0.7 0 0.6-0.6 0.2-0.3 0.5-0.2 0.3-0.3 0.8 0.2 0.5 0.3 0.1 0.3 0.1 0.5 0.3 0.2 0.2 0.2-0.1 0.5 0.3 0.2 0 0.5-0.1 0.6 0.4 1 0.2 0.1 0.1 0.7 0.5 1.3 0.7 0.5 0.2 0.5-0.2 0.9 0.4 0.9 0.1 0.5 0.2 0.7-0.1 0.6 0.3 0.9 0.7 0.4 0 0.2 0.6 0.3 0.7 0.1 0.2 0.3 1 0.4 1 0 1.3-0.4 0.9-0.3 0.5 0.4 0 0.3 0.3 0.2 0 0.2-0.2 0.3 0.1 0.1 0.4 0.1 0.1-0.1 0.2-0.3 0.3 0 0 0.4 0.1 0.3-0.2 0.2-0.2 0.5 0.1 0.2 0.1 0.5-0.1 0.5-0.5 1.4-0.1 0.8 0.1 0.3-0.1 0.6 0.2 0.4 0.4 0.4 0.5 0.3 0 0.3 1 1.2 0.2 0.2 0.3 0.1 0.1 0.2-0.2 0.2-0.1 0.2-0.1 0.6-0.1 0.2-0.1 0.4-0.2 1.1 0.4 1.3 0 0.1 0.3 0.1 0 0.4-0.2 0.4-0.2 0.4-0.1 0.5 0.2 0.5 0.4 0.5 0.6 0 0.1 0.1-5.4 0-5.6 0-5.7 0-5.7 0-11.3 0-5.7 0-1.5 0 0.2-0.2 0.5-0.8 0.1-0.3-0.3 0-0.3-0.2-0.4-0.4-0.5-0.1-0.5 0.1 0-0.6 0-1-0.2-0.5-0.2-0.3 0.2-0.5 0.5-0.8 0.4-0.7 0.3-0.6 0.4-0.5-0.2-0.2-0.1-0.4-0.1-0.5-0.3-0.3-0.3 0-0.3 0.3-0.4-0.1-0.2-0.3-0.3-0.2 0.5-1.1 0.4-0.8 0.5-1.2 0.7-2.3 0.3-1 0.2-0.9-0.2-0.6-0.4-0.1-0.3-0.3 0.1-0.6 0-0.5-0.3-0.2-0.1-0.3-0.1-0.4-0.4-0.3-0.4-0.4-0.5 0-0.7 0-0.4-0.2 0.1-0.5 0.1-0.7-0.1-0.9-0.2-0.8-0.3-0.3-0.3-0.2-0.8 0-0.8 0.1-0.4 0.2-0.8-0.2 0-0.5 0.1-0.1-0.2-0.7-0.7-0.3-0.5-0.8-1.1-0.2 0-0.6 0-0.6-0.4-0.5 0-0.6-0.3-0.6-0.7 0.2-0.5-1.2 0.2-0.7-0.5-0.7-0.6 0.1-0.1-0.7-0.6-0.5-0.5-0.7-0.8-0.1-0.5 0.1-0.2 0.1-0.2 0-0.4-0.3-0.2-0.6-0.3-0.7-0.1-0.4-0.4 0.1-0.6 0.5-0.3-1.2 0-1.2-0.2-0.5-0.3-0.6-0.2-0.7-0.2-0.5-0.9-0.3-0.9-0.3-0.5 0.6-0.6-0.8-0.2-0.9-0.2-0.3-0.1-0.9-0.2-0.4-0.2-0.2-1.1-0.1-1.4-1.3-0.7-1-0.8-1-1.5-1.6-1.5-1.7-4.1-1.5-2.6-0.3-1.5-2.3-1.6-1.4-2.7-1-1.7-1.4-0.9-0.9-0.8-0.2-0.6 0.5-0.7-0.5-0.5-0.3-0.4-0.7-0.8-0.6-0.6-0.8-0.9-0.1-2.4-2.2 0.1-0.8 0.2-0.9 0.1-1-0.3-1.4-0.2-1.1-0.7-0.8-0.2-0.5-0.5-0.5-0.6-0.2-1.4-0.1-0.1-0.4 0.7-2.6 0.2-2-0.2-1.1-0.1-0.2-0.3-0.5-0.1-0.3 0.1-0.4 0.1-1.2 0-1.7-0.3-1.6-0.6-1.2-0.3-1-0.9-0.8-1-0.7-1.1-0.5-1.4 0 0.9-0.8 0.3-0.5 0.1-0.5-0.2-0.5-0.4-0.6-0.6-0.5-0.5-0.2 0.3 0.6 0.3 0.4 0.2 0.5 0.1 0.6-0.4 0.3-0.3 0-0.2-0.3-0.4-0.3-0.3 0.2-0.1 0.3 0 0.4 0.3 0.1 0.3 0.4 0.1 0.8 0.4 1.1-0.8 0-0.2-1.2-0.6-1.8-0.6-1.4 0.6-5.4-0.2-3.8-0.6-1.9-0.1-0.7-0.3-0.4-1.2-0.2-1.4-1.5-0.8-0.1-0.8-1.1-0.5-0.8-0.3-0.5-0.7-1.1-0.6-0.3-1.2 0.4-0.9-0.1-0.2-1.2 0.5-1.4 0.2-2.3 0.3-2.2-1-2.6-3.6-4.4-1.3-2.5-0.4-0.5-0.2-0.1-0.5-0.6-0.2-0.3-0.5-0.2-0.6-0.5-0.4-0.2-0.3-0.2-0.1-0.2-0.1-0.3-0.2-0.4-1.2-1-0.2-0.3-0.7-0.6-0.2-0.5 0.1-0.4 0.3-0.1 0.7 0-0.6-0.8 0.1-0.6 0.2-0.5 0.2-1-0.2-0.7-0.4-0.7-0.2-0.2-0.5-0.3-0.8-0.1-0.8-1-0.3-0.5 1.3 0.3 1 0.7 0.5 0.1 0.6-0.4 0.4-0.7 0.3-0.7 0.2-1.1 0.1-0.8 0-0.7-0.3-0.6-1.2-0.2-0.6-0.2-0.5-0.8-0.8-0.4-0.5-0.1-0.6-0.2-0.1-1 0-1.1-0.4-0.5-1.1 0-1.2-0.3-0.7-1-0.3-0.8-0.1-1.3-0.3-2.3-0.6-1.7-0.5-1.6-0.4-0.5-0.4-0.5-0.6-0.3-1.4-0.4-0.5-0.4-1.5-3.5-0.5-1.3-0.5-1.2-0.4-0.6-0.1-0.7-0.1-0.7 0-0.8 0-0.4 0-0.3 2.5-0.2 7-0.7 6.9-0.6 2.4-0.2 6.9-0.6 2.3-0.2 2.4-0.2 2.3-0.2 2.3-0.2 11.6-1.1 2.3-0.2 4.6-0.4 2.3-0.2 2.4-0.2 2.3-0.2 2.3-0.2 7-0.7 2.3-0.2 2.3-0.2 1.3-0.1 0 0.1-0.3 0.9-0.2 0.6-0.4 0.7-0.2 0.2-0.8 0.7-0.1 0.2-0.5 1 0.3 0.8-0.1 0.8-0.4 1.5-0.4 0.5 0.1 0-0.5 0.3-0.6 0.1-1.7-0.1-0.6 0.3-0.6 0.8-0.5 0.9-0.2 0.8-0.1 0.7 0 0.6 0 0.7-0.4 0.8-0.5 0.7-0.7 0.5-0.5 0.6-0.1 0.6 0.2 0.2 0.8 1.1 0.8 1.1 0.5 1.2 0.4 1.4-0.1 0.8-0.7 1.2 0 0.6 0.2 0.1 0.5 0.4 0.2 0.1 0.3 0.5 0.2 0.4 0 0.5 0.1 0.5-0.1 1 0 0.9 0 0.9 0.1 0.8z"
                                        id="bajacalifornia" name="Baja California">
                                    </path>
                                    <text id="txtBC" x="20" y="90" fill="black" stroke="black"
                                        style="font-size:20px; font-weight: 200;">Baja California</text>

                                </a>
                                <a xlink:title="Baja California Sur">
                                    <path
                                        d="M271.1 308.4l-0.2 0.6-0.3-0.1-0.5-0.1-1-0.2-0.4-0.1 0.1-0.3-0.4-0.6-0.5-0.8-0.4-1.2-0.4-1.1 0.1-0.3 0.2-0.3-0.7-1.4 0.1-1.2 0-0.5 0.2 0 0.3 0.4 0 0.5 0.4 0.4 0.2 0.4 0.2 0.3 0.3 0.7 0.4 0.8 0.4 0.5 0.5 1 0.2 0.2 0.4 0.5 0.5 0.9 0 0.4 0.3 0.6z m-55.6-7.8l0.7 0.2 1 0.3 1.3 1 0.1 0.2-2.2-1-0.9-0.1-1.1-0.1-1.3 0.3-0.8 0.2-0.3-0.3 0.3-0.3 0.2-0.3 0.4 0.2 0.5-0.1 0.9-0.1 0.5 0 0.7-0.1z m-12.9-4.8l0.4 0 1.7 0 0.8 0 0.5-0.1 0.4 0.4 0.4-0.1 0 0.4 0.2 0.5 0.3 0.2 0.1 0.4 0.7 0.2 0.7 0 0.7 0.6 0.9 1.7 0.6 0.6 0.3-0.1 0.1 0.3-0.2 0.5 0.2 0.4-0.3 0.6-0.3 0.4 0.1 0.7-1-1.4-0.6-0.6-1.5-1.1-1.2-1-0.8-0.8-1.2-0.6-0.2-0.3-0.4-0.1-0.4-0.5-1.1-0.5-0.8-0.3-0.2-0.3 0.6-0.4 0.5 0.3z m50.8-1l-0.1 0.5 0.5 0.1 0.7 0.5 0.3 0.4 0.3 0 0.1 0.5 0.2 0.4 0.3 0.3-0.2 0.4-0.4 0-0.2 0.4 0.1 0.5-0.3 0.2-0.1 0.3-0.2 0.6-0.6-0.1-0.1-0.3-0.1-0.2 0.1-0.4-0.2-0.2-0.2-0.1-0.2 0.3-0.1-0.4-0.1-0.2 0.5-0.2 0-0.2-0.2-0.1-0.1-0.1-0.3-0.2-0.2-0.2-0.1-0.3-0.1-0.5 0.1-0.3-0.3-0.2 0.1-0.2 0.4-0.2 0.2-0.2-0.3 0-0.3-0.2 0-0.4-0.3 0.1-0.1-0.3 0.1-0.2-0.3-0.1-0.1-0.3 0.5-0.4 0.1-0.3 0.4 0.1 0.1 0.4 0.2 0.3 0.4 0.3 0.1 0.4z m-6.5-9.7l0.1 0.2 0 0.2-0.2 0 0-0.3-0.2 0-0.2 0.1-0.2-0.3 0.1-0.1 0.5-0.4 0.1 0.1-0.1 0.4 0.1 0.1z m-0.9-7.2l0.1 0.2 0.2 0.2 0.3 0.2 0 0.3 0.2 0.3 0.1 0.6-0.1 0.9 0.3 0.7 0.2 0.3 0.2 0.5 0.4 0.8 0.3 0.3-0.3 0.2-0.6 0.1-0.3-0.1-0.3 0.1-0.2 0.3-0.2-0.1 0.4-0.4 0-0.3-0.4-0.2-0.3-0.3-0.5-0.2 0-0.2-0.3-0.1-0.7 0 0-0.2 0.2-0.2-0.3-0.5-0.3-0.2-0.2-0.5 0-0.3-0.1-0.3-0.3-0.3-0.1-0.8-0.2-0.3-0.4 0-0.3-0.4-0.2 0-0.1-0.3 0-0.5 0.1-0.3 0-0.5 0-0.7 0.1-0.2 0.1-0.1 0.1 0.1 0.2 0.3 0.4 1 0.5 0.4 0.8 0.1 0.9 0.3 0.6 0.3z m-3.3-5.7l-0.1 0.1 0-0.2 0.2-0.2 0 0.2-0.1 0.1z m-46.1 7.3l0 0.4-0.3 0.2-0.2-0.2-0.3 0.5 0 0.3 0 1.1-0.3 0.2 0.2 0.9 0.2 0.3 0.2 0.3-0.1 0.2-0.4 0-0.3 0-0.2 0.4-0.1 0.3 0.1 0.3 0 0.5 0.1 0.2 0.3 0.2 0.3 0.2 0.3 0.4 0.2 0 0 0.1-0.2 0 0.1 0.1 0.3 0.5 0.1 0.5 0.7 0.8 0.3 0.3 0 0.4 0 0.2 0.1 0.2 0.1-0.1 0.3 0.7-0.4 0.5-0.1 0.2-0.3 0.3-0.1 0.3 0.1 0.2 0.1 0.4 1 0.6 0.3 0.3 0.5 0.8 0.3 0 0 0.4 0.2 0.2 0.2 0.5-0.1 0.4-0.2-0.1-0.8-0.3-0.3-0.2 0.1-0.2-0.2-0.7-0.3-0.5-0.4-0.5-0.3-0.2-0.3 0-0.4-0.8-0.4-0.2-0.1-0.2 0.2-0.3 0.1-0.3 0.2-0.1 0.2 0.1 0.2 0 0.2-0.3 0.1-0.6-0.1-0.6-0.2-0.6-0.3-0.4-0.6-0.7-0.5-0.4-0.5-0.3-0.2-0.1-0.4-0.1-0.4 0-0.2 0-0.2 0-0.2 0.2-0.1 0.2 0 0.3 0.1 0.6-0.1 0.1-0.3-0.3-0.1-0.6-1-0.6 0.1-0.4 0-0.1 0.1-0.1 0.3-0.1 0.4-1 0.6-1.5 1.6-4.7 0.5-1.5 0.9-3.3 0.6-2.5 0-0.9 0.2-0.4 0.4 0 0.1 1.6-0.2 0.6-0.5 1.4-0.4 0.8-0.4 2.3-0.3 1 0.2 0.5 0.1 0.4 0 0.4 0.1 0.4 0.1 0.3z m45.7-9.6l-0.2 0.1-0.3 0-0.1-0.2-0.1-0.4 0-0.4 0.6-0.6 0.3 0 0.3 0 0.2-0.2 0 0.1-0.1 0.2-0.3 0.5-0.2 0.6-0.1 0.3z m-44.3-0.7l-0.2 0-0.2-0.2-0.2-0.3 0.1-0.5 0.3-0.6 0.2-1.1 0.1-1.5 0.3-1.4 0.1-0.6-0.1-0.8 0.1-0.2 0.1 0.1 0 0.5 0 0.6 0 0.8-0.1 0.7-0.2 0.7 0 1 0.1 0.7 0 0.6-0.3 0.4-0.1 0.5 0 0.6z m43-11l-0.4 0.1-0.6-0.3-0.6-1.4 0-1.1 0.4-0.7 0.3-0.5 0.3-0.1 0.1 0.6 0.2 0.1-0.1 0.6 0.2 1 0.2 1.7z m-8.9-4.1l0.1 0.4 0.4 0.3 0.2 0.6-0.1 0.3-0.2 0.3-0.2 0.3-0.2 0-0.3-0.4-0.1-0.2 0.1-0.4-0.3-0.5-0.1-0.2-0.1-0.3 0.6 0.1 0-0.2 0.2-0.1z m-6.5-1.8l-0.1 0-0.3-0.2-0.1-0.3 0-0.7-0.1-0.3 0.1-0.1 0.1 0 0 0.4 0.2 0.1-0.1 0.1 0.2 0.3-0.1 0.1 0 0.3 0.2 0.1 0 0.2z m5.8-10.7l-0.4 0.6-0.4 0.9 0.1 1.1 0.3 0 0 0.4 0.2 0.1 0 0.4-0.1 0.2-0.2-0.2-0.2 0-0.2-0.3-0.2-0.2-0.3-0.4-0.3 0-0.2 0.2 0 0.2-0.1 0.4-0.3 0.5-0.3 0.3-0.4 0.7-0.6 0.7-0.3 0.3 0.1 0.2-0.2 0.6 0.1 0.5-0.2 0.3-0.3 0.1-0.2 0.3 0 0.7 0.1 0.6-0.1 0.2-0.3-0.4-0.2-0.1-0.3-0.2 0-0.3-0.1-0.4 0-0.3 0.4-0.7 0-0.4 0.3-1.2 0-0.4 0.3-0.5 0.1-0.4 0.3-0.5 0.4-0.3 0.2-0.3-0.1-0.6 0.1-0.7-0.2-0.4 0-0.3 0.4-0.1 0.9-0.2-0.1-0.4 0.3-0.2 0.2 0.3 0.6 0.2 0.7-0.2 0.2-0.3 0.5-0.1z m-7-1.2l-0.2 0.1 0.2-0.3 0-0.1-0.2-0.2 0-0.2 0.3-0.4 0.3 0 0.1 0.1 0.1 0.3-0.1 0.3-0.1 0.1 0.1 0.1 0 0.2-0.5 0z m-4.6-18.3l-0.1 0.1-0.1-0.3-0.1-0.1 0-0.3 0.2 0.2 0.1 0.2 0 0.2z m-56-3.2l0.2 0.1 0.3-0.3 0.2 0 0.2 0.1 0.4 0.5 0.5 0.7 0.2 0.5 0 0.2-0.2 0-0.3-0.2-0.3-0.2-0.9-0.4-0.9-0.3-0.8-0.2-0.3-0.1-0.2-0.1 0.2-0.4 0.4-0.2 0.5-0.3 0.3 0.1 0.3 0.1 0.2 0.2 0 0.2z m36.3-16.9l-0.5 0.5-0.6-0.1-0.3-1.5-0.4-0.4 0.6-0.8 0.8 0.6 0.6 0.9-0.2 0.8z m6-8.4l-0.6 0.1-0.4 0-0.4-0.3 0.1-0.5 0.7-0.1 0.5 0.2 0.2 0.3-0.1 0.3z m-104.1-15l-0.3 0.1-0.2 0-0.1-0.7-0.3-0.4-0.5-0.2-0.4-0.1 0.1-0.3 0.4 0.2 0.3 0 0.3 0.3 0.5 0.3 0.2 0.2 0.1 0.3-0.1 0.3z m30.2-5.3l1.8 0 0.3 0.4 0.3 0.6 0 0.4 0.7 1.2 0.4-1.1 0.1-0.6-0.1-0.7-0.1-0.2 0.8 0 0.1 0.2 0.2-0.2 1.5 0 5.7 0 11.3 0 5.7 0 5.7 0 5.6 0 5.4 0 0.1 0.1 0 0.5 0.2 0.6-0.1 0.1-0.2 0.9 0.1 0.7 0 0.4 0 0.2 0 0.3-0.2 0.1 0 0.4-0.2 0.6 0.5 0.6 0.5 0.3 0.1 0.3 0.4 0.3 0.1-0.2 0.1 0 0 0.3 0.2 0.4-0.1 0.2 0.1 0.6 0.3 0.3-0.1 0.3 0.1 0.5 0.4 0.4 0.4 0.5 0.3 0.4 0.2 0.1 0.2 0.2 0.3-0.1 0.1 0.1 0.2 0.2 0.2 0.3 0.3 0.3 0 0.3 0.7 0.4 0.1 0.5 0.9 0.4 0.8 0 0.5 0.2 0.4 0.3 0.5 0.1 0.4 0.2 0.2 0.2 0.4 0.3 0.3 0.3 1.2 0.2 0.5 0.4 0.9 0.6 0.6 0.6 0.1 0.4 0.6 0.7 0.3 0.7 0.2 1.3-0.1 0.5 0.4 0.8 0.3 0.6-0.1 0.4 0.1 0.5 0.4 0.5 0.5 0.3 0.1 0.6 0.3 0.4 0.5 0.1 0.2 0.4 0.2 0.9 0.3 0.2 0.4 0.8 0.3 0.4-0.2 0.7-0.1 0.2-0.2 0.2 0 0.3 0.6 0.4 0.4 0.5 0.4 0.4 0.1 0.3 0.3 0.1 0.7 0.1 0.6 0.6 0.8 0.4 0.7-0.1 0.1 0.2 0.3 0.2 1.4 0.2 0.5 0.8 1.1 0 0.3 0.1-0.1 0.3 0.2 0.2 0.1 0.3-0.5 0.2-0.4-0.1-0.5 0.4-0.5 0.7-0.3 0.8-0.1 0.5 0 0.7 0.5 1 0.5 0.4 0.3 0.1 0.1 0.3 0.5 0.6 0.1 0.7 0.3 0.2 0.9 0.3 0.1 0.7 1.3 1.1 0.2 0.8 0.1 0.5 0 0.2-0.4 0.3-0.1 0.3 0 0.4-0.4-0.2-0.5 1 0.2 0.7 0.4 0.1 0.7 0.6 0.3 0.6 0.2 0.5 0 0.3 0.2 0.3 0.5 0.2 0.4 0.4 0.5 0.6 0.4 1.4 0.7 0.6 0.8 0.5 0.7-0.4 1.2-1.1-0.1-0.4-0.4-0.3-0.7-0.9-0.9-0.9-0.4-0.2-0.3-0.6-0.9-0.5-0.4-0.9-0.2 0.1-0.1-0.3 0.1-0.3-0.1-0.3 0-1-0.2-0.4 0-0.5-0.2-0.5 0.2-0.5-0.3-0.3-0.2-0.2 0.1-0.3-0.2-0.2-0.1-0.3 0-0.3-0.2-0.3 0-0.2 0.5-0.1 0.3-0.2 0.2-0.3 0.8 0.5 0.1 0.3 0.7 0.4 0.7 0.7 0.5 0.8 0.3 0.5 1.3 1 0.4-0.1 0.1 0.5 0.2 0.3 0.3 0.2 0 0.2 0.7 0.3 0.1 0.2 0.5 0.2-0.1 0.2 0.8 0.4 0.4 0.1 0.1 0.3 0.3 0.1-0.2 0.9 0 0.8 0.1 0.8-0.2 1.7 0.1 0.7 0.5 0.3 0.8 0.3 0.7 0.3 0.6 0.1 0.3-0.1 0-0.1 0.4-0.1 0 0.3 0.2 0.2 0.4 0.2-0.2 0.1-0.2 0.3 0 0.7-0.4 0.7 0 0.9-0.1 0.8 0.3 0.7 0.7 0.5 0.3 0.1 0.2 0.2 0 0.2-0.3 0.1 0 0.2 0.3 0.4 0.5 0.2 0.4 0.5 0.2 0.6 0.1 0.5 0.1 0.8-0.4 0-0.1 0.9 0.3 0.3 0 0.3 0.4 0.8-0.1 0.4 0.1 0.6 0.3 0.2 0.2 0.5 0 0.7 0.3 0.6 0.3 0.5 0.6 0.5-0.1 0.4 0.2 0.4 0 0.4-0.2 0.1-0.1 0.4-0.4 0.4-0.1 0.3 0.2 0.6 0 0.8-0.3 0.5-0.4 0.4 0.1 0.7 0.2 0.6 0.3 0.6 0.1 0.3 0.1 0.6-0.2 0.4 0.2 0.2 0.1 1 0.2 0.2 0.2 0 0.1-0.1 0.2 0.1 0.3 0.4 0 0.2 0.2 0.1-0.1 0.2-0.2 0-0.1-0.2 0-0.2-0.3-0.1 0 0.2 0.1 0.5 0.1 0.4 0 0.4 0.2 0.2 0.4 0.3 0.4 0.5 0.4 0.1 0.3 0.2 0.2 0.3 0.1 0.3 0.3 0.1 0.1-0.1 0.2 0 0.4 0.8-0.1 0.2 0.1 0.4 0.2 0.5 0.2 0.5 0 0.6 0.1 0.3 0.2 0.5 0.2 0.4 0.4 0.3 0.3 0.8 0.4 0.1 0.1 0.1 0.1 0.3 0.2 0.5 0.3 0.1 0.1 0.4 0.3 0.1 0.4 0 0.1-0.1 0.1 0.1 0.6 0.1 0.2-0.3 0.1 0.1-0.2 0.3 0.1 0.1 0.2 0.1 0.2-0.2 0.1 0 0.2 0.2 0.2 0 0.1-0.2 0.1 0 0.1 0.1 0.4 0.1 0.2 0.3-0.3 0.3 0.3 0.5 0 0.2-0.2 0.2 0 0.4-0.2 0.1 0 0.4 0.2 0.2 0.2 0.6 0.3 0.2 0.1 0.9 0.1 0.3 0.5 0.8 0.1 0.6 0.2 0.3 0.5 0.2 0 0.2 0.3 0.3 0.1 0.2-0.1 0.1 0 0.3 0.2 0.1 0.2 0.1-0.1 0.1 0 0.2 0.1 0.2-0.1 0.1-0.2 0-0.1 0.4 0 0.3 0.3 0.3-0.1 0.4 0.3 0.7 0.3 0.1 0.2 0.7 0.2 0.2 0.1 0.1-0.2 0.2 0 0.6 0.2 0.6 0.4 0.4 0.4 0.2 0.2 0.2 0 0.2 0 0.1 0.2 0.2 0 0.2 0.1 0.2 0.1 0.5 0.4 0.2 0.1 0.2 0.5 0.1 0.2 0.2-0.1 0.4 0.1 0.2 0.3 0.3 0.4 0.1 0.2 0 0-0.1 0.1-0.1 0.2 0.1 0.2 0.2 0.7 0.5-0.1 0.2 0.1 0.1-0.1 0.3 0.3 0.1 0 0.2 0 0.5 0.1 0.3 0.4 0.4 0.2 0.4 0.3 0.4 0 0.2 0.2 0.1 0.2 0 0.2 0.2 0 0.1-0.2 0-0.1 0.1 0.1 0.1 0 0.2 0.5 0.3 0 0.2 0.2 0.1-0.1 0.1 0 0.2 0.1 0.3 0 0.3 0.1 0.3 0.2 0.2 0 0.5 0.2 0.2 0.1 0.2 0 0.2 0.1 0.1 0.1 0 0 0.1-0.1 0.2 0 0.3 0 0.1-0.1 0.5 0 0.3-0.5 0.6-0.2 0.6-0.1 0.4 0 0.3-0.1 0.4-0.5 0.1-0.5 0.5-0.1 0.7-0.2 0.8-0.2 0.6 0.1 0.7-0.1 0.5 0.2 0.9-0.1 0.2 0.1 0.4 0.2 0.7 0 0.3 0.2 0.4 1.1 1.3 0.1 0.8-0.3 0.3 0 0.4 0.1 0.2-0.1 0.3 0.2 0.4 0.2 0.2-0.1 0.3 0.2 0.3-0.2 0.4 0.9 1.1 0 0.2 0.5 0.3-0.1 0.2 0.4 0.9 0.5 0.5 0.1 0.5 0.4 0.3 0.5 0.2 0.2 0.5 0.3 0.2 0.1 0.3 0.7 0.3 0.9 0.3 0.8 0.1 1.1 0.3 1.6 0.3 2.2-0.1 0.2 0-0.1 0.3-0.3 0.3-0.5 0.2-0.5 0.1-1.1-0.6-0.9-0.2 0 0.2 0.2 0.3-0.1 0.5 0.3 0.3 0.1 0.3-0.2 0.3 0.2 0.4 0.8 0 0.7-0.2 0.3 0.1 0.3-0.1 0.1-0.7 0-0.2 0.1-0.1 0.6-0.5 0.6-0.7 0.2-1.4-0.4 0 0.1-0.7-0.3-0.1-0.2-0.2 0.1-0.1 0-0.2 0-0.4-0.2 0-0.1 0.3-0.2 0.1 0-0.7 0.1-0.2-0.1-0.2 0.1-0.3-0.1-0.2 0-0.3-0.1-0.2 0.5 0 0.1-0.2-0.2-0.1-0.1-0.1 0.2-0.3 0.5-0.1 0.2-0.2 0.2-0.3 0.6 0.1 0.9 0.2 0.1-0.2 0.4 0.3 0.1 0.2-0.2 0.1 0 0.4 0.2 0.3 0.3 0.1 0.3 0.3 0.3 0.2 0.3 0.2 0.2 0.4 0 0.3 0.3 0.3 0.1 0.3 0.8 0.2 0.4 0.3 0.3 0.3 0.2 0.1 0.6 0.3 0.4 0.1 0.1 0.1 0.2 0.1 0.1 0.3 0.4 0.1 0.1 0.2 0.4 0.2 0.9 0.6 0.3 0.3 0.2 0.8 0.1 0.3 0 0.4 0.1 0.2 0.2 1.5 0 0.7 0.5 0.3 0.6 0 0.7 0.3 1.3-0.3 1.2-0.4 0.5-0.4 0.2-0.1 0.1 0.6 0.2 0.3 0.3 0.2 0.2 0.4 0 0.2-0.2 0.2 0 0.3-0.4 0.4-0.2 0-0.1 0.1 0 0.3-0.2 0.9 0.1 0.5 0.2 0.6 0.2 0.3 0.5 0.3 0.1 0.1 0.6 0.6 0.4 0.1 1 1.2 0.6 0.6 0.3 0.6 0.4 0.4-0.3 0.8-0.1 0.9 0.2 0.8 0.4 1.2-0.1 0.8 0.5 0.6 1.2 0.6 0.2 0.2 0.5 0.1 0.4 0.1 0.7 0.4 0.3 0.3 0.3 0.1 0.8 0.2 0.5 0.1 0.2 0.2 0.1 0.4 0.5 0.2 0.7 0.2 0.3 0.1 0 0.3-0.3 0.3 0 0.5 0.3 0.7 0.8 1 0.5 0.6 0.1 0.6-0.1 0.6 0 0.4 0.4 0.2 0 0.5-0.1 0.3-0.4 0.3 0.1 0.3 0 0.6 0.1 0.4-0.1 0.8 0 0.5-0.2 0.4-0.1 0.2-0.1 0.3 0.1 0.7 0 0.4-0.2 0.3-0.3 0.6-0.1 0.4-0.2 0.2-0.4 0.6-0.6 0.9-0.4 0.2-0.3 0.7-0.3 0.1-0.2 0.5-1.1 0.4-0.3 0.5-1 0-0.6 0.4-1.4 0.5-0.7 0.5-0.6 0.3-0.2 0.5 0.2 0.3-0.6 0.7-0.9 0.1-1.4 1 0 0.7-0.6 0.5-0.4 0.4-0.5 0.3-0.2 0.1-0.8 0-0.6 0.3 0 0.3 0.2 0.2-1.2 0.1-0.6 0-0.4-0.2-0.4-0.1-0.7-0.5-0.8-0.7-0.5-0.6-0.6-0.6-0.5-1-0.4-1.1-0.3-0.2-0.2-1-0.1-1-1.3-5.2-0.3-2.2-0.2-1-0.4-0.3-0.2-0.4-0.8-1.3-0.2-0.5-0.4-0.5-0.2-0.6-1-1.8-0.3-0.4-0.9-1.8-1.5-1.3-1.6-1-3.8-1.7-1.7-0.8-2.2-1.8-3.3-3.6-2-2.4-1.1-1.1-0.6-0.4-0.3-0.1-0.1-0.4-0.4-0.4-1.1-1.3-0.7-0.5-1.1-1-0.7-0.5-0.2-0.4-0.7-0.7-1.4-0.9-0.8-0.6-1-0.5-1.1-0.6-1.6-1.3-1.7-0.9-5.2-2.8-0.1-0.2 0.3 0.1 2.5 1.3-0.5-0.6-1.2-0.6-1-0.5-0.5-0.1-0.5-0.5-0.3-0.6-1.1-1.1-0.6-0.4-0.8-0.1-0.9-0.8-0.8-1-0.3-1.3-0.6-1.1-0.2-0.4 0.3 0.2 0.3 0-0.4-0.5-0.6-0.5-0.4-0.4-0.5 0 0 0.5 0.3 0.5-0.4 0.8-0.9-0.1-0.3-0.3-0.4 0.2-0.5 0.1-0.7-0.1-0.5-0.2 0.7 0.7 0.6 0.4-0.6 0.1-0.3-0.2-0.3 0.2-0.4 0.2-0.2-0.3-0.1-0.7 0.2-1.2-0.6-1.8-0.4-1.1-0.6-0.5-0.6-0.8-0.6-0.8-0.8-0.6-0.4-0.5 0.2-0.1 0.7 0.5 0.1-0.1 0-0.2-0.7-0.5-0.6-0.6-0.5-0.7-0.2-0.5-0.1-0.6-0.2-0.7-0.4-0.7-0.4-0.3 0.3 1 0.1 0.9 0.3 0.8 0.7 0.7-0.2 0.1-0.5 0.3 0.2 0.2 0.3 0.4 0.2 0.1-0.3 0.2-0.3-0.1-0.2-0.2-0.1-0.3-0.6 0.6-0.4-0.5-0.5-1.8 0.2-0.2 0.2-0.3 0-0.3-0.2-0.4-0.5 0.4-0.1 0.4 0.2 1.1 0 0.7 0.2 0.4-0.7 0.1-0.5-0.4-0.3-0.4-0.2-0.4-0.1-0.7 0.1-1-0.1-0.4-0.2-0.2-0.2-0.1-0.2-0.1-0.2-0.6 0.3-0.1 0.6-0.5 0.2-0.3-0.2-0.8-0.2-0.1-0.1-0.2 0-0.3 0.2-0.1 0.4-0.3 0.1-0.3 0-0.2-0.3-0.5-0.1-0.3 0-0.3-0.3-0.3-0.2 0.2-0.3 0.5 0 0.6-0.3 0.4-0.2 0.4 0.2 0.7 0.2 0.6-0.3 0.7-0.4 0.5-0.3 0-0.2-0.6 0.1-0.5 0.2-0.9-0.3-0.2-0.1-0.5 0.2-0.2 0.4-0.1 0.1-0.3-0.2-0.3 0.6-1.1 0.2-1-0.1-0.3 0.2-0.5 0-0.4-0.4 0 0-0.2-0.3-0.2 0.2-0.5 0-0.4-0.1-0.5 0-0.7 0.3-0.9 0.4-1 0.6-0.8 0.5-0.7 0.2-0.6 0.1-2.9 0-1-0.4-0.2 0-0.5 0.2-0.6 0.2-0.3 0.1-0.6 0-0.2-0.4-0.1 0.3-0.5 0.8-0.3 0.5-0.3-0.3-0.1-0.8 0.1-0.4 0.1-0.2-0.3 0.3-0.2 0.4-0.3 0-0.6-0.1-1.3-0.2-0.8 0.3-0.7 0-1.2-0.2-2-0.2-1-0.2-0.3-0.2 0.2 0 0.6 0.1 3.7-0.2 1.5-0.1 1.3-0.3 0.3 0-0.4 0-0.8 0.2-2-0.1-4.7-0.2-1.9-0.7-1.1-0.3-1.5-0.6-1.1-0.6-2.3-0.6-1.4-0.7-0.7-0.6-0.9-0.8-0.5-0.9 0.2-0.5-0.7-0.2-1.2-0.2-1-0.7-1.6-1.1-1.5-0.8-0.7-1.2-0.7-0.4-0.1-0.4 0.1-0.2 0.4-0.3 0.4-0.5 0.1-1.8-1.4 0-0.1 0-0.5-0.1-0.4-0.5 0.3-0.5 0.2-0.5-0.4-0.2-0.6-0.1-0.1-0.6-0.1-1.3 0.1-0.4-0.1-1.2-1.7-0.9-0.6-1-0.6-0.6-0.5-0.8-0.6-1-1-1.3-1-1.5-0.9-0.2-0.8-0.1-0.1-0.2 0-0.6 0-0.5-0.2-0.5-0.5-1.3-1.3 0-0.4 0-0.6 0.1-0.4 0-0.4-0.2-0.2-0.8-1.2-0.5-0.6-0.4-0.3-0.3-0.5-0.3-0.6-0.2-0.4 0-0.4 0.1-0.4 0.4-0.3 0.2-0.1-0.2-0.2-0.3 0-0.4 0.1-0.5 0.2-0.2 0.9-0.4 0.1-0.4 0.1 0.1 0.3 0 0.2-0.4 0.2-0.3-0.2-0.3-0.4-0.1-0.4-0.1-0.5-0.2-0.2 0.2-0.2 0.6 0 0.3-0.2 0.4-0.4 0.3-0.2 0.4-0.4 0.2-0.4 0.5-0.3 0.3-0.4 0.2-0.6 0.2-0.4-0.1-1.8-0.1-0.6-0.5-0.6-0.6-0.1-0.5 0.2-0.4 0.8-0.1 2.2-0.2 1.1-0.9 0.8-0.4-0.3-0.4 0.5-0.2 0.4 0 0.4 0 0.3 0 0.3 0 0.4-0.1 0.5-0.1 0.2-0.5 0.1-1.3-0.9-1.2-0.7-1.1-0.2-0.6-0.2-0.9 0.1-0.7 0-1.1 0.4-0.4 0.8-0.3 0.6-0.5 0.4 0 0.8-0.4 0-0.6 0.5-0.7-0.2-1.3-0.5-0.9-1.6-1.9-1-0.2-0.5-0.1-0.6-0.6-1.1-1.1-2.1-0.8-1-1.1-0.7-0.9-0.5-1-0.4-1.6-0.2-0.4 0.2 0 0.5-0.3 0.1-0.3 0.2-0.4-0.2-1.4-1.5-0.4-1.1-0.7-0.9-0.9-1.1-1.1-0.6-1.1-0.6-0.8-0.1-0.9-0.4-1.2 0.2-0.5 0.1-0.1 0.7-0.8-0.7-1-0.7-1.4-0.6-0.8 0.6-0.4-0.4 0.2-0.4-0.1-0.3 0-0.4-0.4-0.2-0.6-0.3-0.4 0.2-0.4-0.8 0-1.5 0.1-1.5-0.2-1.4-0.5-1.5-0.7-0.8-0.3-0.2-0.8-0.5-0.5-0.1-0.5-0.9-1.1-0.5-1.6-0.6-1.1-0.5-0.6 0-0.5-1.1-0.5-0.6-0.1-0.2-0.4-1-0.7-0.7-0.8-0.3-0.3 0.1-0.1 0.4-0.4-0.2-0.2-0.3-0.4-0.5 0.1-0.2 0.4 0.4 0.3-0.1 0.2-0.6-0.1-0.5-0.2-0.3-0.3-0.3-0.3-0.2-0.5 0-0.1 0.3-0.2 0.3-0.1 0.5-0.4-0.2-0.6-0.2-0.2-0.9-0.4-0.6-0.7-0.2-0.5-0.1-0.4 0.4-0.3-0.5-0.3-0.4-0.4-0.7 0-0.7-0.4-0.6-0.2-0.9-0.1-0.1-0.9-1 0.9-0.3 0.5 0.1 0.5 0.5 0.3 0.5 1.5 0.1 1.4-0.3 1.2 0.2 0.5 0 0.7 0.2 0.2 0.4 0.7 0.1 1-0.2 0.7 0.2 0.8 0.1 0.5 0 0.1 0.4 0.3 0.2 0.6 0.1 0.7 0 1 0.3 1 0.2 1.1-0.3 1.3-0.2 1 0.5 1.1-0.5 0.9-0.5 0.9-0.6 0.4-0.4 0.4-0.2 0.5-0.6 0.9-0.6 0.3-0.2 0.3 0 0.4 0.1 0.2 0.1 0 0.3 0.1 0.3 0.1 0.7-0.1 0.5-0.2 0.6-0.2 0.4-0.2 0.4 0.3 0.5 0.7 1 0.6 0.4 0.7 0.7 0.5 0.3 0.9 0.2 0.6 0.4 0.8 0.4 0.5 0.4 0.3 0.5 0.2 0.3 0 0.4 0.2 0.1 0.3 0 0 0.4 0 0.3 0.3-0.2 0.4-0.2 0.2-0.3 0-0.3 0.6-0.4 0.3-0.4 0.1-0.5-0.2-0.2-0.2 0.1-0.1-0.2-0.1-0.2-0.1-0.1-0.2 0.1-0.2 0 0-0.2 0.1-0.1 0.6-0.2 0.3 0.1 0 0.3 0.1 0.1 0.4-0.1 0.3 0.1 0 0.3 0.3 0.3 0.5 0.2 0.9 0.1 0.5 0 0.3-0.5 0.2-0.3 0.2-0.3 0.4-0.4 0.1-0.4-0.2-0.4-0.3-0.2-0.3-0.1-0.2-0.2-0.4-0.2-0.3-0.1-0.2-0.1-0.1-0.2-0.2-0.2-0.1 0-0.2 0.2-0.3 0-0.6 0.1-0.1-0.1-0.4-0.6-0.2-0.6-0.2-0.3-0.3-0.3-0.2-0.1-0.1 0.2 0.1 0.3 0.3 0.5 0 0.4 0.2 0.2 0.2 0.3 0.2 0.4-0.1 0.3-0.3 0 0 0.2-0.1 0.2-0.1 0-0.2-0.2-0.3 0-0.2 0.2-0.4 0.3-0.4 0.1-0.4 0-0.3-0.2-0.2-0.3-0.3-0.3 0-0.4-0.1-0.5-0.3-0.3-0.2-0.3-0.4-0.5 0-0.6 0-0.4 0-0.4 0.2-0.3 0.2-0.3 0.5-0.7 0.3-0.5 0.1-0.4-0.1-0.2-0.4 0-0.1-0.2 0.5-0.2 0-0.2-0.1-0.2-0.3-0.1-0.2-0.1-0.1-0.3 0.1-0.2 0-0.3-0.2-0.2-0.2 0-0.3 0.2 0 0.2-0.2 0.3-0.2 0.1-0.3 0.2-0.3 0.2-0.4-0.1-0.6 0.3-0.2 0.4-0.3 0.3-0.4 0.2-0.2-0.5 0.1-0.6 0.1-0.5 0.2-0.5 0.3-0.3 0.6-0.5 0.2-0.5 0.5-0.5 0.2-0.2z"
                                        id="bajaCaliforniaSur" name="Baja California Sur">
                                    </path>
                                    <text id="txtBC" x="20" y="260" fill="black" stroke="black"
                                        style="font-size:20px; font-weight: 200;">Baja California Sur</text>
                                </a>
                                <a xlink:title="Coahuila">
                                    <path
                                        d="M586 181.5l-0.9 0.7-0.8 0.7-0.8 0.8-0.8 0.8-1.8 1.7-0.3 0-0.2-0.1-0.5-0.5-5.8-4.9-0.2 0.1-0.4 0.3-0.6 0.5-1.1 0.8-1.2 0.7-1.2 0.9-0.8 0.9-0.5 1.2-0.3 1.4-0.3 1.5-0.3 1.2-0.3 1.5-0.3 2-0.4 1.7-0.7 0.9-0.6 0.3-0.3 0.1-0.3 0-0.2-0.2 0-0.3-0.1-0.3-0.2 0-3.7 1.4-0.4 0.3-0.4 0.4-0.4 0.5-0.4 0.4-2.8 1.8-0.6 0.3-0.5 0.4-0.3 0.4-0.1 0.7 0.5 4.3 0.5 0.2 0.6 0.1 0.4 0.4-0.1 0.9 0.7-0.1 0.5-0.1 0.4-0.3 0.1-0.5-0.1-0.2-0.1-0.2-0.2-0.2 0-0.2 0.2-0.2 0.3 0 0.3 0 0.2-0.1 0.2-0.5 0.1-0.4 0.2 0 0.4 0.6 0.6 0.4 0.9 0.1 0.8 0.1 0.6 0.4 0.2 0.7 0.1 1.1-0.1 1.1 0 0.8 0.1 0.7 0 0.8 0 0.7-0.1 0.7-0.5 1.8-0.5 1.8-0.7 1.7-1.1 1.5-0.5 0.5-0.5 0.5-0.6 0.5-0.5 0.5-1.3-4-1.2 1-2.2 1.8-2.2 1.9-2.1 1.9-2.2 1.9-2.4 2-2.3 2.1 1 0.9 1.2 1.1 1.1 1.2 0.8 1.2 0.1 0.6 0.1 0.6 0.2 0.6 0.3 0.5 0.4 0.6 0.3 0.3 0.4 0.1 0.6 0 0.6 0.2 0.5 0.4 0.5 0.5 0.4 0.5 0.3 1 0.1 0.9 0 1 0.3 0.9 0.7 0.6 0.9 0.4 0.8 0.5 0.1 0.9-0.1 1.3-0.2 1.3 0 1.3 0.2 1.2 0.5 1.3 0.7 1.3 0.8 1.2 0.8 1.1 0.6 0.7 0.6 0.3 0.6 0.1 0.8 0 0.3 0.1 0.3 0.1 0.2 0.2 0.3 0.2 0.2 0.4-0.1 0.3 0 0.4 0 0.3 0.4 0.2 0.9 0 0.4 0.2 0.3 0.4 0.1 0.4 0 0.4 0 0.5-0.9-0.3-1-0.5-1.1-0.3-0.8 0.1-0.2 0.7 1 0.5 1.2 0.5 0.7 0.7 0.2 0.7 0.8 0.8 1.2 0.3 1.2 0.3 0.8 0.7 0 0.3-0.2 0.3 0 0.3 0.3 0.3 0.5 0.1 0.7-0.2 0.6-0.2 0.6-0.1 0.5 0.1 0.6 0.1 0.6 0.1 0.6 0 0.5 0 0.3 0.2 0.8 0.6 0.8 0.5 1 0.6 0.4 0.5-1 0.3-0.3 0.1-0.3 0.1-0.3 0.2-0.1 0.3 0 0.3 0.1 0.8 0 0.3-0.4 0.2-0.7-0.1-0.7 0-0.5 0-0.8 0.3-0.7 0.1-0.7 0.1-0.8-0.3-0.8-0.3-0.8-0.3-0.8-0.2-0.8-0.2-2.1 0-1.9 0.6-1.8 1-1.8 1.2-0.8 0.9-0.8 1.5-0.5 1.3 0.8 0.5 0.6 0.1 0.5 0.5 1 1 0.4 0.7-0.1 0.5-0.5 0.4-0.6 0.4-0.7 0.5-0.1 0.6 0.1 0.6 0.3 1 0.3 0.9 0.2 0.8 0 0.7-0.2 0.9-0.4 1.6-0.5 1.6-0.5 1.7-0.3 1.6-0.6-0.4-0.6-0.4-1.3-0.7-0.6-0.2-0.5 0.1-0.6 0.2-0.6 0.2-1.2-0.1-1.3-0.6-1.2-0.8-0.8-0.9-0.2-0.6-0.2-0.6-0.1-0.6-0.3-0.5-0.3-0.6-0.4-0.6-0.4-0.5-0.4-0.5-1.1-0.7-1.1-0.2-1.1 0.1-1.3 0.3 0-0.2-0.1-0.5 0-0.2-0.6 0.6-0.7 0.7-1.2 1.3-0.6 0.4-0.6 0.1-0.7-0.1-0.7 0-2.6-0.2-0.9 0-0.4-0.3-0.3-0.7-0.3-0.8-0.2-0.6 0.7 0.2 0.6 0.2 0.6 0.2 0.7 0.1-0.1-0.7 0-0.7-0.2-0.7-0.3-0.6-0.4-0.3-0.5-0.3-0.5-0.3-0.5 0-1.2 0-1.3-0.3-1.1-0.7-0.9-0.9-0.4-0.9-0.5-1.2-0.6-1.2-0.6-0.6-9.8-3-0.9-0.1-0.9 0.1-0.9 0.2-0.9 0.1-2.3 0.3-7 0.7-1 0.1-0.6 0.2-0.5 0.4-0.6 0.9-2.8 3.7-0.5 0.7-0.6 0.9-0.8 0.8-0.7 0.2-0.1 5.9-0.7-0.6-0.7-0.5-0.7-0.5-0.7-0.5-1.3-0.6-1.3-0.5-1.3-0.3-1.3-0.3-1.4-0.4-1.4-0.5-1.3-0.8-0.8-1.3-0.2-1.3 0-1.4 0-1.4-0.5-1.1-1.1-0.8-1.3-0.7-1.2-0.8-0.7-1.1-0.4-0.9-0.4-0.7-0.5-0.6-0.6-0.5-0.5-0.3-0.4-0.4-0.2-0.4-0.1-0.6 0.1-1 0.4-0.9 0.4-0.9 0.6-0.8 0.3-0.2 0.7-0.2 0.2-0.2-0.1-0.3-0.2-0.4-0.4-0.4-0.3-0.3-0.5-0.5-0.4-0.5-0.3-0.6 0-0.7 0.2-0.6 0.3-0.4 0.4-0.3 0.5-0.3 0.3-0.3 0.3-0.2 0.4-0.1 0.2-0.3 0.3-0.4 0.2-0.3 0.6-0.6 0.3-0.6 0.2-0.5 0.3-0.4 0.6-0.3 0.3-0.5 0.1-1 0-1.1-0.1-0.9-0.1-1.7-0.1-1-0.1-1-0.1-1-0.2-1.8-0.2-1.8-0.1-1.9 0.2-1.7 0.5-1.7 0.7-1.6 0.8-1.6 0.3-1.8-0.4-1.8-1.3-1.5-1.6-1.4-1.4-1.1-1.2-1.2-1.3-1.1-2.5-2.2-1.5-1.3-1.4-6-0.5-2-1.6-6.8-3.3-13.7-1.6-6.8-0.7-3.3-1.3-5.6-0.2-1.1 1-1.8 1.4-2.5 1.3-2.5 1.3-2.6 1.3-2.5 2-3.8 1.9-3.8 2.6-5 2.6-5 2.6-5.1 2.5-5.1-0.1 0.6 0.4 0.3 1.9-0.1 1.7 0.5 1.3 0.2 0.8-0.4 0.4-1 0.1-1.2 0.3-0.1 0.2 0.1 0.1-0.7 0.2-0.3 0.3-0.3 1.2-0.6 0.3-0.3 0.2-0.3 0.9-1.9 0.6-0.5 0.7 0.4 0.2-0.3 1.4-1.1 0.8-0.2 0.4-0.1-0.3-0.4-0.8-0.5-0.2-0.4 0-0.4 0.4-1.4 0.1-0.7 0-0.4 0.2-0.2 0.4-0.3 0.2-0.1 0.1 0 0.3 0 0.3-0.2-0.1-0.1-0.2-0.6 0-0.2 0.3-0.5 0-0.4-0.1-0.4-0.1-0.4 0.1-0.5 0.2-0.3 0.2-0.4 1-2.6 0.3-0.3 0.1-0.2-0.1-0.5 0.3-0.2 0.1-0.1-0.2-0.5 0.4-0.2 0.2-0.2 0.3-0.6 0-0.1 0.5-1 0.1 0 0.1-0.5 1-1.6 0.1-0.4 0-0.4 0.1-0.2 0.2-0.3 0.2 0 1.2 0 0.6-0.1 1.1-0.6 0.6-0.3 0.1 0.1 0.2 0.4 0.1 0.1 0.2-0.1 0.2-0.2 0.3-0.2 0.3-0.5 0.2-0.1 3.5 0.3 0-0.1 0.8-1.1 0.1-0.4 0-1 0.2-0.3 0.2-0.3 0.4 0 0.3-0.2 0.3-0.7 0.3-0.1 0.6 0.1 0.4 0.4 0.4 0.3 0.6-0.1 0.2 0.7 0.4 0.2 1.1 0.1 1.5 0.8 0.4 0.3 1.1 0.5 3-0.3 0.8 0.2 0.5-0.5 0.5 0.2 0.5 0.3 0.4 0.3 0.3-0.1 0.3 0 0.2-0.1 0.2-0.2 0.3-0.2 0.3 0.1 0.6 0.2 1.1 0 0.4-0.3 0.2 0 0.1 0.4 0.2 0.2 5.1 0.8 1.7-0.3 0.5-0.1 0.3-0.4 0.1-0.7 0.1-0.2 0.3 0.1 0.2 0.3 0.1 0.3-0.1 0.2-0.2 0.6-0.1 0.3 0.6 0.2 0.5-0.3 0.5-0.4 0.6-0.2 0.3 0.1 0.2 0.5 0.3 0.1 0.4 0.1 0.3-0.1 0.3-0.1 0.3-0.1-0.1 0.4 0.1 0.5 0.2 0.4 0.5 0.8 0.2 0.7 0.4 0.9 0.2 0.3 0.3 0.3 0.4 0.2 0.8 0 0.3 0.1-0.1 0.6-0.3 0.2-0.2 0.4-0.1 0.5 0 0.4 0.2 0.3 0.3 0.4 0.4 0.1 0.1-0.2 0.3-0.8 0.7-0.5 0.6-0.2 0.4 0.6-0.1 0.8-0.4 0.9-0.5 0.8-0.4 0.3-0.7 0.1-0.2 0.3 0.1 0.3 0.2 0.3 0.8 0.3 0.6-0.2 1-0.9 0.6-0.1 0.3 0.3 0.1 0.5-0.5 0.8 0 0.1 0.2 0.2 0.6-0.3 1 0.1 0.9 0.3 0.5 0.6 0.4-0.2 0.3 0 0.2 0.1 0.3 0.1 0.4-0.1 0.3-0.3 0.2 0.6 0.1 1.1 0.2 0.5 0.2 0.3 0.2 0.4 0.3 0.3 0.4 0.2 2.3 1.1 0.7 0.6 0.6 0.8 0.3 0.2 1.5 0.8 0.6 0.4 0.4 0.6 0.7 1.2-0.3 0.8 0.2 0.5 1.7 1.3 0.1 0.2 0.2 0.3 0.3 0.1 0.4 0 0.3 0.1 0.3 0.5 0.2 2.1 0.6 1.5 0.2 0.7-0.3 0.8 0.2 0.2 0.1 0.3 0.1 0.4 0 0.5 0.2 0.2 0.4 0.3 0.3 0.4 0.2 0.5 0.1 0.2 0.5 0.2 0.1 0.1 0.1 0.3-0.2 0.5 0.1 0.2 0.2 0.1 0.5 0 0.2 0.2 0.1 0.2 0.2 0.3 0.1 0.2 0.2 0.4 0.8 3.4 0.4 0.8 1.2 1.6-0.1 0.6 0.4 0.2 0.7 0.4 0.3 0.3 0.2 0.3-0.1 0.9 0 0.4 0.5 0.7 0.6 0.4 1.3 0.5-0.9 0.5-0.2 0.3 0.1 0.4 0.2 0.3 0.3 0.2 0.1 0.2 0.1 1.3 0.3 1.3 0.9 1.2 0.5 0.8 0 0.6-0.2 0.6 0.3 0.7 0.6 0.6 0.5 0.4 0.9 0.2 0.2 0 0.1 0.3 0 0.5 0.2 0.5 0.2 0.2 0.5 0.1 3.1 1.6 0.6 0.6 0.2 0.8 0.1 0.5 0.1 0.2 0.4 0.5 0.4 0.4 0.3 0.1-0.1 0.2 0 0.2-0.1 0.2 0.2 0.6 0.3 0.5 0.3 0.4 0.4 0.6 0.5 0.2 0.6 0.1 0.4 0.3-0.3 0.5 0.3 0.5 0.5 0.7 0.5 0.5 0.5 0.3 0.1 0.1-0.1 0.4-0.3 0.5 0.1 0.4 0.3 0.2 0.2 0.2 0.3 0.3 0 0.4-0.1 0.7 0.1 0.4 0.1 0 0.5 0.4 0.3 0.4 0 0.2 0.8 0.1 0.1 0.1z"
                                        id="coahuila" name="Coahuila">
                                    </path>
                                </a>
                                <a xlink:title="Chihuahua">
                                    <path
                                        d="M475.5 136.5l-2.5 5.1-2.6 5.1-2.6 5-2.6 5-1.9 3.8-2 3.8-1.3 2.5-1.3 2.6-1.3 2.5-1.4 2.5-1 1.8 0.2 1.1 1.3 5.6 0.7 3.3 1.6 6.8 3.3 13.7 1.6 6.8 0.5 2 1.4 6-5-2.1-4.9-2.1-0.8-0.3-0.7-0.2-0.7 0-0.9 0-1.2 0-1.2 0.1-1.3 0.2-1.1 0.4-1.4 1.2-1.1 1.4-1.1 1.6-1.1 1.6-1.4 1.9-2.8 3.9-1.5 2-1.1 1.1-1.3-0.4-1.3-1.1-1.1-1-1.6-1.2-1.7-0.9-1.7-0.6-2-0.3-0.7-0.2-0.7-0.1-0.8-0.1-0.7 0.1-0.4 0.4-0.4 0.7-0.4 0.5-0.6-0.3-1.1-1.7-0.8-0.9-0.4-0.4-0.9 0.4-2.6 1.4-1.6 0.9-0.9 0.5-0.6 0.1-2.7-1.5-4.5-2.5-0.7-0.5-0.6-0.6-0.6-0.7-0.6-0.6-0.5-0.8-0.4-0.8-0.5-0.5-0.8 0.1-0.8 0.2-0.8 0-0.9-0.1-0.8 0-1.3-0.7-1.2-1-1.2-1-1.2-1-1-0.7-0.5-0.3-0.5-0.4-0.4 0.5-0.1 0.2-0.2 0.3-0.3 0.7-0.7 1.3-0.3 0.6-0.3-0.4-0.4-0.5-0.5-0.2-0.5 0.2-0.4 0.7-0.1 1 0 1.1 0 0.8-0.1 0.9 0 0.5-0.2 0.3-0.5 0.3-0.6 0.5-0.5 0.5-0.1 0.5 0.5 1.5 0.2 0.7 0.3 0.7 0.1 0.7-0.2 0.5-0.4 0.3-0.6 0.2-2.7 0.9-2.8 0.8-0.9 0.7-0.2 1 0.3 1.1 0.5 1.1 0.5 1.2 0.5 1.2 0.2 1.2-0.1 1.3-0.2 0.7-0.2 0.8-0.3 0.7-0.3 0.6-0.5 0.4-0.6 0.1-0.5 0-0.6 0-1 0.6-0.4 1-0.1 1.2 0 1.4-0.2 3.8-0.1 0.6-0.3 0.4-0.4 0.4-0.4 0.4-0.6 0.5-2.4 2.1-0.5 0.6-0.6 0.6-0.6 0.6-0.6 0.3-0.6 0.1-0.7-0.1-0.8-0.1-0.6-0.1-3.5-0.4-0.9-0.8-0.9-0.6-1-0.6-1-0.5-0.6-0.6-0.5-0.7-0.6-0.8-0.5-0.7-0.8-0.7-0.8-0.6-0.8-0.5-0.9-0.5-0.7-0.2-0.2-0.2-0.1-0.5 0-0.5-0.1-0.5-0.1-0.4-0.1-0.5-0.3-0.4-0.3-0.2-0.4-0.1-0.3-0.3-0.1-0.4-0.1-0.5-0.2-0.5-0.1-0.6-0.1-0.5-0.1-0.6-0.3-1-0.5-0.8-0.8-0.6-0.9-0.2-6.4-1.4-2.1-0.5-1.3-0.2-1-0.2-0.6-0.3-0.3-0.5-0.1-1-0.4-3.2-0.4-3.2-0.2-1.9-0.2-2.1-0.2-2.1-0.6-1.6-0.6-0.8-1.3-1.3-0.6-0.8-0.7-1-0.7-1-0.7-1.1-0.5-1.1 0-1.8-0.2-0.8-0.8-0.4-1.5-0.3-1.7-0.4-1.6-0.7-1-1.3-0.4-0.6-0.3-0.6-0.5-0.3-0.7-0.2-0.7 0.1-0.8 0.1-0.7-0.3-0.4-0.7-0.7 1-0.7 0.9-0.7 0.8-0.8 0.8-0.2-0.4-0.2-0.3-0.2-0.4-0.2-0.4-0.2-0.2-0.2-0.1-0.5 0.2-0.6 0.1-0.4-0.1-0.3-0.2-0.4-0.5-0.8-0.9-0.7-1.1-0.6-1.1-0.7-1.1-0.5-0.7-0.3-0.8 0-0.8 0.2-0.8 0.5-0.9 0.5-0.6 0.4-0.7-0.2-1.1-0.2-0.6-0.3-0.6-0.2-0.6 0-0.6 0.1-0.7 0.2-0.7 0.1-0.7 0-0.7 0-0.7-0.2-0.5-0.3-0.5-0.5-0.4-0.9-0.5-0.7-0.6-0.7-0.7-0.7-0.8 0-0.5 0-0.5 0.2-0.5 0.3-0.4-3.4-2.9-0.4-0.7-0.2-0.8-0.1-0.7-0.4-0.6-2.1-1.2-0.9-0.6-0.4-0.3-0.2-0.5-1-2.4-1-2.4-1.9-4.8-0.3-0.8 0.3-0.6 0.6-0.6 0.6-0.5 0.7-0.6 0.5-0.5 0.5-0.2 0.8-0.2 1.7-0.1 1.5 0 1.4 0.1 1.6 0.3 4.4 1.1 1.1 0.3 0.5 0.1 0.4-0.2 1.4-1.4 1.3-1.3 0-0.5-0.2-1-0.4-0.9-0.2-0.7-1.1-3-0.4-1-0.3-1.1-0.7-2.1 0-1 0.3-1.2 0.5-1.3 0.3-1 0-0.4-0.1-0.4-0.1-0.3-0.2-0.3-0.1-0.4 0-0.4-0.1-0.9-0.3-2.9-0.2-1.5-1.1-9.5-0.8-7.1 2.2-0.1 0.5 0 0.2-0.2 0.1-0.4 0-0.7 0.3-3.4 0.5-5.9 0.2-2.9 0.3-2.9 0.2-2.3 0.1-1 0-0.7 0-0.6 0.2-0.6 0.5-1.1 0-0.4 0-0.5 0-0.5-0.2-2.3-0.2-2.3-0.2-2.4-0.2-2.3-0.1-1.4-0.4-4.5-0.1-0.9-0.2-0.6-0.3-0.5-0.6-0.6-0.9-0.7-0.7-0.6-0.8-0.4-1-0.3-0.6-0.2-0.6-0.2-0.6-0.3-0.5-0.3-1.8-1.5-5.4-4.6-0.4-0.5-0.1-0.5 0.1-0.6 0.1-0.8 0.2-1.1 0.4-3.5 0.4-3.1 0.4-3.2 0.4-3.1 0.4-3 22.3 0 1.4 0 0-0.2 0-3.7 0-0.5 0-3.9 0-0.2 0-3.7 0-0.5 0-3.9 3.2 0 0.9 0 8.1 0 0.8 0 4.9 0 1.7 0 3.2 0 3.3 0 0.8 0 2.4 0.1 4.1 0 5.7 0 1.7 0 7.3 0 2.4 0 3 0 0.3 0.1 0.5 0.5 0.6 0.1 1.4-0.1 1.1 0.4 1.1 1.1 0.9 1.3 0.6 1.3 0.8 2.5 0.3 0.6 1.4 1.6 0.3 0.6 0.1 0.4 0 0.2 0.1 0.2 0.2 0.2 1.1 0.6 0.3 0.5 0.7 0.3 1.4 0.4 1 0.6 0.6 0.3 0.8 0.1 0.5 0.2 1.4 0.9 0.4 0.4 0.2 0.3 0.3 0.6 0.2 0.4 0.6 0.3 0.3 0.3 0 0.1 0.6 0.2 0.5 0.5 2.5 2.8 0.2 0.7 0.3 0.5 2.4 1.5 0.5 0.2 0.3 0.2 0.7 0.9 0.7 0.5 0.5 0.3 0.5 0.4 0.4 0.7 0.4 1.3 0.3 0.5 0.8 0.4 1.1 1.3 2.5 2 1.3 1.6 0.3 0.3 1 0.2 1.8 0.9 0.2 0.2 0.1 0.2 0.2 0.2 0.4 0.2 0.1 0 0.1-0.1 0.3-0.3 0.1 0 0.3 0.1 0.2 0 0.3 0.2 0.3 0.5 0.3 0.1 0.3 0 0.2 0.1 0.2 0.3 0 0.4 0.1-0.1 0.2 0.1 0.4 0.5 0.2-0.3 1.5 1.8 0.6 0.2 0.5 0.1 0.7 0.4 0.6 0.5 0.4 0.5 0.1 0.4 0.1 0.4 0.1 0.4 0.2 0.3 0.3 0.1 1 0.2 0.2 0.1 0.2 0.4 0.9 1.1 0.4 0.6 0.1 0.4 0 0.8 0.1 0.4 0.5 0.3 0.1 0.1 0 0.3-0.1 0.4-0.1 0.2 0.1 0.4 0.3 0.5 0.1 0.4-0.1 0.5 0 0.3 0 0.2 0.3 0.4 0.2 0.2 0.4 0.3 0.2 0.2 0.1 0.3 0 0.4 0.1 0.4 0.2 0.2 0.6 0.3 0.4 0.9 0.4 1 0.4 0.8 0.2 0.1 0.6 0.3 0.3 0.3 0.6 1.3 0.4 0.6 0.1 0.8 0 1.3-0.2 0.9-0.4 1.3-0.1 0.7 0.1 0.9 0.6 2 0 0.3-0.1 0.5 0.1 0.4 0.1 0.2 0.4 0.5 0.1 0.2 0.1 0.3 0.6 0.8 0.5 1.7 0.1 0.3 0.6 0.6 0.5 0.5 0.5 0.5 0.2 1.6 0.6 1 0.2 0.5 0.1 0.6 0 0.3 0.1 0.4 0.4 0.5 1.5 1 0.5 0.5 0.1 0.2 0.1 0.3 0.1 0.3 0.2 0.2 0.3 0.1 2.5 1.6 0.4 0.5 0.5-0.3 0.9 0 0.8 0.2 0.5 0.7 0.8 0.5 0.2 0.1 0.2 0.2 0.6 1.3 1 1.2 0.7 0.6 1.1 0.5 1.5 1.7 1.2 0.7 2.9 1 2 0.4 2.2 0.1 0.3 0.1 0.3 0.3 0.2 0.3-0.3 0.8 0.2 0.2 0.4 0.1 0.3 0.2 1.5 1.3 0.9 0.5 2.8 0.7 0.9-0.1 0.2 0.1 0.3 0.2 0.1 0.2 0.1 0.3 0.1 0.3 1.7 1.6 1.3 0.7 0.4 0.2 0.3 0.1 0.9 0.9 0.4 0.2 0.4-0.2 0.3-0.4 0.2 0 0.4 0.6 0.2-0.1 0.5-0.2-0.1 0.2z"
                                        id="chihuahua" name="Chihuahua">
                                    </path>
                                </a>
                                <a xlink:title="Durango">
                                    <path
                                        d="M465.6 221.5l1.5 1.3 2.5 2.2 1.3 1.1 1.2 1.2 1.4 1.1 1.6 1.4 1.3 1.5 0.4 1.8-0.3 1.8-0.8 1.6-0.7 1.6-0.5 1.7-0.2 1.7 0.1 1.9 0.2 1.8 0.2 1.8 0.1 1 0.1 1 0.1 1 0.1 1.7 0.1 0.9 0 1.1-0.1 1-0.3 0.5-0.6 0.3-0.3 0.4-0.2 0.5-0.3 0.6-0.6 0.6-0.2 0.3-0.3 0.4-0.2 0.3-0.4 0.1-0.3 0.2-0.3 0.3-0.5 0.3-0.4 0.3-0.3 0.4-0.2 0.6 0 0.7 0.3 0.6 0.4 0.5 0.5 0.5 0.3 0.3 0.4 0.4 0.2 0.4 0.1 0.3-0.2 0.2-0.7 0.2-0.3 0.2-0.6 0.8-0.4 0.9-0.4 0.9-0.1 1 0.1 0.6 0.2 0.4 0.4 0.4 0.5 0.3 0.6 0.5 0.5 0.6 0.4 0.7 0.4 0.9 0.7 1.1 1.2 0.8 1.3 0.7 1.1 0.8 0.5 1.1 0 1.4 0 1.4 0.2 1.3 0.8 1.3 1.3 0.8 1.4 0.5 1.4 0.4 1.3 0.3 1.3 0.3 1.3 0.5 1.3 0.6 0.7 0.5 0.7 0.5 0.7 0.5 0.7 0.6 0.1-5.9 0.7-0.2 0.8-0.8 0.6-0.9 0.5-0.7 2.8-3.7 0.5 1.1 0.6 1 0.7 1 0.7 0.9 0.9 1.1 1 1.2 0.8 1.3 0.4 1.3 0 2.2 0 2.2 0 2.2 0 2.3 0 2.3 0 0.9-0.1 0.5-0.4 0.2-2.2 0.2-1.4 0.3-1.5 0.4-1.4 0.4-1.4 0.3-1.4-0.1-1.4-0.2-1.4-0.2-5.6-1.2-5.6-1.2-1.2 0.3-1.4 0.5-1.3 0.7-0.9 0.8-0.2 0.6 0 0.6 0 0.6-0.3 0.5-0.5 0.2-0.6 0.1-0.7 0-0.5 0-0.5 0.1-0.4 0.2-0.2 0.5 0 0.5-0.2 0.5-0.4 0.2-0.6 0-0.6 0.1-0.4 0.4-0.2 0.4-0.2 0.5-0.2 0.4-0.7 1.1-0.6 0.9-0.6 0.7-1 0.7-0.9 0.4-0.8 0.3-1.4 0.6-1.1 0.7-0.3 0.5 0.2 0.7-0.1 0.7-0.1 0.9 0.2 0.9 0 1.1-1.1 0.4-1 0.3 0.3 0.8 0.5 0.6 0.5 0.5 0.4 0.7 0.1 0.8-0.2 0.5-0.3 0.4-0.2 0.5-0.3 0.4 0.4 0.9 0.8 0.5 0.7 0.6 0.4 0.8-0.1 0.7-0.3 0.9-0.4 0.6-0.6-0.2-0.7-0.8-0.7-0.2-0.7 0.4-0.4 0.9-0.1 0.7-0.1 0.7-0.1 0.6-0.4 0.6-0.9 0.7-0.9 0.7-1 0.6-0.9 0.6-0.7 0.5-0.3 0.3-0.2 0.6-0.1 0.8-0.3 4-0.2 1.3-0.1 1.6-0.1 0.8-0.3 0.5-0.7 0.3-0.4 0.3-0.2 0.4-0.1 0.9-0.2 3.7-0.1 3.7-0.1 3.7-0.1 3.7-0.2 1.4-0.3 1.4-0.5 1.4-0.4 1.3-0.5 1.7-1 3.5-0.5 1.8-0.2-1.3-0.2-1.4-0.3-2.6-1.1 0.5-2.3 0.9-1.1 0.5-0.9 0.1-0.9-0.4-1.7-1.1-0.8-0.8-0.5-1-0.3-1.1-0.4-1.6-0.1-0.5-0.2-0.4-0.2-0.3-0.7-0.4-1-0.7-1-0.5-0.7-0.1-1.9 1.4-1.9 1.4-0.6 0.6-0.9 0.7-0.9 0.5-0.8-0.1-0.2-0.6 0-1.1 0.2-1.9 0.1-0.9 0.2-0.5 0.3-0.5 0.6-0.6 1.2-1.2 0.7-0.7 0.3-0.4-1.5-3.6-0.3-0.7-0.3-0.4-0.4-0.4-0.7-0.4-1.4-0.7-1.5-0.8-1.5-0.8-1.5-0.5-1.6-0.2-1.7 0-1.7 0.1-1.6 0.1-0.2-4-1.2 0.1-1.4 0.1-1.2-0.1-1.1-0.6-0.5-0.5-0.5-0.6-0.6-0.5-0.4-0.4-0.3-0.2-0.1-0.3-0.1-0.3-0.2-0.3-0.4-0.4-0.5-0.3-0.5-0.3-0.3-0.5 0-0.4 0-0.4 0-0.4-0.1-0.4-0.2-0.4-0.3-0.4-0.2-0.3 0.2-0.6 0.1-0.3 0-0.4-0.1-0.3-0.5-0.5 0.1-0.3 0.1-0.3 0.1-0.3-0.4-0.8-0.5-0.7-0.5-0.7-0.2-0.8-0.5-0.1-0.5-0.1-0.5-0.1-0.4-0.2-0.6-0.5-0.3-0.7-0.2-0.9-0.1-0.7-0.3-0.6-0.3-0.6-0.3-0.5-0.2-0.6-0.3-2.4-0.2-1.3-0.2-1.4-0.1-1.4 0.2-1.3 0.5-1.1 0.5-1 0.4-1.1 0.3-1.1-0.7 0.3-0.8 0.1-0.6-0.1-0.6-0.6-0.5-0.8-0.4-0.9-0.7-1.8-0.3-0.9-0.4-1.1-0.4-1-0.6-0.8-2.3-2.1-0.8-0.7-0.3-0.3-0.4-0.2-0.3-0.2-0.4-0.2-1.3-0.2-1.1 0.2-1.2 0.6-1 0.8-0.4 0.5-0.3 0.5-0.4 0.5-0.4 0.4-0.5 0.2-0.5 0.1-0.5 0-0.5 0-0.7 0-0.5 0-0.5-0.2-0.6-0.5-0.5-0.5-0.6-0.5-1.1-1.1-0.3-0.5-0.1-0.5 0-0.5 0-0.6-0.1-0.7-0.1-0.6-0.2-0.6-0.3-0.6-0.4-0.8-0.2-0.4-0.2-0.5-0.2-0.6-0.4-0.4-0.8-0.7-0.7-1.2-0.4-1.3-0.6-1.1-1.1-0.7-0.6-0.3-0.4-0.5-0.3-0.6-0.3-0.6-0.4-0.3-0.5-0.1-0.4 0-0.5 0-0.6-0.1-0.5-0.2-0.3-0.3-0.3-0.6 0-0.5 0-0.5-0.1-0.4-0.2-0.4-0.5-0.3-1.1-0.3-0.4-0.3-0.4-0.5-0.2-0.7-0.2-0.7-0.2-0.6-0.6-1.4-0.4-1.5-0.4-1.5-0.5-1.5-0.3-1.6 0-1.6 0.2-1.7 0.3-1.6 0.2-1.5 0.3-1.6 0.4-1.6 0.6-1.2 0.6-0.7 0.6-0.5 0.5-0.6 0.4-0.7 0.3-0.7 0.5-0.6 1.1-1.1 3.5 0.4 0.6 0.1 0.8 0.1 0.7 0.1 0.6-0.1 0.6-0.3 0.6-0.6 0.6-0.6 0.5-0.6 2.4-2.1 0.6-0.5 0.4-0.4 0.4-0.4 0.3-0.4 0.1-0.6 0.2-3.8 0-1.4 0.1-1.2 0.4-1 1-0.6 0.6 0 0.5 0 0.6-0.1 0.5-0.4 0.3-0.6 0.3-0.7 0.2-0.8 0.2-0.7 0.1-1.3-0.2-1.2-0.5-1.2-0.5-1.2-0.5-1.1-0.3-1.1 0.2-1 0.9-0.7 2.8-0.8 2.7-0.9 0.6-0.2 0.4-0.3 0.2-0.5-0.1-0.7-0.3-0.7-0.2-0.7-0.5-1.5 0.1-0.5 0.5-0.5 0.6-0.5 0.5-0.3 0.2-0.3 0-0.5 0.1-0.9 0-0.8 0-1.1 0.1-1 0.4-0.7 0.5-0.2 0.5 0.2 0.4 0.5 0.3 0.4 0.3-0.6 0.7-1.3 0.3-0.7 0.2-0.3 0.1-0.2 0.4-0.5 0.5 0.4 0.5 0.3 1 0.7 1.2 1 1.2 1 1.2 1 1.3 0.7 0.8 0 0.9 0.1 0.8 0 0.8-0.2 0.8-0.1 0.5 0.5 0.4 0.8 0.5 0.8 0.6 0.6 0.6 0.7 0.6 0.6 0.7 0.5 4.5 2.5 2.7 1.5 0.6-0.1 0.9-0.5 1.6-0.9 2.6-1.4 0.9-0.4 0.4 0.4 0.8 0.9 1.1 1.7 0.6 0.3 0.4-0.5 0.4-0.7 0.4-0.4 0.7-0.1 0.8 0.1 0.7 0.1 0.7 0.2 2 0.3 1.7 0.6 1.7 0.9 1.6 1.2 1.1 1 1.3 1.1 1.3 0.4 1.1-1.1 1.5-2 2.8-3.9 1.4-1.9 1.1-1.6 1.1-1.6 1.1-1.4 1.4-1.2 1.1-0.4 1.3-0.2 1.2-0.1 1.2 0 0.9 0 0.7 0 0.7 0.2 0.8 0.3 4.9 2.1 5 2.1z"
                                        id="durango" name="Durango">
                                    </path>
                                </a>
                                <a xlink:title="Sinaloa">
                                    <path
                                        d="M299.9 263.6l1.7 0.6 0.4 0.2 0.6 0.9 0.4 0.3-0.6 0.4-1-0.5-1.1-0.7-0.9-0.4-0.2 0-0.3-0.1-0.2-0.1-0.3 0-2 0-0.4-0.2-0.2-0.5 3.6 0 0.5 0.1z m61.4-6.9l-1.1 1.1-0.5 0.6-0.3 0.7-0.4 0.7-0.5 0.6-0.6 0.5-0.6 0.7-0.6 1.2-0.4 1.6-0.3 1.6-0.2 1.5-0.3 1.6-0.2 1.7 0 1.6 0.3 1.6 0.5 1.5 0.4 1.5 0.4 1.5 0.6 1.4 0.2 0.6 0.2 0.7 0.2 0.7 0.4 0.5 0.4 0.3 1.1 0.3 0.5 0.3 0.2 0.4 0.1 0.4 0 0.5 0 0.5 0.3 0.6 0.3 0.3 0.5 0.2 0.6 0.1 0.5 0 0.4 0 0.5 0.1 0.4 0.3 0.3 0.6 0.3 0.6 0.4 0.5 0.6 0.3 1.1 0.7 0.6 1.1 0.4 1.3 0.7 1.2 0.8 0.7 0.4 0.4 0.2 0.6 0.2 0.5 0.2 0.4 0.4 0.8 0.3 0.6 0.2 0.6 0.1 0.6 0.1 0.7 0 0.6 0 0.5 0.1 0.5 0.3 0.5 1.1 1.1 0.6 0.5 0.5 0.5 0.6 0.5 0.5 0.2 0.5 0 0.7 0 0.5 0 0.5 0 0.5-0.1 0.5-0.2 0.4-0.4 0.4-0.5 0.3-0.5 0.4-0.5 1-0.8 1.2-0.6 1.1-0.2 1.3 0.2 0.4 0.2 0.3 0.2 0.4 0.2 0.3 0.3 0.8 0.7 2.3 2.1 0.6 0.8 0.4 1 0.4 1.1 0.3 0.9 0.7 1.8 0.4 0.9 0.5 0.8 0.6 0.6 0.6 0.1 0.8-0.1 0.7-0.3-0.3 1.1-0.4 1.1-0.5 1-0.5 1.1-0.2 1.3 0.1 1.4 0.2 1.4 0.2 1.3 0.3 2.4 0.2 0.6 0.3 0.5 0.3 0.6 0.3 0.6 0.1 0.7 0.2 0.9 0.3 0.7 0.6 0.5 0.4 0.2 0.5 0.1 0.5 0.1 0.5 0.1 0.2 0.8 0.5 0.7 0.5 0.7 0.4 0.8-0.1 0.3-0.1 0.3-0.1 0.3 0.5 0.5 0.1 0.3 0 0.4-0.1 0.3-0.2 0.6 0.2 0.3 0.3 0.4 0.2 0.4 0.1 0.4 0 0.4 0 0.4 0 0.4 0.3 0.5 0.5 0.3 0.5 0.3 0.4 0.4 0.2 0.3 0.1 0.3 0.1 0.3 0.3 0.2 0.4 0.4 0.6 0.5 0.5 0.6 0.5 0.5 1.1 0.6 1.2 0.1 1.4-0.1 1.2-0.1 0.2 4-0.8-0.1-0.7 0.1-0.5 0.3-0.4 0.6-0.2 0.7-0.1 0.4 0.2 0.4 0.2 0.6 0.5 0.7 0 0.3-0.2 0.5-0.5 0.4-0.6 0.5-0.6 0.5-0.5 0.4-0.5 0.6-0.6 0.6-0.5 0.8-0.2 0.7 0.1 0.3 0.2 0.2 0.2 0.2 0.6 0.4 0.2 0.2 0.2 0.3 0.2 0.5 0.2 0.3 0.3 0.2 0.4 0.1 0.3 0.2 0 0.2-0.2 0.5 0 0.2 0.1 0.1 0.4 0.1 0.1 0.1 0.3 0.8 0.3 0.9 0.2 0.9 0.2 0.8 0 1.2-0.8 0.7-1 0.1-1.1-0.3-0.4-0.4-0.5-0.4-0.4-0.4-0.5-0.3-0.7-0.2-0.7 0.2-0.7 0.2-0.6 0.1 0.3 1.2 0.2 0.7-0.1 0.6-0.5 0.4-0.5-0.5-0.9-1.5 0.2-0.2-0.2-0.5-0.3-0.4-0.3-0.2-0.3 0.4-0.2 0-0.3-1.9-1-1.6-2.6-2.6-1.4-1.8-0.5-0.5-1.3-0.9-0.2-0.2-0.1-0.1-0.1-0.1-0.2-0.1 0-0.3 0.6-0.9-0.4 0.1-0.4 0.2-0.4 0.3-0.3 0.3-5.9-7.6-0.3-0.2-0.6-0.2-0.3-0.2-0.6-0.5-3-3.4-0.5-0.3-0.4 0.1-0.3 0.2-0.3 0.1-0.4-0.1 0-0.3 0-1.3-0.1-0.5-1.1-1.7-0.6-0.4 0-0.3 0.4-0.3-0.1-0.2-0.1-0.2-0.1-0.2-1.2-2.3-0.4-0.4-0.5-0.1-0.6-0.4-1.3-1.2-0.1-0.2-0.2-0.2-0.3-0.8-0.3-0.4-0.8-0.4-0.5-0.6-0.7-1.1-0.9-1-0.6-0.4-1.3-0.5-0.3-0.7-0.3-1.6-0.5-0.7-0.5-0.6-0.5-0.6-0.4-1.5-0.9-1.7-4.3-4.6-1.5-1.2-0.6-0.2-0.4-0.3-1.7-1.6-4.5-3.1-2-1.4-0.4-0.4-0.1-0.8-0.4-0.4-1.2-0.6-1.2-0.8-1.9-1.9-7.3-4.5-0.6-0.6-0.2-0.6 0.1-0.4 0.2 0 0.2 0.2 0.2 0.2 0.1 0.2 0.1 0.1 0 0.4 0 0.1 2.5 1.4 0.3 0.1 4.4 2.8 0.5 0.2 0.4 0.2 0.5 0.3-0.4-0.3-0.9-0.6-0.5-0.3 0.2-0.3 0.6 0.3 1 0.8 0.1-0.4 0.1-0.1-0.3 0-0.2 0 0.4-0.4 0.3-0.3 0.2-0.3 0-0.7-0.1-0.5-1.2-2.7-0.3-0.3-0.5-0.3-0.6 0-0.5 0.1-0.4 0.2-0.3 0.4 0.5 0.1 0.8-0.3 0.2 0.2-0.1 0.3-0.8 0.9-0.3 0.2-1 0.4-0.6-0.4-0.4-0.7-0.6-0.4-0.7 0.4-0.2 0-0.3 0-0.2-0.1-0.6-0.5-0.2-0.3-0.1-0.2 0-0.5-0.1-0.3-0.2-0.1-0.5-0.2-0.2-0.1-1.3-1.4-0.4-0.1-0.4 0.3-0.6-0.6-0.7-0.6-0.8-0.3-0.7-0.2 0.1 0.4 0.2 0.2 0.5 0.4 1 1.1 0.5 0.4 1.4 0.8 0.4 0.5-0.9-0.2-2.4-1.5-2.7-2.4-0.3-0.5-0.1-0.5-0.2-1.3-0.1-0.6-0.3-0.6-0.4-0.5-0.3-0.2-0.2-0.1-0.1-0.3 0-0.2 0.1-0.1 0.3 0 0.3 0.1 0.6 0.4 0.2 0.2 0.5 0.4 0.5 0 0.3-0.8-0.2-0.6-0.3-0.6-0.5-0.5-0.4-0.3 0.4-0.3 0.1-0.6-0.2-1.2 0-0.6 0.2-0.4 0.4-0.9-0.3-0.5-1.3-1.1-0.4-0.1 0 0.7 0.4 1.8 0.1 0.2 0 0.2 0 0.5-0.2 1.1 0 1.2-0.1 0.4-0.2 0.1-0.2 0-0.2-0.1-0.3-0.3-0.2-0.1-0.1 0.2 0 0.2-0.2 0.1-1.2-0.7-0.9-1.4-2.5-5-0.8-1-1.1-1-0.6-0.3-0.3-0.2-0.2-0.4 0.7 0 0.7 0.1 0.6 0.4 0.2 0.6 1.9 2.2 0.4 1 0.1 0.2 0.2 0 0.2-0.1 0.2-0.1 0.6 0.4 0.2 0.1 0.2-0.1 0.1-0.3 0-0.7-0.1-0.5-0.3 0-0.4 0.1-0.3-0.2 0-0.2 0.4-0.6 0.1-0.2 0.2-0.3 0.2 0 0.1 0.1 0.2 0.3 0.6 0.7 0.6 0.3 1.3 0.1 1 0.5 0.3-0.3 0.1-0.4 0-0.3-3.3-3-0.4-0.2-0.5-0.1 0.2 0.3 0 0.2-0.2 0.1-0.4 0.1-0.4 0-0.4-0.3-0.5-0.6-0.7-1.3-0.2-0.2-0.4 0.1-0.4 0.2-0.3 0.2-0.4-0.2-0.5 0.2-0.8 0.1-0.8-0.1-0.6-0.3-0.2-1.1 0.1-0.2 0.2 0 0.7 0.5 0.4 0.2-0.1-0.5 0-1-0.1-0.5-0.3-0.3-0.8-0.4-0.2-0.2-0.8 3.7-0.4 0.6-0.1-0.3 0.2-1.6 0-0.5-0.3-0.7-0.4-0.5-0.5-0.4-0.5-0.3-3.3-1.4-1.9-1.2-1.3-0.4-1.3-0.1-1.1 0 0.7-0.6 1.3 0.1 2.3 0.7-0.7-0.4-1.2-1-1-0.2-1.7 0.5-0.8 0.1-0.4-0.6 1.3-0.1 0.3-0.2-0.4-0.6-0.1-0.3 0-0.2-0.1-0.2-0.3-0.1-0.1 0-0.4 0.4-0.2 0.1 0.3-1.1 0.1-0.5 0-1.7-0.1-0.5-0.2 0-0.2 0.1-0.3 0.1-1.1-0.5-0.1-0.3-0.1-0.1-0.2-0.1-0.1 0-0.3 0.2-0.2 0-0.6-0.1-0.4-0.1-0.2 0.1 0 0.6 0.1 0.4 0.2 0.2 0.1 0.2 0 0.4 0 0.4-0.1 0.3-0.2 0.2-0.2 0.2-0.5 0.4-0.4 0-0.4-0.3-0.3-0.5 0.1 0.1 0.2-0.1 0.1-0.2-0.2-0.3-0.2 0-1.6 0.1-0.4 0.3-0.1 0.3 0.4 0.6-0.9 0-1-0.7-1.6-1.7 0.7-0.4 0.2-0.1 0.2-0.3 0.1-0.4 0.2-0.4 0.4-0.1 1.1 0.4 0.2-0.1 0.4-0.1 0.2 0.3 0.2 0.7 0.3 0.2 0.1 0 0-0.3 0.2-0.4 0.1-0.2-0.1-0.4 0-0.1 0.2-0.2 0.2 0 1.7-1.7 0.3-0.5 0-0.2-0.1-0.3 0.1-0.2 0.1-0.1 0.2-0.1 0.1 0 0.1-0.2-0.1-1.2 0.3-0.7 1.3-1.1 0.2-0.7-0.3-0.5-0.4 0.4-0.7 1.4-0.5 0.7-0.4 1.1-0.5 0.5-0.8 0.3-1.5 0.5-0.7 0.5-1 1.6-0.6 0.5-0.8-0.3-0.8 0.5-0.6 0-0.4-0.4-0.4-0.8-0.2-0.7-0.2-0.4-0.3-0.1-0.4-0.1-1-0.5-0.8-0.6-0.2 0.2 0.1 0.4 0.2 0.4 0.3 0.3 2.1 1.8 0.5 0.8-0.1 0.6-0.7-0.6-0.7-1-0.8-0.9-1.1-0.3-3.5 0-1.2-0.3 0.7-0.5 0.9-0.3 1 0 0.9 0.4-0.1-0.6 0.1-0.6 0.1-0.2 0.2-0.3 0.1-0.1 0-0.3-0.2-0.1 0-0.1-0.3-0.4-0.6-0.5-0.7-0.3-0.5-0.2-0.6 0.1-0.3 0.2-0.2 0.4 0 2-0.1 0.3-0.4-0.5 0.2-0.7 0-0.8-0.1-0.8-0.2-0.4-0.7-0.2-0.1-0.6 0.1-0.8 0.3-1.3 0.2-0.3 0.1 0 0-0.7-0.1-0.5-0.1-0.4-0.2-0.5-0.2-0.8-0.1-0.6 0.1-1.6 0.1-0.5 1.1-2 1.2-1.3 0.6-0.7 0.4-1.4 1.1-2.2 0.3-0.1-0.1 0.5 0 0.7-0.1 0.4-0.1 0.4-0.1 0.4 0.2 0.3 0.3 0.1 0.3-0.3 0.1-0.4 0.2-1.1 1-1.8 0.2-0.1 1.2-0.8 0.6-0.4 0.3-0.3 0 0.5-0.2 0.6-0.4 0.3 0 0.2 0.6 0.3 1.5 1.3 0.5 0.1 0-0.4-0.4-0.8-0.1-0.5 0.3-0.2 0.3-0.1 0.2-0.2-0.1-0.5-0.9 0.1-0.7-1.5 0.3-0.6 0.8-0.7 3.2-2.4 3.1-2.5 3.1-2.5 3.1-2.6 3.1-2.7 3.2-2.6 0.2-0.5 0-0.8 0-0.8 0-0.7 0.2-0.9 0.3-0.9 0.3-0.8 0.3-0.9 0.8-0.8 0.7-0.8 0.7-0.9 0.7-1 0.4 0.7 0.7 0.3 0.8-0.1 0.7-0.1 0.7 0.2 0.5 0.3 0.3 0.6 0.4 0.6 1 1.3 1.6 0.7 1.7 0.4 1.5 0.3 0.8 0.4 0.2 0.8 0 1.8 0.5 1.1 0.7 1.1 0.7 1 0.7 1 0.6 0.8 1.3 1.3 0.6 0.8 0.6 1.6 0.2 2.1 0.2 2.1 0.2 1.9 0.4 3.2 0.4 3.2 0.1 1 0.3 0.5 0.6 0.3 1 0.2 1.3 0.2 2.1 0.5 6.4 1.4 0.9 0.2 0.8 0.6 0.5 0.8 0.3 1 0.1 0.6 0.1 0.5 0.1 0.6 0.2 0.5 0.1 0.5 0.1 0.4 0.3 0.3 0.4 0.1 0.3 0.2 0.3 0.4 0.1 0.5 0.1 0.4 0.1 0.5 0 0.5 0.1 0.5 0.2 0.2 0.7 0.2 0.9 0.5 0.8 0.5 0.8 0.6 0.8 0.7 0.5 0.7 0.6 0.8 0.5 0.7 0.6 0.6 1 0.5 1 0.6 0.9 0.6 0.9 0.8z"
                                        id="sinaloa" name="Sinaloa">
                                    </path>
                                </a>
                                <a xlink:title="Sonora">
                                    <path
                                        d="M287 235.8l0.1-0.2 0.7-1.2 0.1-0.6 0.1-0.4 0.2 0.1 0.1 0.4-0.3 0.8-0.2 0.2-0.2 0.3-0.2 0.2-0.1 0.3-0.3 0.1z m2-0.9l0.1-0.7 0-1.8 0.3-0.4 0.6 0 0.7 0.2 0.4 0.3 0.2 0.6 0 0.2-0.3 0.3-0.6 0.4-1.2 0.8-0.2 0.1z m-22.3-26.8l-0.3 0-0.7-1-0.7-0.5-0.9-0.4-0.5-0.1-0.3-0.3 0.3-0.1 0.6 0.2 1 0.5 0.9 0.6 0.6 1.1z m-18.7-9.9l-0.1 0.6-1.7-0.7-0.5-0.5-0.1-1.4 0.1-0.9 0.2-0.8 0.1-0.4-0.1 1.4 0.1 1.6 0.6 0.7 1.4 0.4z m-26.5-23.8l0.2 0.6-0.5-0.2-0.2-0.4-0.2-0.3 0.2-0.4 0.5 0.7z m-28.8-26.7l0 0.2-0.2-0.1 0-0.3-0.2-0.3 0.1-0.2 0.1 0.3 0.1 0.2 0 0.1 0.1 0.1z m0.1-18.4l0.2 0.6 0.3 0.4 0.1 0.2-0.1 0.3-0.1 0.3-0.1 0.4 0.1 0.4-0.1 0.6 1.2 1.5 1.2 2.7-0.5 1.2-0.1 1.2-0.4 1.8-0.5 0.5 0.2 0.5-0.5 0.7-0.2 0.7-0.3 0.5-0.2 0.6 0.1 0.8 0.4 0.1 0.2 0.5-0.3 0.2-0.3-0.2-0.5 0.2-0.7 0.6-0.5-0.6-0.6-0.1-0.4 0.2-0.3-0.5-0.4 0-0.6-0.7-0.4-0.3-0.4 0.2-0.3-0.2-0.6 0-0.4-0.2 0-0.5-0.9-0.1 0-0.3-0.8-0.5-0.9-0.4-0.4-0.4-0.3 0-0.4-0.3 0.9-0.6 0.9-0.6 0.5-0.7 0.2-0.1 0.2-0.3 0.1-0.4 0.1-0.3 0.2-0.4-0.1-0.4-0.4-0.3-0.1-1.5 0.1-1.6 0.3-1.5 0.4-1.4 0.2-0.4 0.3-0.5 0.3-0.4 0.5-0.4 0.5 0.5 0.7 0 1.2-1 0.6-0.1 0.8 0 0.6-0.1 0.4-0.4 0.2-0.3 0.5-0.2-0.1 0.3-0.5 0.5z m-5.5-1.5l-0.1 0-0.1-0.2 0.1-0.1 0.1 0.2 0 0.1z m-69.7-89.8l0.5 1.1-0.4 0-0.4-0.1-0.3-0.3-0.2-0.3-0.7 0.5-1.5-0.7-1.1-1.5 0.4-1.8 1 0.2 1.4 1.3 1.3 1.6z m179.7 14.5l-0.4 3-0.4 3.1-0.4 3.2-0.4 3.1-0.4 3.5-0.2 1.1-0.1 0.8-0.1 0.6 0.1 0.5 0.4 0.5 5.4 4.6 1.8 1.5 0.5 0.3 0.6 0.3 0.6 0.2 0.6 0.2 1 0.3 0.8 0.4 0.7 0.6 0.9 0.7 0.6 0.6 0.3 0.5 0.2 0.6 0.1 0.9 0.4 4.5 0.1 1.4 0.2 2.3 0.2 2.4 0.2 2.3 0.2 2.3 0 0.5 0 0.5 0 0.4-0.5 1.1-0.2 0.6 0 0.6 0 0.7-0.1 1-0.2 2.3-0.3 2.9-0.2 2.9-0.5 5.9-0.3 3.4 0 0.7-0.1 0.4-0.2 0.2-0.5 0-2.2 0.1 0.8 7.1 1.1 9.5 0.2 1.5 0.3 2.9 0.1 0.9 0 0.4 0.1 0.4 0.2 0.3 0.1 0.3 0.1 0.4 0 0.4-0.3 1-0.5 1.3-0.3 1.2 0 1 0.7 2.1 0.3 1.1 0.4 1 1.1 3 0.2 0.7 0.4 0.9 0.2 1 0 0.5-1.3 1.3-1.4 1.4-0.4 0.2-0.5-0.1-1.1-0.3-4.4-1.1-1.6-0.3-1.4-0.1-1.5 0-1.7 0.1-0.8 0.2-0.5 0.2-0.5 0.5-0.7 0.6-0.6 0.5-0.6 0.6-0.3 0.6 0.3 0.8 1.9 4.8 1 2.4 1 2.4 0.2 0.5 0.4 0.3 0.9 0.6 2.1 1.2 0.4 0.6 0.1 0.7 0.2 0.8 0.4 0.7 3.4 2.9-0.3 0.4-0.2 0.5 0 0.5 0 0.5 0.7 0.8 0.7 0.7 0.7 0.6 0.9 0.5 0.5 0.4 0.3 0.5 0.2 0.5 0 0.7 0 0.7-0.1 0.7-0.2 0.7-0.1 0.7 0 0.6 0.2 0.6 0.3 0.6 0.2 0.6 0.2 1.1-0.4 0.7-0.5 0.6-0.5 0.9-0.2 0.8 0 0.8 0.3 0.8 0.5 0.7 0.7 1.1 0.6 1.1 0.7 1.1 0.8 0.9 0.4 0.5 0.3 0.2 0.4 0.1 0.6-0.1 0.5-0.2 0.2 0.1 0.2 0.2 0.2 0.4 0.2 0.4 0.2 0.3 0.2 0.4-0.3 0.9-0.3 0.8-0.3 0.9-0.2 0.9 0 0.7 0 0.8 0 0.8-0.2 0.5-3.2 2.6-3.1 2.7-3.1 2.6-3.1 2.5-3.1 2.5-3.2 2.4-0.8 0.7-0.3 0.6-0.6-1.2-0.7-0.4 0.1 0.2 0.1 0.2 0.1 0.2-0.7-0.2-0.3 0-0.3 0-0.9 1-0.3 0.1-0.1-0.5 0.4-2.5-0.2-1.4-0.3-1.4-0.7-0.8-1.1-1.7-1.4-1-0.9-1.4-1-0.9-0.9-0.3-0.9-0.1-0.3-0.3 0.4-0.1 0.6 0.2 0.7 0.3-0.1-0.7-0.3-0.1 0.2-0.3-0.2-0.4-0.5-0.1-0.5 0-0.2-0.4-0.1-0.5-0.4 0.2-0.3 0.3-0.2-0.7-0.5-0.1-0.4 0.4-0.3 0.4-0.1 0.4 0.3 0.2 0.4 0 0.3 0.1 0.1 0.2-0.1 0.2 0 0.3 0.6 0.3 0.3 0.1 0 0.3-1.2-0.6-2.3-0.4-1.4 0.1-0.4 0.3-0.1 0.4-0.9-0.1-1-0.5-1.4-0.5-0.5-0.5-1.5-1.6-0.7-1.3-0.3-1.2-0.2-1.3-0.5-0.7-0.4-1.1-0.1-0.5-0.3-0.5-1-1.6 0.1-0.4 0.3 0.5 0.9 1.4 0.6 0.5-0.8-2 0-0.7-0.2-1.5-1.2-1.4-0.4-0.4-0.5-0.2-0.5-0.1-0.6 0-0.2 0-0.3 0.2-0.2 0.2-0.2 0.2-0.2 0.4-0.3 0.3-0.9-0.8-1.9-0.5-1.3-0.4-0.8-0.2-0.8-0.1-0.7-0.2-0.7-0.2-1.1-0.6-0.5-0.2-1.1-1.3-1-1.3-1.4-1-0.5-0.4-1.1-0.2-0.7 0-0.1-0.4 1 0.1 0.8 0.1 0.9 0.1 0.4-0.3-0.6-0.6-0.8-1-0.3-0.4 0.1-0.2 0.1-0.2 0-0.3-0.4-0.1-0.2-0.2-0.2-0.3-0.6 0.5-0.4 0.2-0.3 0.1-0.3-0.2-0.1-0.3 0-0.9-0.2-0.8-0.9-0.6 0-2.2-0.3-1.1-0.9-2.3 0-1.2 0.3-0.6 0.6-0.2 0.6-0.1 0.3-0.5 0-0.6-0.4-0.1-0.4 0.3-0.3 0.4 0.3-1.2 0.2-0.3 0.4-0.2 0.4 0 0.3-0.1 0.2-0.4-1.1-0.1-0.6-0.2 0-0.6 0.4-0.8-0.5-0.1-0.3-0.3-0.1-0.4 0.2-0.4 0.2 0.3 0.2 0.1 0.2-0.2 0.2-0.7 0.2 0 0.2 0 1.6-0.2 0.4-0.4-0.1-0.7-0.7 0.3-1.8-0.8-0.8 0.1 0.4 0.4-0.2 0.1-0.4 0-1-0.7-0.5-0.2-2.2-0.6-1.1-0.1-1.2 0.1-1.1 0.3 0-0.3 0.3-0.1 1-0.4-0.3-0.5-0.1-0.3-0.1-0.3 0-0.5-0.1-0.4-0.4-0.2-0.4 0-0.1 0.4-0.1 1-0.1 0.5-0.3 0.6-0.6 0.7 0.4-0.1 0.3 0.1 0.1 0.4 0 0.4-0.1 0.5-0.3 0.6-0.3 0.3-0.1-0.4-0.2-0.1-0.7-1-0.2 0-0.5-0.1-0.2-0.1-0.1-0.2-0.1-0.2-0.2-0.2-0.2-0.1 0.4-0.4 0.2-0.1 0.3 0-0.6-0.6-0.6-0.6-0.8-0.4-0.6 0.1-0.7 0.2-0.5 0.7-0.9 0-0.6 0 0.1-0.3 0.2-0.3-0.3-0.3-0.4-0.3-0.3 0-0.5-0.5-0.9-0.2-0.4-0.6-0.4-0.6-0.7-0.8-1-0.2-0.4-0.8-0.6-0.6-0.5-1.4-1.1-1.1-0.2-1.6-0.3-0.4-0.1 0-0.4 0-0.2-0.1-0.1-0.1-0.1-0.2-0.2-0.5-0.1-0.8-0.2-0.4-1.4-1.2-0.4-0.6-0.2-0.8 0.2-0.4 0.3-0.4 0.1-0.6-1.1 0.2-1.3-0.5-2.3-0.7-1.9-1.1-0.8-0.3-0.8-0.2-0.3 0-0.5-1.5-0.6-1.4-0.5-1.6-5.1-4.9-0.6-0.9-0.3-0.4 0.1-0.2 0.4 0 0.4-0.2 0.5-0.4 0.3-0.1 0.3 0.4 0.1 0.4 0.2 0.2 0.3 0.2 0.2-0.2 0.1-0.3 0-0.4 0-0.4-0.3-0.7-0.5 0-0.6 0.1-0.7 0-0.9-0.9-0.5-0.5-1.1-0.5-0.8-0.3-0.2-0.7-0.4-0.2 0-0.3-0.4-0.5-0.7-0.5-0.3-0.5-0.2-0.5-0.2-0.2-0.3-0.2-0.5-0.1-0.6 0.1-0.5-0.2-0.2-0.2 0.3-0.3 0.3-0.2-0.1-0.3-0.1-0.4-0.4-1.5 0-0.8-0.5-0.2 0.1-0.3 0.3-0.5 0.3-0.4 0-0.4-0.4-0.7-0.5-0.6 0.1-0.4-0.6-0.5-0.5-0.3 0.4-1.4 0-0.9-0.4-1-0.4-1.3-0.8-0.5-1.6 0-0.3 0.1-0.2 0.2-0.1 0.2 0.1 0.3-0.1 0.4-0.2-0.1-0.5-0.7-1.2-0.5-0.6-0.4-0.2-1.1 0.4-1.1 0.7-1.4 0.2-0.7 0-0.8-0.3-0.5-0.7-0.1-0.3-0.3-0.4-0.4 0.1-0.7-0.1-0.8-1.1-0.8-1.2-1.2-0.8-2.1-0.2-0.5-0.2-0.3-0.6 0-0.6-0.7-0.2-0.6-0.3-1.4-0.4-0.7-0.5-0.7-0.4-0.6-0.6-2.1-0.4-0.5-0.5-0.3-0.2 0.1-0.5-0.2-0.7 0.2-0.5-0.2-0.2-0.5 0.4-0.7-0.2-0.6 0.3-1.1 0.2-0.9-0.2-0.5-0.3-0.5-0.4-0.7 0-0.6 0.2-1.9 0-2.1-0.4-0.9-0.5-0.7-0.5-0.6-0.4-0.4-0.6-0.4-0.3 0-0.3-0.1-0.2 0.3-0.2-0.2 0.4-0.7 0-1.1 0-1.6-0.3-1.4-0.4-1-1.4-1.7-2.3-2.1-1.7-2.8-1.2-2.3-1.1-4.1-0.5-1.1 0.6-1.1 0.3-2.4 0.1-1.4-0.1-1.2-0.9-2.7 0-0.5 0.2-0.1 0.2 0.4 0.2 0.4 0.2 0.8 0.5 1.2 0.2 0.1 0.2-0.3 0.6-1.2 0.1-1.8 0-1.6 0.2-1.3-0.7-0.5-0.7-1.1-0.8-0.6-0.9-0.1 0.1 0.4 0.4 0.2 0.4 0.2-0.1 0.3-0.6-0.2-0.5-0.3-1.3-0.8-0.4-0.9-0.4-0.4-0.3-1-0.5 0-0.5 0.3-0.4 0 0.4 0.6 0.4 0.3 0.4 0.1 0.3 0.3-0.4 0.1-1.2-0.3-4.9-1-1.5-0.4-2.1-0.3-0.3-0.7-0.9-0.3-1.1-0.1-0.7-0.6 0.2-0.2 0.6 0.1 0.3-0.3-0.3-1.1-0.5-1.9 0-1.2-0.8-1.2-1.7-1.2-1.4-0.7-0.5-0.5-0.9 0-1.5-0.8-0.8-0.4-0.3-0.7-0.9 0.4-0.4 0.1-0.4 0-0.6-0.5-0.1-1.5-0.5-0.3-0.1 0.5 0 2 0 0.3 0.2 0.3 0.2 0.1 0.2 0 0-0.1 0.3 0.4-0.1 0.1-0.3 0.1-0.5 0.7-0.1 0.5-0.3 0.2-0.4 0-0.1 0.4-0.2 0.2-0.1 0.2-0.3 0.5-1.4 0-1.4-0.1-1.3 0-1.6-0.7-0.7-0.7-0.9-0.3-0.9-0.5-0.3-0.3-0.5-0.6-0.4-0.2 0-0.4-1.1-0.6-1.6-0.9-0.6-0.5-0.5-0.1-0.5-0.6-1-0.4-1.5-1.5-1.3-1.6-0.7-0.2-2.3 0.1-0.3-0.1-0.3-0.2-0.5-0.6-0.1-0.2-0.3-0.1-0.7-0.5-0.3-0.2-1.1-0.1-0.3-0.1-0.5-0.4-0.8-1.1-0.4-0.3-0.6-0.2-1.8-1.3-0.1-0.8 0-0.9 0-0.9 0.1-1-0.1-0.5 0-0.5-0.2-0.4-0.3-0.5-0.2-0.1-0.5-0.4-0.2-0.1 0-0.6 0.7-1.2 0.1-0.8-0.4-1.4-0.5-1.2-0.8-1.1-0.8-1.1-0.2-0.2 0.1-0.6 0.5-0.6 0.7-0.5 0.5-0.7 0.4-0.8 0-0.7 0-0.6 0.1-0.7 0.2-0.8 0.5-0.9 0.6-0.8 0.6-0.3 1.7 0.1 0.6-0.1 0.5-0.3 14.1 5.2 12.9 4.7 12.9 4.7 12.9 4.7 12.9 4.7 12.9 4.7 12.9 4.7 12.9 4.7 1.6 0.6 3.2 1.2 4.9 1.9 3.2 1.2 0.9 0.3 1.9 0.2 3.2 0 29.6 0 2.7 0 20.2 0 1.3 0 7.3 0z"
                                        id="sonora" name="Sonora">
                                    </path>
                                </a>
                                <a xlink:title="Zacatecas">
                                    <path
                                        d="M553.8 294.2l-0.4 1.4-0.4 1.1-0.5 0.9-1.2 0.6-1.1 0.7-0.9 0.9-0.8 1.1-0.7 1.1-1.5 2.7-1.6 2.7-1.6 2.7-1.4 2.7-0.5 0.8-0.6 0.4-0.7 0.1-0.8 0.2-0.7 0.5-0.6 0.6-0.6 0.7-0.5 0.7-1.2 1.4-1.3 1.3-1.4 1.1-1.5 1-1.3 0.7-1.3 0.7-1.2 0.8-1 1-0.3 0.5-0.2 0.6-0.2 0.5-0.4 0.5-0.4 0.2-0.6 0.1-0.5 0-0.5 0.2-1.1 0.7-1.1 1-0.8 1.1-0.8 1.2-0.8 1.1-0.9 1-1 0.9-1.1 0.8-0.6 0.4-0.6 0.3-0.7 0.3-0.6 0.1-0.6-0.3 0-0.5 0.1-0.5 0.1-0.5-0.4-0.3-0.5-0.1-0.6 0.1-0.5 0-0.3 0.4-0.2 0.6-0.3 1.3-0.1 0.6-0.2 0.8-0.2 0.7-0.4 0.4-0.5 0-0.5-0.2-0.5 0.1-0.3 0.6 0 0.7 0.3 0.3 0.4 0.3 0.4 0.3 0.4 0.5 0.2 0.7 0.3 1.4 0.3 1 0.1 0.7-0.2 0.8-0.5 0.8-0.3 0.9 0.1 0.8 0.4 0.8 0.4 0.8 0.4 0.8 0.3 0.7 0.4 0.9 0.3 0.8 0.9 1.6 1.2 1.3 1.3 1.2 1.4 1.3 0.2 0.3 0.3 0.2 0.4 0.1 0.4 0 1.1 0.7 1 1.3 0.9 1.4 0.7 1.3 0.7 0.9 0.5 0.7 0.6 0.6 0.8 0.4 0.9 0.1 0.7-0.3 0.7-0.5 0.7-0.5 0.3-0.1 0.2 0 0.2 0 0.3 0 1-0.2 0.6-0.9 0.4-1.1 0.5-1 0.9-0.6 1.3-0.2 1.4 0 1.1 0 0.7 0 0.7 0 0.7 0.1 0.5 0.5 0.4 0.9 0.4 1 0.8 1.9 0.1 0.7-0.4 0.4-0.5 0.3-0.6 0.3-0.5 0.5-0.4 0.5-0.2 0.6 0 0.8 0.3 1.1 0.8 2.3 0.3 1.2 0.3 3.1 0.1 1.1-0.1 0.5-0.3 0.5-0.3 0.4-0.3 0.4-2.6 3.5-1.3 1.8-1.3 1.7-0.1-0.7-0.2-0.5-0.4-0.1-0.6 0.1-0.5-0.1-0.5-0.5-0.5-0.7-0.5-0.5-0.4-0.3-0.4-0.3-0.5-0.3-0.4-0.2-0.5 0-0.5 0.1-0.4 0-0.5 0.1-0.8-0.2-0.7-0.5-0.7-0.6-0.7-0.5-0.5-0.3-0.4-0.6-0.4-0.6-0.5-0.5-0.5-0.5-0.8-0.5-0.9-0.4-0.7-0.4-0.4-0.9 0.1-1 0.1-1.3-0.1-1.2-0.3-0.8-0.6-0.3-1.3 0-0.6-0.3-0.4-0.4-0.3-0.4-0.4-0.3-0.6 0.1-0.4-0.4-0.3-1-0.4-0.4-0.2 0.1-0.2 0.1-0.2 0.1-0.2 0.2-0.6 0.2-0.6-0.5-0.4-0.8-0.3-0.7-0.3-0.7-0.4-0.8-0.5-0.3-0.6 0.6-0.3 0.6-0.4 0.7-0.4 0.4-0.6 0-0.4 0.2-0.3 0.3-0.3 0.4-0.3 0.3-0.3 0-0.3 0-0.3 0-0.3 0-0.2 0-0.2 0.1-0.3 0.3-0.2 0.8-0.2 0.4-0.5 0.3-0.6 0-0.6 0-0.5 0-1.1-0.1-1.2 0.1-1.1 0.5-0.7 1.1 0.1 0.5 0.5 0.5 0.3 0.6-0.1 0.9-0.4 0.8-0.6 0.8-0.7 0.7-0.6 0.7-0.6 0.7-0.5 0.8-0.5 0.9-0.4 0.8-0.5 0.6-0.4 0.6-0.4 0.6-0.4 0.6-0.2 0.7-0.2 0.7 0 0.7 0 0.7 0.3 1.3 0.7 0.9 0.9 0.6 1.1 0.7-0.3 1.5-0.2 0.8-0.2 0.9-0.1 0.9 0.3 0.7 0.6 0.1 0.5 0.3 0.4 0.3 0.6 0.3 0.5 0.1 0.6 0 0.6-0.1 0.5 0.3 0.2 1.2-0.4 1.5-0.7 1.6-0.5 1.2-0.1 0.2-0.1 0.2-0.3 0.3-0.3 0.1-0.4 0.1-0.4 0.1-0.2 0.2-0.3 0.5-0.2 0.2-0.4 0.4 0 0.6-0.1 0.5-0.4 0.4-0.7 0-0.1-0.3 0.2-0.5 0.1-0.4-0.4-0.4-0.6 0.1-0.5 0.4-0.4 0.4-0.8 0.7-0.9 0.4-1 0.2-0.9-0.1-0.7-0.2-0.8-0.2-0.7 0.1-0.3 0.7 0 2.3 0.1 1.1 0.2 1.6-0.1 1.5-0.3 1-0.8 0.1-0.8-0.5-0.9-0.6-0.7 0-1.1 0.2-1.2-0.3-1.1-0.7-1-0.6-0.9-0.5-1.1-0.6-0.6-0.3-0.6-0.2-0.5 0.1-0.5 0-0.5 0.1-0.5-0.1-0.5-0.4-0.4-0.5-0.5-0.3-0.6-0.1-0.6 0.1-0.7 0.1-0.7 0-0.6-0.2-0.5-0.3-0.1-0.5 0-0.5-0.2-0.6-0.6-0.3-0.6 0.1-0.7 0.4-0.6 0.4-0.7 0.4-0.3-0.1-0.1-0.4 0.1-0.8 0-0.7 0-0.4 0.2-0.3 0.5-0.4 0.3-0.4 0.2-0.6 0.1-0.7 0-0.6-0.1-1.2-0.2-1.2-0.3-1.1-0.3-1.2 0.7 0.3 0.7 0.5 0.7 0.4 0.7 0.1 0.6-0.4 0.4-0.7 0.7-1.4 0.7-0.5 0.9-0.4 0.7-0.5 0.1-0.8-0.1-1.1 0-1.4-0.1-1.3-0.4-0.9-0.3-0.9 0.5-0.9 0.9-0.9 0.7-0.7 1.2-1.1 0.6-0.6 0.6-0.5 0.4-0.2 0.4-0.1 0.3-0.1 0.4 0 0.4 0 0.4-0.1 0.3-0.2 0.3-0.4 0.6-0.9 0.8-0.1 0.9 0.3 1 0.1 0.6-0.1 0.5-0.2 0.4-0.4 0.3-0.6 0.3-0.9 0.3-0.5 0.4-0.3 0.8-0.3 0.2-0.4 0-0.4 0-0.5-0.1-0.4-0.5-0.3-0.5-0.1-0.3-0.1-0.1-0.8 0.1-0.4 0.4-0.1 0.4 0 0.4-0.2 0.3-0.3 0.4-0.5 0.2-0.6 0.3-0.5 0.2-0.4 0.2-0.6 0-0.6-0.2-0.5-0.3-0.2-0.4 0.1-0.4 0.1-0.4 0.1-0.1-0.5-0.1-0.3-0.1-0.3-0.4-0.3-0.5 0-0.6 0.2-0.7 0.2-0.5 0.2 0.1-0.5 0.1-0.6 0-0.6-0.1-0.3-0.5-0.3-0.5-0.3-0.9-0.7-1-0.8-1-0.8-1-0.9-1-0.9-0.2 0.3-0.1 0.3-0.4 0.5-0.3 0.6-0.5 1.3-0.2 0.4 0 0.3 0.2 0.1 0.4 0.2 0.3 0.2 0.1 0.3 0.1 0.3 0.3 0.2 0.4 0 0.3 0.1 0.1 0.3-0.1 0.4-0.2 0.1-0.5 0.4-0.3 0.1-0.3 0.8 0 0.9-0.2 0.7-0.6 0.3-0.7 0.3-0.4 0.9-0.3 1-0.3 0.8-0.3 0.9-0.3 0.4-0.1-0.3-0.2-0.3-0.4-0.1-0.4 0-1.1-0.2-0.3 0.1-0.5 0.6-0.3 0.2-0.4 0.2-0.8 0.2-0.5-0.1-0.6-0.7 0-1 0.1-0.6 0.3-1.3 0-0.6-0.1-0.7-0.1-0.6-0.2-0.6-0.2-0.5 0-0.4 0.1-0.4 0.2-0.6 0.3-1.1 0.4-1.8 0.6-1.5 0.7-0.5 0.1-0.7 0-0.3-0.1-0.3-0.2-0.1-0.4-0.1-0.3 0-0.2-0.2 0-0.4 0.1-0.4 0.1-0.4-0.2-0.3-0.4-0.1-0.6 0-0.7 0-0.4 0-0.2-0.2-0.1-0.2-0.2-0.1-0.3 0.2-0.7 1.4-0.5 1.6-0.3 1.8-0.3 1.5-1.7 7.4-0.1 0.6-0.3-0.3-0.3-0.6-0.3-0.8-0.1-0.6-0.1-0.7-0.1-0.6-0.1-0.6 0-0.7 0.1-0.7 0.2-0.5 0.3-0.5 0.2-0.6 0-0.6-0.1-0.5-0.3-0.5-0.2-0.5 0-0.5 0.3-0.3 0.4-0.2 0.3-0.3 0.2-0.5 0-0.5 0-0.5-0.1-0.5 0-0.6 0.3-0.4 0.4-0.3 0.6-0.4 0.5-0.8 0.2-1.3 0.2-1.4 0.1-1.1-1.6-0.3-3.2-0.7-1.6-0.3-0.2 4.9-0.1 1.1 0 0.8 0.2 0.6 0.7 0.6 0.8 0.6 0.3 0.5 0.1 0.5-0.2 1-0.5 2.8-0.2 0.4-0.2 0.1-0.6 0.2-1.6 0.3-1.6 0.1-1.6 0.1-1.6 0.5-1.1 0.6-1.2 0.5-1.2 0.5-1.2 0.6 0.4-0.9 0.1-0.5 0.1-0.4 0.5-1.8 1-3.5 0.5-1.7 0.4-1.3 0.5-1.4 0.3-1.4 0.2-1.4 0.1-3.7 0.1-3.7 0.1-3.7 0.2-3.7 0.1-0.9 0.2-0.4 0.4-0.3 0.7-0.3 0.3-0.5 0.1-0.8 0.1-1.6 0.2-1.3 0.3-4 0.1-0.8 0.2-0.6 0.3-0.3 0.7-0.5 0.9-0.6 1-0.6 0.9-0.7 0.9-0.7 0.4-0.6 0.1-0.6 0.1-0.7 0.1-0.7 0.4-0.9 0.7-0.4 0.7 0.2 0.7 0.8 0.6 0.2 0.4-0.6 0.3-0.9 0.1-0.7-0.4-0.8-0.7-0.6-0.8-0.5-0.4-0.9 0.3-0.4 0.2-0.5 0.3-0.4 0.2-0.5-0.1-0.8-0.4-0.7-0.5-0.5-0.5-0.6-0.3-0.8 1-0.3 1.1-0.4 0-1.1-0.2-0.9 0.1-0.9 0.1-0.7-0.2-0.7 0.3-0.5 1.1-0.7 1.4-0.6 0.8-0.3 0.9-0.4 1-0.7 0.6-0.7 0.6-0.9 0.7-1.1 0.2-0.4 0.2-0.5 0.2-0.4 0.4-0.4 0.6-0.1 0.6 0 0.4-0.2 0.2-0.5 0-0.5 0.2-0.5 0.4-0.2 0.5-0.1 0.5 0 0.7 0 0.6-0.1 0.5-0.2 0.3-0.5 0-0.6 0-0.6 0.2-0.6 0.9-0.8 1.3-0.7 1.4-0.5 1.2-0.3 5.6 1.2 5.6 1.2 1.4 0.2 1.4 0.2 1.4 0.1 1.4-0.3 1.4-0.4 1.5-0.4 1.4-0.3 2.2-0.2 0.4-0.2 0.1-0.5 0-0.9 0-2.3 0-2.3 0-2.2 0-2.2 0-2.2-0.4-1.3-0.8-1.3-1-1.2-0.9-1.1-0.7-0.9-0.7-1-0.6-1-0.5-1.1 0.6-0.9 0.5-0.4 0.6-0.2 1-0.1 7-0.7 2.3-0.3 0.9-0.1 0.9-0.2 0.9-0.1 0.9 0.1 9.8 3 0.6 0.6 0.6 1.2 0.5 1.2 0.4 0.9 0.9 0.9 1.1 0.7 1.3 0.3 1.2 0 0.5 0 0.5 0.3 0.5 0.3 0.4 0.3 0.3 0.6 0.2 0.7 0 0.7 0.1 0.7-0.7-0.1-0.6-0.2-0.6-0.2-0.7-0.2 0.2 0.6 0.3 0.8 0.3 0.7 0.4 0.3 0.9 0 2.6 0.2 0.7 0 0.7 0.1 0.6-0.1 0.6-0.4 1.2-1.3 0.7-0.7 0.6-0.6 0 0.2 0.1 0.5 0 0.2 1.3-0.3 1.1-0.1 1.1 0.2 1.1 0.7 0.4 0.5 0.4 0.5 0.4 0.6 0.3 0.6 0.3 0.5 0.1 0.6 0.2 0.6 0.2 0.6 0.8 0.9 1.2 0.8 1.3 0.6 1.2 0.1 0.6-0.2 0.6-0.2 0.5-0.1 0.6 0.2 1.3 0.7 0.6 0.4 0.6 0.4z"
                                        id="zacatecas" name="Zacatecas">
                                    </path>
                                </a>
                                <a xlink:title="Nuevo Leon">
                                    <path
                                        d="M586 181.5l0.3 0.3 0.3 0.5 0.4 0.4 0.3 0.2 0.5 0.2 0.3 0.1 0.1 0.3 0.1 0.5 0.1 0.3 0.2 0.2 0.4 0.6-1.7 0.8-1.6 0.8-1.5 0.9-1.5 1-0.1 0.5 0 0.8 0.1 0.9 0.2 0.3 4 0.7 0.7 1.1 0.5 2.4 0.3 2.6 0.2 1.6 0.2 1.5 0.2 0.8 0.2 0.5 0.7 0.6 0.2 0.5-0.1 0.7-0.3 1-0.6 1.7-0.7 2.3-0.1 2.2 1 1.2 0.4 0 0.2 0.1 0.2 0.1 0.2 0.1 0.6 0.1 0.5 0.1 0.1 0 0.4 0.3 0.3 0.2 0.4 0.2 0.4 0.2 0.1 0.2 0.1 0.3 0.2 0.2 0.3 0.1-0.5 0.6-0.5 0.7-0.4 0.6-0.1 0.8 0 0.9-0.3 0.6-0.5 0.5-0.6 0.7 0.7 0 0.6 0 0.7-0.1 0.6 0 0.4 0 0.5 0.2 0.5 0.3 0.4 0.2 1 0.4 1.1 0.4 1.1 0.7 0.7 0.9 0.2 1 0 1-0.3 1-0.4 0.9-0.4 0.5-0.1 0.3-0.1 0.5 0 0.7 0 0.6 0.2 0.5 0.3 0.6 0.5 0.6 0.8-0.4 0.7-0.6 0.4-0.1 0.2 0.5 0.3 0.5 0.3 0.4 0.3 0.4 1.4 1.8 0.4 0.2 0.5 0 1-0.1 0.4 0.1 0.2 0.3 0.2 1 0.2 1.7 0.1 2.2 0.2 2 0.6 0.9 0.2-0.2 0.3-0.4 0.3-0.2 0.2 0 0.4 0.1 0.3 0 0.1-0.1 0.3-0.5 0.2-0.1 0.7-0.1 0.6 0.3 0.4 0.4 0.5 0.6 0.8 0.8 0.8 0.9 0.8 0.8 0.8 0.7 0.4-0.7 0.4-1 0.5-0.8 0.5-0.6 0.7 0 0.9 0.2 0.8 0.3 0.7 0.3 2 0.5 3.2 0.9 0.4 0.9 0.1 1.9-0.1 1.9 0 1.3 0 7.2 0 1-0.2 1.6 0 1.5 0.2 0.9 0.5 0.2 0.8 0 1.3-0.1 0.5 0.1 0.2 0.1 0.1 0.3 0.1 1.3-0.4 0.5-0.6 0.4-0.5 0.4-1.1 0.9-3.3 2.8-3.4 2.9-1.7 1.4-1.7 1.5-0.7 0.5-0.6 0.5-0.6 0.2-0.7 0.1-0.8 0.2-0.8 0-0.7-0.3-0.5-0.7-0.5-0.7-0.4 0.1-0.4 0.6-0.4 0.7-0.6 0.2-0.2 0.4-0.3 0.5-0.6 0-0.6-0.2-0.2 0.3 0.1 0.5 0.2 0.6-0.5-0.1-0.5 0.1-0.4 0.2 0.1 0.4 0.3 0.4 0.4 0.5 0.4 0.5 0.2 0.3-0.2 0.4-0.3 0.5-0.4 0.4-0.3 0.4-0.4 0.7 0 0.8 0.3 0.8 0.4 0.7 0.1 0.3 0.1 0.3 0 0.3 0 0.4-0.7-0.2-0.9-0.3-0.8-0.3-0.7-0.4-0.6-0.5-0.4-0.1-0.3 0.2-0.4 0.5-0.3 0.3-0.3 0.3-0.3 0.1-0.4 0.1-0.7 0.1-0.6-0.1-0.5 0.1-0.5 0.5-0.1 0.2-0.1 0.2-0.1 0.1-0.3 0.2-0.2 0-0.5 0.1-0.2 0.1-0.4 0.4-0.1 0.4 0 0.5-0.1 0.6-0.1 0.4-0.2 0.1-0.2 0.1-0.4 0.1-0.2 0.2-0.2 0.3-0.3 0.2-0.2 0-0.3 0-0.2-0.3-0.3-0.1-0.2-0.1-0.6 0.2-0.7 0.2-0.7 0.3-0.5 0.4-0.6 0.5-0.5 0.5-1.1 1 0 0.7 0.2 0.9 0.6 1.8 3.3-1.4 0.4 1.8 0.4 2 0.1 0.8 0.1 0.6 0 0.6-0.2 0.7-0.3 0.9-0.2 0.9-0.2 0.9-0.3 0.9-0.1 1.2 0 1.7 0.2 1.5 0.5 1 0.5 0.4 1 1 0.5 0.5 0.6 0.4 0.6 0.4 0.5 0.5 0.4 0.5 0.2 0.7 0.1 0.8 0.1 0.5 0 0.3-0.4 0-0.4-0.1-0.5-0.1-0.3 0.2-2.6 3.7-0.5 0.6-0.9 0.1-0.9 0-0.9 0.1-0.8 0.2-1 0.1-0.9 0-0.9 0-0.7 0.1-0.3 0.1-0.3 0.2-0.4 0.4-0.4 0.7-0.3 0.7-0.3 0.6-0.4 0.8-0.4 0.9-0.4 0.8-0.3 0.9-0.4 0.7-0.2 0.4 0 0.4 0.4 1.3 0.3 1.3 0.7 2.6-0.8-0.2-0.8-0.2-0.9-0.4-0.7-0.3-1.1-0.2-0.9 0.4-0.8 0.8-0.9 0.8 0.7 0.4 0.8 0.5 0.7 0.5 0.3 0.6-0.3 1.9-2.1-0.3-2.2-0.1-2.1 0-2.1 0 0 0.9 0 0.9-0.1 0.3-0.3 0.1-0.9-0.2-1-0.2-0.7-0.3-0.6-0.6-0.3-1-0.2-0.8 0-0.6 0-0.2 0-1.2 0-0.6 0-0.6-0.1-0.5-0.2-0.5-0.2-0.5 0-0.6 0.1-0.5 0.2-0.6 0.2-0.6 0.1-0.6-0.1-0.4-0.1-0.5-0.3-0.9-0.3-1.2-0.3-1.3-0.2-1.2 0.2-1.2 0.2-1.1 0.1-1-0.1-1.1-0.2-1.1-1-1.3-1-1.2-0.9-1.3-0.5-1.5-0.3-1.8 0-1.9 0-1.8 0-1.8 0-1.1-0.1-1.1-0.1-1.2-0.2-0.9-0.4-0.7-0.6-0.7-0.6-0.6-0.5-0.7-1.1-1.5-1.1-1.6-1.1-1.6-1.2-1.4 0.3-1.6 0.5-1.7 0.5-1.6 0.4-1.6 0.2-0.9 0-0.7-0.2-0.8-0.3-0.9-0.3-1-0.1-0.6 0.1-0.6 0.7-0.5 0.6-0.4 0.5-0.4 0.1-0.5-0.4-0.7-1-1-0.5-0.5-0.6-0.1-0.8-0.5 0.5-1.3 0.8-1.5 0.8-0.9 1.8-1.2 1.8-1 1.9-0.6 2.1 0 0.8 0.2 0.8 0.2 0.8 0.3 0.8 0.3 0.8 0.3 0.7-0.1 0.7-0.1 0.8-0.3 0.5 0 0.7 0 0.7 0.1 0.4-0.2 0-0.3-0.1-0.8 0-0.3 0.1-0.3 0.3-0.2 0.3-0.1 0.3-0.1 1-0.3-0.4-0.5-1-0.6-0.8-0.5-0.8-0.6-0.3-0.2-0.5 0-0.6 0-0.6-0.1-0.6-0.1-0.5-0.1-0.6 0.1-0.6 0.2-0.7 0.2-0.5-0.1-0.3-0.3 0-0.3 0.2-0.3 0-0.3-0.8-0.7-1.2-0.3-1.2-0.3-0.8-0.8-0.2-0.7-0.7-0.7-1.2-0.5-1-0.5 0.2-0.7 0.8-0.1 1.1 0.3 1 0.5 0.9 0.3 0-0.5 0-0.4-0.1-0.4-0.3-0.4-0.4-0.2-0.9 0-0.4-0.2 0-0.3 0-0.4 0.1-0.3-0.2-0.4-0.3-0.2-0.2-0.2-0.3-0.1-0.3-0.1-0.8 0-0.6-0.1-0.6-0.3-0.6-0.7-0.8-1.1-0.8-1.2-0.7-1.3-0.5-1.3-0.2-1.2 0-1.3 0.2-1.3 0.1-1.3-0.1-0.9-0.8-0.5-0.9-0.4-0.7-0.6-0.3-0.9 0-1-0.1-0.9-0.3-1-0.4-0.5-0.5-0.5-0.5-0.4-0.6-0.2-0.6 0-0.4-0.1-0.3-0.3-0.4-0.6-0.3-0.5-0.2-0.6-0.1-0.6-0.1-0.6-0.8-1.2-1.1-1.2-1.2-1.1-1-0.9 2.3-2.1 2.4-2 2.2-1.9 2.1-1.9 2.2-1.9 2.2-1.8 1.2-1 1.3 4 0.5-0.5 0.6-0.5 0.5-0.5 0.5-0.5 1.1-1.5 0.7-1.7 0.5-1.8 0.5-1.8 0.1-0.7 0-0.7 0-0.8-0.1-0.7 0-0.8 0.1-1.1-0.1-1.1-0.2-0.7-0.6-0.4-0.8-0.1-0.9-0.1-0.6-0.4-0.4-0.6-0.2 0-0.1 0.4-0.2 0.5-0.2 0.1-0.3 0-0.3 0-0.2 0.2 0 0.2 0.2 0.2 0.1 0.2 0.1 0.2-0.1 0.5-0.4 0.3-0.5 0.1-0.7 0.1 0.1-0.9-0.4-0.4-0.6-0.1-0.5-0.2-0.5-4.3 0.1-0.7 0.3-0.4 0.5-0.4 0.6-0.3 2.8-1.8 0.4-0.4 0.4-0.5 0.4-0.4 0.4-0.3 3.7-1.4 0.2 0 0.1 0.3 0 0.3 0.2 0.2 0.3 0 0.3-0.1 0.6-0.3 0.7-0.9 0.4-1.7 0.3-2 0.3-1.5 0.3-1.2 0.3-1.5 0.3-1.4 0.5-1.2 0.8-0.9 1.2-0.9 1.2-0.7 1.1-0.8 0.6-0.5 0.4-0.3 0.2-0.1 5.8 4.9 0.5 0.5 0.2 0.1 0.3 0 1.8-1.7 0.8-0.8 0.8-0.8 0.8-0.7 0.9-0.7z"
                                        id="nuevoleon" name="Nuevo Leon">
                                    </path>
                                </a>
                                <a xlink:title="San Luis Potosí">
                                    <path
                                        d="M578.1 339.8l-0.2 1.1-0.6 2-0.2 1.1 0.5-0.5 0.8-0.7 0.8-0.5 0.5 0.1 0.1 0.7 0 0.6 0.1 0.6 0.3 0.6 0.8 0.9 0.9 0.8 0.7 0.9 0.2 1.1-0.1 0.5-0.2 0.5-0.2 0.4-0.3 0.3-0.7 0.5-0.7 0.3-0.8 0.2-0.7 0.5-0.4 0.4-0.1 0.4 0.2 0.4 0.3 0.5 0.3 0.4 0.1 0.4 0.1 0.4 0.1 0.6 0.2 0.2 0.4 0.2 0.5 0.2 0.4 0.1 0.7 0.3 1.5 0.7 0.7 0.3 1.6 0.6 1.7 0.7 1.7 0.7 1.6 0.7 0.6 0.2 0.6 0.2 1.2 0.4 0.8 0.3 0.6 0.1 0.3-0.3 0-0.9-0.1-0.5-0.3-0.9-0.1-0.5-0.1-0.4-0.1-0.2 0-0.1 0.3-0.1 0.3 0.1 0.4 0.3 0.6 0.5 0.4 0.6 0.6 0.7 0.5 0.7 0.6 0.4 0.5-0.2 0.4-0.4 0.7-1.1 0.3 0.4 0.1 0.2 0.1 0.2 0.5 0.9 1.1 1.9 0.4 1 0.4 0.8 0.3 0.8 0.4 0.8 0.6 0.7 0.6 0.5 0.7 0.2 0.7 0.1 0.8 0.1 0.9 0.2 0.9 0.2 0.9 0.3 0.9 0.2 0.3 0.1 1.1 0.4 0.9 0.4 1 0.3 1.1 0.1 0.6 0.1 0.9 0.2 0.8 0 0.6-0.1 0.4-0.4 0.3-0.4 0.3-0.4 0.5-0.3 0.9-0.1 1.1-0.1 0.9-0.3 0.5-0.7 0.3 0.2 0.3 0.2 0.3 0.2 0.4 0.2 0.2 0.1 0.5 0.4 0.7 0.4 0.6 0.5 0.6 0.5 0.6 0.5 0.9 0.5 1.9 1.1 0.9 0.6 0.7 0.6 0.6 0.7 0.2 0.8 0 1-0.4 1.3-0.6 1.4-1.4 2.4-0.3 0.5-0.2 0.5-0.3 1.1-0.2 0.1-0.3-0.3-0.3 0.4-0.3 0-0.3-0.1-0.4-0.1-0.4 0-0.4 0.2-0.2 0.1-1.2-0.2-0.3-0.1-0.1 0 0.1 1 0.5 0 0.8-0.2 0.6-0.1 0 0.3-0.4 0.3-0.3 0.4 0.2 0.7-0.7 0.2 0.1 0.7 0.5 0.8 0.4 0.4 1.3-0.2 0.2 0.4 0 0.4 0 0.4 0.3 0.1 0.5 0.2 0.1 0.4-0.1 0.5-0.2 0.3-0.3 0.4-0.4 0.3-0.8 0.5-0.1 0.1-0.1 0.3-0.1 0.1-0.2-0.1-0.4-0.2-0.2 0-0.3 0.2-0.2 0.2 0 0.3 0.3 0.2-0.5 0.5-1.2-0.2-0.5 0.4-0.1 0.9 0.1 0.6 0 0.5-0.4 0.4-0.1 0.2 0.3 0.7 0.4 0.5 0.6 0.4 1.6 0.8 0.6 0.5 0.3 0.7 0.1 1 0 0.7 0.1 0.6 0 0.6 0 0.6-0.5 0.2-0.5 0.1-0.9 0.3-0.3 0.2-0.2 0.2 0 0.3 0.1 1.5 0.1 1.2-0.1 1.2-0.2 1.2-0.3-0.2-0.3 0-0.3 0.1-0.2 0.2-0.2 0.2-0.3 0-0.2 0-0.3 0-0.5-0.2-0.4-0.1-0.8 0.1-0.8 0.3-0.8 0.3-0.7 0.4-0.6 0.1-0.5 0-0.6-0.3-0.5-0.3-0.8-0.3-0.4-0.2-0.3-0.3-0.2-0.3-0.1-0.5-0.1-0.4-0.2-0.7-0.2-0.2-0.1-0.2-0.2-0.2-0.8-0.2-1 0-0.9 0.3-0.6 0.7-0.4-0.4-0.6-0.3-0.6-0.1-0.5 0 0.1-0.6 0.3-2 0-0.5-0.3-0.5-0.5-1-0.3-0.9-0.3-0.8-0.3-0.9-0.3-0.8-0.2-0.9-0.9-3.1-0.1 0.7-0.5 0.6-0.8 0.4-0.5 0.5 0 0.4 0 0.4 0 0.3-0.3 0.3-0.3 0.2-0.3 0.1-0.2 0-0.6-0.3-0.1 0-0.2 0.1-0.2 0.1-0.2 0.3-0.1 1-0.2 0.2-0.2 0.2-0.1 0.3-0.3 0.5-0.3 0.5-0.1 0.2-0.2 0.2-0.4 0.1-0.4-0.1-0.4-0.1-0.4 0.1-0.5 0.1-0.3 0.1-0.2 0.1-0.4 0.6-0.8 0.1-0.9 0-0.7 0-0.2 0.1-0.2 0.1-0.2 0.2-0.4-0.1-0.3-0.2-0.4-0.5-0.3-0.2-0.4-0.2-0.1-0.4-0.2-0.4-0.2-0.4-0.2-0.2-0.2-0.1-0.2-0.2-0.2-0.2-0.3-0.3-0.4-0.3-0.5-0.3-0.4-0.2-0.9 0.3-0.5 0.9-0.4 1.1-0.4 1-1-0.5-0.8-0.5-1-0.3-1.2 0-1.3-0.1-1.3-1-1.2-1.3-1.2-0.9-0.3-0.2-1.1-0.3-1-0.4-1-0.3-1.1-0.3-0.4-0.1-0.4-0.1-0.3-0.2-0.4-0.2-0.6-0.3-0.6-0.2-0.6-0.3-0.5-0.3-0.4-0.2-0.3-0.1-0.3-0.1-0.4-0.1-0.2-0.2-0.2-0.2-0.3-0.1-0.4 0-0.3 0.2-0.4 0.2-0.3 0.3-0.2 0.3-0.2 0.4-0.2 0.4-0.2 0.5-0.1 0.4-0.2 0.7-0.1 0.8-0.1 0.7-0.3 0.7-0.7 0.5-1.1 0.2-1.1 0-1.1 0-0.7-0.5-0.6-0.5-0.7-0.6-0.6-0.6-1.5-1.1-1.5-1.2-1.5-1.2-1.4-1.2-1-1-0.5-0.5-0.5-0.4-1-0.3-1-0.3-1.1-0.1-1 0-1.1 0.1-1.2 0.3-1.2 0.2-1.1-0.1-0.4-0.2-0.3-0.3-0.4-0.3-0.2-0.3-0.2-0.5-0.1-0.5 0.1-0.5-0.1-0.5-0.5-0.6-0.7-0.2-0.8 0.1-0.7 0.3-0.3 0.1-1.2 0.8-0.9 0.4-1 0-1.2-0.7 1.3-1.7 1.3-1.8 2.6-3.5 0.3-0.4 0.3-0.4 0.3-0.5 0.1-0.5-0.1-1.1-0.3-3.1-0.3-1.2-0.8-2.3-0.3-1.1 0-0.8 0.2-0.6 0.4-0.5 0.5-0.5 0.6-0.3 0.5-0.3 0.4-0.4-0.1-0.7-0.8-1.9-0.4-1-0.4-0.9-0.5-0.5-0.7-0.1-0.7 0-0.7 0-1.1 0-1.4 0-1.3 0.2-0.9 0.6-0.5 1-0.4 1.1-0.6 0.9-1 0.2-0.3 0-0.2 0-0.2 0-0.3 0.1-0.7 0.5-0.7 0.5-0.7 0.3-0.9-0.1-0.8-0.4-0.6-0.6-0.5-0.7-0.7-0.9-0.7-1.3-0.9-1.4-1-1.3-1.1-0.7-0.4 0-0.4-0.1-0.3-0.2-0.2-0.3-1.4-1.3-1.3-1.2-1.2-1.3-0.9-1.6-0.3-0.8-0.4-0.9-0.3-0.7-0.4-0.8-0.4-0.8-0.4-0.8-0.1-0.8 0.3-0.9 0.5-0.8 0.2-0.8-0.1-0.7-0.3-1-0.3-1.4-0.2-0.7-0.4-0.5-0.4-0.3-0.4-0.3-0.3-0.3 0-0.7 0.3-0.6 0.5-0.1 0.5 0.2 0.5 0 0.4-0.4 0.2-0.7 0.2-0.8 0.1-0.6 0.3-1.3 0.2-0.6 0.3-0.4 0.5 0 0.6-0.1 0.5 0.1 0.4 0.3-0.1 0.5-0.1 0.5 0 0.5 0.6 0.3 0.6-0.1 0.7-0.3 0.6-0.3 0.6-0.4 1.1-0.8 1-0.9 0.9-1 0.8-1.1 0.8-1.2 0.8-1.1 1.1-1 1.1-0.7 0.5-0.2 0.5 0 0.6-0.1 0.4-0.2 0.4-0.5 0.2-0.5 0.2-0.6 0.3-0.5 1-1 1.2-0.8 1.3-0.7 1.3-0.7 1.5-1 1.4-1.1 1.3-1.3 1.2-1.4 0.5-0.7 0.6-0.7 0.6-0.6 0.7-0.5 0.8-0.2 0.7-0.1 0.6-0.4 0.5-0.8 1.4-2.7 1.6-2.7 1.6-2.7 1.5-2.7 0.7-1.1 0.8-1.1 0.9-0.9 1.1-0.7 1.2-0.6 0.5-0.9 0.4-1.1 0.4-1.4 1.2 1.4 1.1 1.6 1.1 1.6 1.1 1.5 0.5 0.7 0.6 0.6 0.6 0.7 0.4 0.7 0.2 0.9 0.1 1.2 0.1 1.1 0 1.1 0 1.8 0 1.8 0 1.9 0.3 1.8 0.5 1.5 0.9 1.3 1 1.2 1 1.3 0.2 1.1 0.1 1.1-0.1 1-0.2 1.1-0.2 1.2 0.2 1.2 0.3 1.3 0.3 1.2 0.3 0.9 0.1 0.5 0.1 0.4-0.1 0.6-0.2 0.6-0.2 0.6-0.1 0.5 0 0.6 0.2 0.5 0.2 0.5 0.1 0.5 0 0.6 0 0.6 0 1.2 0 0.2 0 0.6 0.2 0.8 0.3 1 0.6 0.6 0.7 0.3 1 0.2 0.9 0.2 0.3-0.1 0.1-0.3 0-0.9 0-0.9 2.1 0 2.1 0 2.2 0.1 2.1 0.3z"
                                        id="sanluispotosi" name="San Luis Potosí">
                                    </path>
                                </a>
                                <a xlink:title="Tamaulipas">
                                    <path
                                        d="M648.7 358.5l-0.9 0.4 0.2-0.4 0.5-0.5 0.2-0.3 0.6-1.5 0.3-0.4 0.1 0.7-0.4 1.1-0.6 0.9z m1.1 14.4l-0.2 0.2-0.9 0.6-0.3 0.1-0.3 0.2-0.2 0.4-0.3 0.3-0.4 0.1-0.3-0.4-0.3-0.4-0.3-0.3-0.6-0.6-0.1-0.5 0.4-0.4 0.2-0.4-0.4-0.4-0.5-0.3-0.6-0.4-0.6-0.4-0.5-0.1-0.8 0-0.8-0.3-0.8-0.3-0.7 0-0.5-0.1-0.5-0.4-0.6-0.5-0.5-0.4-0.6-0.5-0.3-0.9-0.2-0.7-0.6-0.2-0.4 0.1-0.3 0.2-0.3 0.2-0.3 0.1-0.4 0.1-0.1 0-0.2-0.1-0.4-0.2-0.5 0-0.2 0.7 0 0.8-0.1 0.6-0.3 0.2-0.5 0-0.4-0.1-0.4-0.2-0.5 0.3-0.2-0.4-0.2-0.5-0.3 0.1-0.5 0.4-0.3-0.1-0.3-0.3-0.5-0.3-0.2 0.1-0.1 0.1-0.1 0.1-0.5-0.4-0.2 0-0.1 0.1-0.2 0-1-0.1-1 0.2-1.1 0.2-1.1 0.2-0.4-0.2-0.3-0.2-0.3-0.2-0.3-0.2-0.5 0.7-0.9 0.3-1.1 0.1-0.9 0.1-0.5 0.3-0.3 0.4-0.3 0.4-0.4 0.4-0.6 0.1-0.8 0-0.9-0.2-0.6-0.1-1.1-0.1-1-0.3-0.9-0.4-1.1-0.4-0.3-0.1-0.9-0.2-0.9-0.3-0.9-0.2-0.9-0.2-0.8-0.1-0.7-0.1-0.7-0.2-0.6-0.5-0.6-0.7-0.4-0.8-0.3-0.8-0.4-0.8-0.4-1-1.1-1.9-0.5-0.9-0.1-0.2-0.1-0.2-0.3-0.4-0.7 1.1-0.4 0.4-0.5 0.2-0.6-0.4-0.5-0.7-0.6-0.7-0.4-0.6-0.6-0.5-0.4-0.3-0.3-0.1-0.3 0.1 0 0.1 0.1 0.2 0.1 0.4 0.1 0.5 0.3 0.9 0.1 0.5 0 0.9-0.3 0.3-0.6-0.1-0.8-0.3-1.2-0.4-0.6-0.2-0.6-0.2-1.6-0.7-1.7-0.7-1.7-0.7-1.6-0.6-0.7-0.3-1.5-0.7-0.7-0.3-0.4-0.1-0.5-0.2-0.4-0.2-0.2-0.2-0.1-0.6-0.1-0.4-0.1-0.4-0.3-0.4-0.3-0.5-0.2-0.4 0.1-0.4 0.4-0.4 0.7-0.5 0.8-0.2 0.7-0.3 0.7-0.5 0.3-0.3 0.2-0.4 0.2-0.5 0.1-0.5-0.2-1.1-0.7-0.9-0.9-0.8-0.8-0.9-0.3-0.6-0.1-0.6 0-0.6-0.1-0.7-0.5-0.1-0.8 0.5-0.8 0.7-0.5 0.5 0.2-1.1 0.6-2 0.2-1.1 0.3-1.9-0.3-0.6-0.7-0.5-0.8-0.5-0.7-0.4 0.9-0.8 0.8-0.8 0.9-0.4 1.1 0.2 0.7 0.3 0.9 0.4 0.8 0.2 0.8 0.2-0.7-2.6-0.3-1.3-0.4-1.3 0-0.4 0.2-0.4 0.4-0.7 0.3-0.9 0.4-0.8 0.4-0.9 0.4-0.8 0.3-0.6 0.3-0.7 0.4-0.7 0.4-0.4 0.3-0.2 0.3-0.1 0.7-0.1 0.9 0 0.9 0 1-0.1 0.8-0.2 0.9-0.1 0.9 0 0.9-0.1 0.5-0.6 2.6-3.7 0.3-0.2 0.5 0.1 0.4 0.1 0.4 0 0-0.3-0.1-0.5-0.1-0.8-0.2-0.7-0.4-0.5-0.5-0.5-0.6-0.4-0.6-0.4-0.5-0.5-1-1-0.5-0.4-0.5-1-0.2-1.5 0-1.7 0.1-1.2 0.3-0.9 0.2-0.9 0.2-0.9 0.3-0.9 0.2-0.7 0-0.6-0.1-0.6-0.1-0.8-0.4-2-0.4-1.8-3.3 1.4-0.6-1.8-0.2-0.9 0-0.7 1.1-1 0.5-0.5 0.6-0.5 0.5-0.4 0.7-0.3 0.7-0.2 0.6-0.2 0.2 0.1 0.3 0.1 0.2 0.3 0.3 0 0.2 0 0.3-0.2 0.2-0.3 0.2-0.2 0.4-0.1 0.2-0.1 0.2-0.1 0.1-0.4 0.1-0.6 0-0.5 0.1-0.4 0.4-0.4 0.2-0.1 0.5-0.1 0.2 0 0.3-0.2 0.1-0.1 0.1-0.2 0.1-0.2 0.5-0.5 0.5-0.1 0.6 0.1 0.7-0.1 0.4-0.1 0.3-0.1 0.3-0.3 0.3-0.3 0.4-0.5 0.3-0.2 0.4 0.1 0.6 0.5 0.7 0.4 0.8 0.3 0.9 0.3 0.7 0.2 0-0.4 0-0.3-0.1-0.3-0.1-0.3-0.4-0.7-0.3-0.8 0-0.8 0.4-0.7 0.3-0.4 0.4-0.4 0.3-0.5 0.2-0.4-0.2-0.3-0.4-0.5-0.4-0.5-0.3-0.4-0.1-0.4 0.4-0.2 0.5-0.1 0.5 0.1-0.2-0.6-0.1-0.5 0.2-0.3 0.6 0.2 0.6 0 0.3-0.5 0.2-0.4 0.6-0.2 0.4-0.7 0.4-0.6 0.4-0.1 0.5 0.7 0.5 0.7 0.7 0.3 0.8 0 0.8-0.2 0.7-0.1 0.6-0.2 0.6-0.5 0.7-0.5 1.7-1.5 1.7-1.4 3.4-2.9 3.3-2.8 1.1-0.9 0.5-0.4 0.6-0.4 0.4-0.5-0.1-1.3-0.1-0.3-0.2-0.1-0.5-0.1-1.3 0.1-0.8 0-0.5-0.2-0.2-0.9 0-1.5 0.2-1.6 0-1 0-7.2 0-1.3 0.1-1.9-0.1-1.9-0.4-0.9-3.2-0.9-2-0.5-0.7-0.3-0.8-0.3-0.9-0.2-0.7 0-0.5 0.6-0.5 0.8-0.4 1-0.4 0.7-0.8-0.7-0.8-0.8-0.8-0.9-0.8-0.8-0.5-0.6-0.4-0.4-0.6-0.3-0.7 0.1-0.2 0.1-0.3 0.5-0.1 0.1-0.3 0-0.4-0.1-0.2 0-0.3 0.2-0.3 0.4-0.2 0.2-0.6-0.9-0.2-2-0.1-2.2-0.2-1.7-0.2-1-0.2-0.3-0.4-0.1-1 0.1-0.5 0-0.4-0.2-1.4-1.8-0.3-0.4-0.3-0.4-0.3-0.5-0.2-0.5-0.4 0.1-0.7 0.6-0.8 0.4-0.5-0.6-0.3-0.6-0.2-0.5 0-0.6 0-0.7 0.1-0.5 0.1-0.3 0.4-0.5 0.4-0.9 0.3-1 0-1-0.2-1-0.7-0.9-1.1-0.7-1.1-0.4-1-0.4-0.4-0.2-0.5-0.3-0.5-0.2-0.4 0-0.6 0-0.7 0.1-0.6 0-0.7 0 0.6-0.7 0.5-0.5 0.3-0.6 0-0.9 0.1-0.8 0.4-0.6 0.5-0.7 0.5-0.6-0.3-0.1-0.2-0.2-0.1-0.3-0.1-0.2-0.4-0.2-0.4-0.2-0.3-0.2-0.4-0.3-0.1 0-0.5-0.1-0.6-0.1-0.2-0.1-0.2-0.1-0.2-0.1-0.4 0-1-1.2 0.1-2.2 0.7-2.3 0.6-1.7 0.3-1 0.1-0.7-0.2-0.5-0.7-0.6-0.2-0.5-0.2-0.8-0.2-1.5-0.2-1.6-0.3-2.6-0.5-2.4-0.7-1.1-4-0.7-0.2-0.3-0.1-0.9 0-0.8 0.1-0.5 1.5-1 1.5-0.9 1.6-0.8 1.7-0.8 0.2 0.2 0.1 0.2 1.1 0 0.2 0.2 0.4 0.6 0.1 0.1 0.3 0 0.7-0.4 0.4-0.1 0.3 0.2 0.4 0.7 0.2 0.1 0.5 0.2 0.6 0.3 0.7 0.6 0.2 0.5 0 1.5-0.1 0.8 0 0.3 0.2 0.2 0.5 0 0.3 0.2 0.1 0.3 0.1 0.5 0 0.1 0 1.3-0.1 0.5-0.3 0.8-0.1 0.7-0.1 0.5-0.1 0.3-0.1 0.4-0.5 0.6-0.2 0.3 0.9 0.4 0.2 0.1 0 0.1 0.1 0.3 0.1 0.1 0.3 0.2 0.1 0.1 0.5 0.5 0.3 0.6 0.2 0.6 0.1 0.7-0.1 0.7-0.5 1.5-0.1 0.8 0.1 0.1 0.1 0.2 0.2 0.3 0 0.3 0 0.3-0.7 1.2-0.1 0.3 0 0.3 0.3 0.5 0.1 0.2 0.4 0.2 0.7 0.2 0.6 0.3-0.1 0.5-0.4 0.7 0.4 0.5 1.2 0.6 0.3 0.5 0.2 0.7 0.2 1.6-0.1 0.5-0.2 0.4-0.2 0.3-0.2 0.4 0.2 0.7-0.1 0.3-0.3-0.1-0.1-0.2 0-0.5-0.1-0.4-0.2-0.3-0.4 0-0.3 0.2-0.2 0.4 0 0.4 0.6 0 0.4 0.7 0.4 0.5 0.9-0.4 0.2-0.3 0.1-0.3 0.1-0.3 0.1-0.4 0.2-0.4 0.3-0.3 0.6-0.5 0.5 0.4 0.1 0.2 0.1 0.3 0.1 0.2 0.2 0 0.1 0.1 0 0.4 0 1.4 0 0.5 0.4 1.1 0 0.6-0.1 1.6 0.1 0.4-0.4-0.2-0.4-0.3-0.3-0.1-0.2 0.3 0.1 0.4 0.6 0.8 0.2 0.4 0.3 0.8 1 0.4 1.3 0.1 0 0.1 0.2 0.8 0.8 0.3 0.8 0.2 0.3 0.5 0.4 1 0.1 0.5-0.2 0.4-0.2 0.4-0.2 0.5 0 0.3 0.7 0.6 0.6 0.1 0.6-0.1 0.6 0 0.2 0.1 0.2 0.4 0.2 0 0.2 0 0.5-0.2 0.8 0 0.2 0.2 0.3 0.5 0.5-0.5 1.2 0.9 0.7-0.2 0.3 0.2 0.3 0.1 0.3 0 0.2-0.3 0.3 0.2 0.3 0 0.2-0.2 0.3 0 0.1 0.2 0.5 0.6 1.1 0.6 0.3 0.5-0.1 0.6 0.4-0.1 0.4 0.1 0.4 0.1 0.3 0.3-0.4 0.5 0.1 0.2 0.3 0 0.2 0.1 0.7 0.6 0.3 0.2 0.4 0.1 1.9-0.7 0.9 0.5 1 0.3 0.9 0.3 0.6 0.8 0.5-0.6 0.9 0.3 1 0.6 0.9 0.2-0.3 0.7 0 0.4 0.4 0.1 0.8 0 0.2 0.2 0.7 1.2 0.3 0.3 2.5 1.3 1.2 0.3 1.1 0.1 1.5-0.4 0.6 0.1 0.2 0.9 0.3 0.1 0.7-0.2 1-0.5 0.4 0 1.8 0.2 2-0.2 2.4 0 0.7 0.2 0 0.5 0.5 0.1 2.7 0.2 0.6 0.1 0.6 0.3 0.6 0.5 0.3 0.5 0.3 0.5 0.3 0.5 0.9 0.4 1.4 1.5 0.6 0.4 0.5 0.2 0.5 0.1 0.7 0 0.2 0.3 0.2 0.5 0.3 0.5 0.7 0.1 0.1-0.1 0-0.2 0.1-0.2 0.2 0 0.2 0.2 0.1 0.3 0.2 0.2 0.3 0.1 0.6-0.3 0-0.7-0.2-0.8-0.1-0.6 0.2-0.2 0.7-0.5 0.5 0.3 0.8-0.2 0.5-0.5 0.1-0.6 0.4-0.1 1.6 0.1 2-0.2-0.9 4.8 0.4 1.4-0.3 0.7 0 1.6-0.3 0.7-0.3 0.6-0.4 1.4-2 5.1-1.8 3.9-4.4 7.3-3.1 11.6-3 11.5-1.8 14.9-0.1 1.2-0.2 1.4-0.2 7-0.3 0.6-0.5 0.2-2.3-0.2 0 0.2 0.9 0 0.7 0.1 0.4 0.4 0.2 0.9-0.2 3.1 0.2 0 0.2-0.9 0.1-2.3 0.3-1 0.4 1.2-0.7 7-0.5 3.3-0.3 6.2 0.8 9.9-0.3 4.2 0-2 0-0.6-0.4 0.4-0.9 3.6-0.3 0.5-1 1.1-0.1 0.2 0 0.5-0.2 0.2-0.2 0.1-0.8-0.3 0.6 0.7 0.1 0.7-1.1 2.5-0.1 0.5 0 0.5 0.3 0.3 0.4 0 0.4-0.2 0.2-0.3 0.1-0.4-0.2-1 0.1-0.5 0.4-0.4 0.1 0 0.1 0.3 0.1 0.6 0 0.9-0.7 2.8 1 3.5-0.1 1 0.2 0.4 0.2 1.8 0.1 0.3 0.2 0.4 0.6 1.5z m8.5-107.6l-0.6 1-0.3 0.5 0.1 0.5 0 0.5 0 0.3 0.5-0.1 0 0.4-0.2 0.5-0.3 0.3-0.4 0-0.2-0.3-0.1-0.6-0.3-0.3-1 0.2-0.3 0-0.4-0.1-0.4-0.1 0-0.2 0.4-0.2-0.5-0.3 0.4-0.1 0.2-0.3 0.1-0.3-0.2-0.3-0.2 0-0.4 0-0.7 0-0.2-0.1-0.4-0.1-0.3 0.1 0 0.2 0.2 0.4-0.1 1.3-0.2 0.1-0.2 0.2-0.2 0.5-0.1 0.5 0 0.4-0.2 0.2-0.5-0.2-0.7-0.3-0.4 0-0.3 0.2-0.5 0.4 0.5-0.2 0.2 0 0.5 0.1 0.4 0.3 0.5 0.1 0.4-0.1 0.3 0.2 0.3 1 0.3 1.2 0 0.8-0.1 0.4-0.5 0.7-0.3 3.5-0.4 0.8-0.5 0.8-0.2 0.2 0.5-0.2 0.5-0.1 0.2 0 0 0.3 0.2 0.2 0.3 0.3 0.2 0 0.4 0.1 0.4 0.2 0.5 0.2 0.6 0.4 0.1 0.2 0.1 0.3 0 0.6-0.4-0.3-0.3 0-0.2 0.3 0.2 0.4-0.4 0.7-0.2 0.2-0.4 0.1-1.6 0-0.1 0.3 0 0.6 0.2 0.5 0.3 0.2 0.4 0.1 0 0.2-0.2 0.2-0.1 0.4 0.5 1.4 0.2 0.9-0.4 0.4-0.3 0.4 0.3 0.8 0.5 0.2 0.2-0.9 0.2 0 0 0.7-0.2 1.9-1.1 3.6-0.2 1.3-0.1 0.2-0.3-0.1-0.4-0.3-0.2-0.1-0.3-0.8-0.3-0.3-0.1 0 0.1-0.2 0.2-0.2-0.1-0.3 0-0.3-0.1-0.2-0.3-0.1-0.3 0.3-0.4 0.1-0.4-0.2-0.4-0.2 0.2 0.5-0.2 0.3-0.4 0.2-0.3 0.3 0.1 0.5 0.2 0.3 0.3 0 0.3-0.3-0.4 1.4 0 0.7 0.2 0.6 0.4 0.3 0.6 0.1 0.6 0 0.5-0.3 0.4-0.5 0.5-0.4 0.5-0.1 0.2 0.7-0.1 0.6-0.3 1.2-0.4 6.4-0.3 1.3-0.1 1.9-0.2 0.6-0.2 0.5-0.1-0.2-0.1-0.2-0.1-0.3-0.1-0.3-0.2 0-0.1 1 0.2 0.7 0.3 0.3 0.2-0.5 0.3 0.8-0.1 1-0.2 1-0.4 0.7 0.5 0.7 0.2 1.5 0.2 3 0.2-0.4 1-14.8 0.7-4.7 0.7-5.9 1.5-5.7 0.7-4.5 0.4-1.2 0.2-0.4 0.2-0.4 0.1-0.3 0.1-1.3 0.1-0.3 0.7-1.1 0-0.7-0.1-0.8 0-0.7 1-1.9-0.1-0.3 0.6-2.8 0.2 0 0 0.7 1.4-2.4 0.6-1.4 0-1.1-0.1-0.3 0-0.4 0-0.5 0.1-0.2-0.1-0.3-0.2-0.3-0.1-0.4 0.2-0.1 0.7-0.2 0.1-0.5-0.3-0.4-1.2-0.2-0.3-0.2-0.2-0.2-0.2-0.2-1.3-0.7-0.7 0.4 0 0.7 0.5 0.6 0.6 0.2-0.3 0.6z"
                                        id="tamaulipas" name="Tamaulipas">
                                    </path>
                                </a>
                                <a xlink:title="Aguascalientes">
                                    <path
                                        d="M521.7 381.6l-0.2 0.4-0.1 0.1-0.6 0.9-0.5 0.7-0.7 0.5-1 0.4-0.7 0.3-0.5 0.6-0.5 0.6-0.8 0.2-0.8 0.5-0.3 0.8-0.1 0.9-0.2 0.9-0.4 0.7-0.6 0.3-0.7 0.2-0.7 0.3-0.7 0.6-0.6 0.6-0.7 0.6-0.7 0.5-0.9 0.2-0.9 0-0.8-0.1-1-0.1-0.9-0.1-2-0.4-1-0.1-1.5-0.4-1.2-0.7-1.1-0.9-1.3-0.6-1-0.2-1.1 0.2-1.1 0.4-0.9 0.4-1.1-0.7-0.9-0.6-0.7-0.9-0.3-1.3 0-0.7 0-0.7 0.2-0.7 0.2-0.7 0.4-0.6 0.4-0.6 0.4-0.6 0.5-0.6 0.4-0.8 0.5-0.9 0.5-0.8 0.6-0.7 0.6-0.7 0.7-0.7 0.6-0.8 0.4-0.8 0.1-0.9-0.3-0.6-0.5-0.5-0.1-0.5 0.7-1.1 1.1-0.5 1.2-0.1 1.1 0.1 0.5 0 0.6 0 0.6 0 0.5-0.3 0.2-0.4 0.2-0.8 0.3-0.3 0.2-0.1 0.2 0 0.3 0 0.3 0 0.3 0 0.3 0 0.3-0.3 0.3-0.4 0.3-0.3 0.4-0.2 0.6 0 0.4-0.4 0.4-0.7 0.3-0.6 0.6-0.6 0.5 0.3 0.4 0.8 0.3 0.7 0.3 0.7 0.4 0.8 0.6 0.5 0.6-0.2 0.2-0.2 0.2-0.1 0.2-0.1 0.2-0.1 0.4 0.4 0.3 1 0.4 0.4 0.6-0.1 0.4 0.3 0.3 0.4 0.4 0.4 0.6 0.3 1.3 0 0.6 0.3 0.3 0.8 0.1 1.2-0.1 1.3-0.1 1 0.4 0.9 0.7 0.4 0.9 0.4 0.8 0.5 0.5 0.5 0.5 0.5 0.4 0.6 0.4 0.6z"
                                        id="aguascalientes" name="Aguascalientes">
                                    </path>
                                </a>
                                <a xlink:title="Colima">
                                    <path
                                        d="M115.5 505.6l-0.2 0-0.2 0-1.1 0.1-0.5-0.2 0-0.4 0.7-0.4 1.7 0 0.1 0.1 0 0.2-0.1 0.3-0.1 0.1-0.3 0.2z m120.1-13.3l-0.5 0.1-0.7 0-0.5 0.3-0.5-0.5-0.4-0.4-0.5-0.2-1.4-0.6 0-0.3 0.2-0.5 0.2-0.8 0.5-0.7 1.2-1 0.7 0.2 0.7 0.6 0.5 0.7-0.2 0.7 0.5 0.2 0.4 0.5 0.2 0.6 0 0.6-0.4 0.5z m3-18.2l-0.1-0.1-0.1-0.2 0-0.3 0.1-0.3 0.4-0.8 0.2-0.3 0-0.5 0.2 0.2 0.3 0.3 0.3 0.7-0.8 0.6-0.3 0.3-0.2 0.4z m231.7 10.3l-0.4-0.1-0.2 0.3-0.1 0.3-0.1 0.4-0.2 0.1-0.4 0-0.1 0.1-0.1 0.1 0.1 0.4 0 0.1-0.2 0.1-0.4 0.2-0.4 0.2-0.3 0.2-0.4 0.3-0.2 0.1-0.3-0.1-0.4-0.2-0.1 0.1-0.1 0.1-0.1 0.2 0 0.2 0.1 0.3 0 0.3-0.2 0.4-0.1 0.5 0 0.4-0.1 0.4-0.4 0.4-0.4 0.2-0.4 0-0.5 0.2-0.3 0.3-0.2 0.4-0.1 0.4-0.1 0.5-0.2 0.5-0.3 0.4-0.7 0.5-1.7-1.7-5-3.6-0.8-0.9-3.5-1.7-2.9-1.5-1.9-0.7-1.7-0.6-0.6-0.2-0.5-0.2 0.1-1 0.7-0.1 0.2-0.3-0.2-0.6-0.7-0.6-0.4 0-0.3 0.3-0.2-0.1 0.1-0.6-0.5-0.2-0.5 0.1-0.3 0.2 0.1 0.5-0.2 0.1-0.3-0.3-0.3-0.2-0.3 0.5-0.4 0.3-0.4-0.7-1.1-0.5-0.6-0.4-2.8-0.6 0.1-0.8 0.3-0.4 0.5-0.4 0.5-0.5 0.3-0.8 0.1-0.4 0.4-0.2 0.8 0.1 0.2 0.2 0.3 0.3 0.2 0.2 0.3-0.1 0.1-0.3 0-0.5 0-0.2 0.2-0.2 0.3-0.1 0.2-0.2 0.3-0.1 0.4-0.3 0.2 0.1 0.3 0.3 0.3 0.2 0.3 0 0.4-0.1 0.5-0.1 0.3-0.1 0.4-0.1 0.3 0 0.3-0.1 0.3-0.2 0.5-0.4 0.5-0.4 0.6-0.1 0.7 0 0.6 0 0.3-0.4 0.2-0.6 0.2-0.7 0.4-0.4 0.4-0.3 0.4-0.2 0.2-0.7 0.1-0.8 0.3-0.5 0.4-0.5 0.9-1 1.2-1.2 0.1 0.4 0.1 0.4 0 0.1 0 0.1-0.1 0.2 0.8 0.5 0.9 0.4 0.8 0.5 0.8 0.5 0.5 0.3 0.6 0.3 0.7 0.3 0.5 0.2 0.7 0.3 0.6 0.2 0.5-0.1 0.5-0.7 0.4-0.2 0.5 0 0.4 0 0.5 0 0.8-0.5 0.7-0.8 0.7-0.8 0.8-0.4 0.4 0.5 0.3 0.7 0.5 1.4 0.3 0.5 0.6 0.4 0.5 0.3 0.4 0.6 0.1 0.4 0.2 0.3 0.2 0.3 0.3 0.3 0.3 0.1 0.3 0.2 0.4 0.2 0.2 0.2-0.1 0.4-0.1 0.3-0.2 0.3-0.1 0.4 0 0.6 0.1 0.6 0.1 0.7 0.1 0.5-0.2 1-0.4 1.3-0.3 1.2 0.1 0.8 0.6 0.8 0.3 0.8 0.3 0.9 0.2 0.9z"
                                        id="colima" name="Colima">
                                    </path>
                                </a>
                                <a xlink:title="Jalisco">
                                    <path
                                        d="M492.9 390.8l0.9-0.4 1.1-0.4 1.1-0.2 1 0.2 1.3 0.6 1.1 0.9 1.2 0.7 1.5 0.4 1 0.1 2 0.4 0.9 0.1 1 0.1 0.8 0.1 0.9 0 0.9-0.2 0.7-0.5 0.7-0.6 0.6-0.6 0.7-0.6 0.7-0.3 0.7-0.2 0.6-0.3 0.4-0.7 0.2-0.9 0.1-0.9 0.3-0.8 0.8-0.5 0.8-0.2 0.5-0.6 0.5-0.6 0.7-0.3 1-0.4 0.7-0.5 0.5-0.7 0.6-0.9 0.1-0.1 0.2-0.4 0.5 0.3 0.7 0.5 0.7 0.6 0.7 0.5 0.8 0.2 0.5-0.1 0.4 0 0.5-0.1 0.5 0 0.4 0.2 0.5 0.3 0.4 0.3 0.4 0.3 0.5 0.5 0.5 0.7 0.5 0.5 0.5 0.1 0.6-0.1 0.4 0.1 0.2 0.5 0.1 0.7-1.3 1.4-0.6 0.8-0.2 0.8 0.2 0.8 0.5 0.7 0.5 0.7 0.5 0.7-0.2 1.1-1.1 0.9-1.3 0.8-0.8 1.1 0.1 1.3 0.6 1 0.7 1 0.7 1.1 0.2 0.6 0 0.7 0 0.6-0.2 0.7-0.5 1-0.7 0.8-0.8 0.7-0.8 0.7-0.4 0.3-0.4 0.3-0.4 0.1-0.5 0-0.5 0-0.7 0-0.6 0.1-0.4 0.2-0.2 0.4-0.4 0.8-0.3 0.4-0.4 0.3-0.4 0.3-0.5 0.3-0.3 0.5-0.2 0.6-0.2 0.3-0.2 0.3-1.1 1.3-0.9 1.3-0.9 1.4-0.9 1.4-1.3 2.2-0.4 0.8-0.5 1-0.4 1-0.2 1.1 0.3 1 0.7 0.8 0.9 0.7 0.8 0.7 0.8 0.8 0.2 0.4 0.3 1.4-0.4 1-0.9 1-0.9 0.9-0.8 1.1-0.6 1-0.5 1.2-0.1 0.5-0.6 0.1-2 1-0.6 0.1-0.5 0.1-0.5 0.2-0.3 0.1-0.6-0.4-0.8-0.3-0.3-0.1-0.6 0.1-1.2 0.3-1.5 0.1-0.6 0.2-2.5 0.9-0.4 0.4-0.1 0.5-0.4 0.2-2 0.5-1.1 1.1-0.7 0.4-0.9 0.2-1.6 0-0.8 0.2-0.5 0.4-0.4 0.4-0.9 0.2-5.2 1.4-0.3 0.1-0.9 0.2-1.1 0.4-0.9 0.5-0.3 0.8 0.1 0.8 0.1 1 0.2 1 0.5 0.4 0.3 0.1 0.2 0.1 0.1 0.2 0.1 0.1 0.4 0 0.5 0 0.8-0.3 0.8-0.2 0.7-0.2 0.5 0.3 0.4 0.4 0.6 0.3 0.8 0 0.4 0 0.3 0 0.5 0 1.1 0.2 0.5-0.1 0.2 0.1 0.1 0.1 0.1 0.2 0 0.1 0 0.5 0 0.5 0 0.5 0.1 0.3 0.4 0.2 0.4 0.2 0.4 0.2 0.4 0.3-0.2 0.3-0.1 0.2-0.2 0.1-0.2 0.2-0.9 0.3-0.9 0.1-0.8 0.2-0.2 1 0 0.7 0.1 0.7 0.1 0.6 0.2 0.6 0.2 0.8 0.2 0.4 0.3 0.3 0.5 0.3 0.1 0.2 0.2 0.4 0 0.3 0.1 0.3 0.2 0.4 0.3 0.5 0 0.5-0.1 0.6-0.1 0.5-0.1 1 0.1 1.5 1.2 0.2 1.6-0.3 1.3-0.4 0.2 0 0.2 0.1 0.1 0.2 0.3 1.3 0.2 0.6 0.2 0.4 0.4 0.1 0.4 0.1 0.2 0.2-0.1 0.4-0.4 0.4-0.5 0.3-0.4 0.4-0.3 0.5 0 0.2 0.1 0.5 0 0.2-0.7 1-0.8 1.1-0.5 0.6-0.4 0.3-0.2 0-0.1-0.2-0.1-0.2-0.1-0.2-0.6-0.3-0.7-0.2-0.7-0.1-0.7 0.2-0.1 0.2-0.3 0.6-0.2 0.1-0.4 0-0.4 0.1-0.4 0.1-0.4 0.1-0.7 0.2-0.6 0.3-0.6 0.4-0.5 0.4-0.6 0.9-0.3 0.9-0.2 0.9-0.4 0.8-0.7 0.5-0.8 0.4-0.9 0.2-0.9 0.3-0.4 0.2-0.4 0.2-0.8 0.5-0.1 0.2-0.1 0.3 0 0.4-0.1 0.3-0.6 0.5-0.5-0.3-0.5-0.7-0.4-0.7-0.5-0.3-0.5 0-0.5 0-0.4-0.5-0.4-0.6-0.4-0.2-0.5 0.2-0.5 0.5-0.2 0.4-0.3 0.6-0.3 0.5-0.3 0.3-0.5 0.1-0.6 0-0.7 0-0.6 0-0.9 0-0.4 0.1-0.4 0.2-0.2-0.9-0.3-0.9-0.3-0.8-0.6-0.8-0.1-0.8 0.3-1.2 0.4-1.3 0.2-1-0.1-0.5-0.1-0.7-0.1-0.6 0-0.6 0.1-0.4 0.2-0.3 0.1-0.3 0.1-0.4-0.2-0.2-0.4-0.2-0.3-0.2-0.3-0.1-0.3-0.3-0.2-0.3-0.2-0.3-0.1-0.4-0.4-0.6-0.5-0.3-0.6-0.4-0.3-0.5-0.5-1.4-0.3-0.7-0.4-0.5-0.8 0.4-0.7 0.8-0.7 0.8-0.8 0.5-0.5 0-0.4 0-0.5 0-0.4 0.2-0.5 0.7-0.5 0.1-0.6-0.2-0.7-0.3-0.5-0.2-0.7-0.3-0.6-0.3-0.5-0.3-0.8-0.5-0.8-0.5-0.9-0.4-0.8-0.5 0.1-0.2 0-0.1 0-0.1-0.1-0.4-0.1-0.4-1.2 1.2-0.9 1-0.4 0.5-0.3 0.5-0.1 0.8-0.2 0.7-0.4 0.2-0.4 0.3-0.4 0.4-0.2 0.7-0.2 0.6-0.3 0.4-0.6 0-0.7 0-0.6 0.1-0.5 0.4-0.5 0.4-0.3 0.2-0.3 0.1-0.3 0-0.4 0.1-0.3 0.1-0.5 0.1-0.4 0.1-0.3 0-0.3-0.2-0.3-0.3-0.2-0.1-0.4 0.3-0.3 0.1-0.2 0.2-0.3 0.1-0.2 0.2 0 0.2 0 0.5-0.1 0.3-0.3 0.1-0.2-0.2-0.3-0.3-0.2-0.2-0.8-0.1-0.4 0.2-0.1 0.4-0.3 0.8-0.5 0.5-0.5 0.4-0.3 0.4-0.1 0.8-1.3-0.4-1.2-0.5-0.3-0.3-0.2-0.3-0.1-0.5-0.2-0.1-0.4 0.1-0.4-0.1-0.2-0.2 0-0.2-0.1-0.2-0.3-0.1-0.2 0-0.9 0.2-0.7 0.1-0.2-0.2 0.1-0.9 0.1-0.9 0-0.4-0.5-0.1-0.3 0-0.5 0.3-0.2 0.1-0.4-0.1-0.2 0-0.2 0-0.2 0.3-2.5-1.3-1.1-0.8-0.7-0.8-0.4-1.6-0.3-0.7-1-0.4 0-0.3 0.1-0.6 0-0.4-0.2-0.2-0.2-0.2-0.2-0.2-0.1-1.9-0.9-0.8-0.4 0-0.4 0.1-0.3-0.1-0.6-0.6-0.6-0.4-1.9-1.7-1.5-1.8-1.7-2.8-0.9-1-0.2-0.6-0.4-0.5-0.9-0.8-0.4-0.6-0.8-1.4-1.9-2.8-0.1-0.6-0.1-0.4-0.3-0.6-0.1-0.4 0-1.5-0.2-2.2-0.2-0.5-0.3-0.3-0.5-0.4-0.3-0.2-0.5-1-0.6-0.9-0.9-0.4-0.6-1.3-0.4-1.1-0.3-0.8 0.5-0.5 3.4-2.2 1.4-0.2 2.2 0 0.5-0.1 0.5-0.3 2.2-0.2 0.9-0.1 0.9-0.6 0.5-0.6 0.6-0.2 0.4-0.5 0.3-0.4 0.2-0.7 0.1-1.1-0.6-0.7-0.9-0.4-0.3-0.5 0.4-0.2 0.4-0.3 0.6-1.1 0.8-1 0.8-1 0.7-1.1 0.7-1.2 0.8-1.1 1-0.9 1.2-0.6 0.4 0 0.2 0.2 0 0.3 0.2 0.1 0.1 0.1 0.2-0.1 0.3-0.2 0.3-0.1 0.3 0 0.6 0.1 1.6-0.2 1.4-0.9 1.3-1.2 1.3-0.9 0.3 0 0.3-0.1 0.3 0.1 0.3 0 0.6 0.2 0.4 0.1 0.3 0.2 0.4 0.4 0.8 0.7 0.3 0.3 0.5 0.5 0.5 0.5 0.6 0.3 0.7 0.1 0.9 0 0.8 0.1 0.6 0.4 0.7 0.9 0.4 0.6 0.4 0.6 0.4 0.5 0.7 0.4 0.7 0.4 0.7 0.4 0.6 0.5 0.4 0.7 0.4 0.5 0.7 0.4 0.8 0.4 0.6 0.4 0.1-0.2 0-0.3 0.1-0.2-0.1-0.8 0-0.5 0-1.1 0.1-1.1 0.3-1 0.3-0.9 0.5-1 0.4-0.6 0.6-1.2 0.2-0.7 0.1-1.5 0-0.5-0.1-1.3-0.1-0.7-0.1-0.6-0.3-0.8 0-0.6 0.7-1 0.1 0 1.2-0.2 2.4 0 0.8-0.1 0.6-0.4 1.8-1.7 0.4-0.6 0.2-0.6 0-1.4 0.2-0.6 0.4-0.4-0.3-0.1-1.9-1-2.1-1.2-2-1.3-2.1-1.2 0.7-0.9 0.5-0.8 0.4-1 0.3-1.1 0.1-0.5 0.1-0.6 0.3-1.1 0.2-0.6 0.4-1 0.4-1 0.1-0.4-0.9-1.2-0.9-1.1-0.9-1.1-1-1.1-1.2-1.2-1.2-1.1-1.2-1.2-1.3-1.1-0.7-0.6-0.1-0.6 0.1-0.6 0.4-1 0.8-2.2 0.8-2.3 1.2-0.6 1.2-0.5 1.2-0.5 1.1-0.6 1.6-0.5 1.6-0.1 1.6-0.1 1.6-0.3 0.6-0.2 0.2-0.1 0.2-0.4 0.5-2.8 0.2-1-0.1-0.5-0.3-0.5-0.8-0.6-0.7-0.6-0.2-0.6 0-0.8 0.1-1.1 0.2-4.9 1.6 0.3 3.2 0.7 1.6 0.3-0.1 1.1-0.2 1.4-0.2 1.3-0.5 0.8-0.6 0.4-0.4 0.3-0.3 0.4 0 0.6 0.1 0.5 0 0.5 0 0.5-0.2 0.5-0.3 0.3-0.4 0.2-0.3 0.3 0 0.5 0.2 0.5 0.3 0.5 0.1 0.5 0 0.6-0.2 0.6-0.3 0.5-0.2 0.5-0.1 0.7 0 0.7 0.1 0.6 0.1 0.6 0.1 0.7 0.1 0.6 0.3 0.8 0.3 0.6 0.3 0.3 0.1-0.6 1.7-7.4 0.3-1.5 0.3-1.8 0.5-1.6 0.7-1.4 0.3-0.2 0.2 0.1 0.1 0.2 0.2 0.2 0.4 0 0.7 0 0.6 0 0.4 0.1 0.2 0.3-0.1 0.4-0.1 0.4 0 0.4 0.2 0.2 0.3 0 0.4 0.1 0.2 0.1 0.1 0.3 0 0.3-0.1 0.7-0.7 0.5-0.6 1.5-0.4 1.8-0.3 1.1-0.2 0.6-0.1 0.4 0 0.4 0.2 0.5 0.2 0.6 0.1 0.6 0.1 0.7 0 0.6-0.3 1.3-0.1 0.6 0 1 0.6 0.7 0.5 0.1 0.8-0.2 0.4-0.2 0.3-0.2 0.5-0.6 0.3-0.1 1.1 0.2 0.4 0 0.4 0.1 0.2 0.3 0.1 0.3 0.3-0.4 0.3-0.9 0.3-0.8 0.3-1 0.4-0.9 0.7-0.3 0.6-0.3 0.2-0.7 0-0.9 0.3-0.8 0.3-0.1 0.5-0.4 0.2-0.1 0.1-0.4-0.1-0.3-0.3-0.1-0.4 0-0.3-0.2-0.1-0.3-0.1-0.3-0.3-0.2-0.4-0.2-0.2-0.1 0-0.3 0.2-0.4 0.5-1.3 0.3-0.6 0.4-0.5 0.1-0.3 0.2-0.3 1 0.9 1 0.9 1 0.8 1 0.8 0.9 0.7 0.5 0.3 0.5 0.3 0.1 0.3 0 0.6-0.1 0.6-0.1 0.5 0.5-0.2 0.7-0.2 0.6-0.2 0.5 0 0.4 0.3 0.1 0.3 0.1 0.3 0.1 0.5 0.4-0.1 0.4-0.1 0.4-0.1 0.3 0.2 0.2 0.5 0 0.6-0.2 0.6-0.2 0.4-0.3 0.5-0.2 0.6-0.4 0.5-0.3 0.3-0.4 0.2-0.4 0-0.4 0.1-0.1 0.4 0.1 0.8 0.3 0.1 0.5 0.1 0.5 0.3 0.1 0.4 0 0.5 0 0.4-0.2 0.4-0.8 0.3-0.4 0.3-0.3 0.5-0.3 0.9-0.3 0.6-0.4 0.4-0.5 0.2-0.6 0.1-1-0.1-0.9-0.3-0.8 0.1-0.6 0.9-0.3 0.4-0.3 0.2-0.4 0.1-0.4 0-0.4 0-0.3 0.1-0.4 0.1-0.4 0.2-0.6 0.5-0.6 0.6-1.2 1.1-0.7 0.7-0.9 0.9-0.5 0.9 0.3 0.9 0.4 0.9 0.1 1.3 0 1.4 0.1 1.1-0.1 0.8-0.7 0.5-0.9 0.4-0.7 0.5-0.7 1.4-0.4 0.7-0.6 0.4-0.7-0.1-0.7-0.4-0.7-0.5-0.7-0.3 0.3 1.2 0.3 1.1 0.2 1.2 0.1 1.2 0 0.6-0.1 0.7-0.2 0.6-0.3 0.4-0.5 0.4-0.2 0.3 0 0.4 0 0.7-0.1 0.8 0.1 0.4 0.3 0.1 0.7-0.4 0.6-0.4 0.7-0.4 0.6-0.1 0.6 0.3 0.2 0.6 0 0.5 0.1 0.5 0.5 0.3 0.6 0.2 0.7 0 0.7-0.1 0.6-0.1 0.6 0.1 0.5 0.3 0.4 0.5 0.5 0.4 0.5 0.1 0.5-0.1 0.5 0 0.5-0.1 0.6 0.2 0.6 0.3 1.1 0.6 0.9 0.5 1 0.6 1.1 0.7 1.2 0.3 1.1-0.2 0.7 0 0.9 0.6 0.8 0.5 0.8-0.1 0.3-1 0.1-1.5-0.2-1.6-0.1-1.1 0-2.3 0.3-0.7 0.7-0.1 0.8 0.2 0.7 0.2 0.9 0.1 1-0.2 0.9-0.4 0.8-0.7 0.4-0.4 0.5-0.4 0.6-0.1 0.4 0.4-0.1 0.4-0.2 0.5 0.1 0.3 0.7 0 0.4-0.4 0.1-0.5 0-0.6 0.4-0.4 0.2-0.2 0.3-0.5 0.2-0.2 0.4-0.1 0.4-0.1 0.3-0.1 0.3-0.3 0.1-0.2 0.1-0.2 0.5-1.2 0.7-1.6 0.4-1.5-0.2-1.2-0.5-0.3-0.6 0.1-0.6 0-0.5-0.1-0.6-0.3-0.4-0.3-0.5-0.3-0.6-0.1-0.3-0.7 0.1-0.9 0.2-0.9 0.2-0.8 0.3-1.5z"
                                        id="jalisco" name="Jalisco">
                                    </path>
                                </a>
                                <a xlink:title="Michoacan">
                                    <path
                                        d="M570.9 442.6l1.6 0.8 1.1 1.6 0.7 1.9 0 1.9 0 0.8 0 0.9 0.4 0.6 0.6 0.5 0.7 0.3-0.1 0.8-0.1 0.5-0.1 0.4-0.6 2.2-0.6 2.2 0 0.4 0.2 0.8 0 0.3-0.6 1.5-0.3 1.1-0.5 1.7-0.2 0.6 0.1 0.3 0.2 0.6 0.3 0.7 0.4 1.2 0.3 0.6 0.4 0.4 0.5 0.5-0.4 0.5-0.8 0.5-0.5 0.3-3.3 1.9-0.8 0.6 0.9 1.4 0.2 0.4-0.1 0.3-0.3 0.3-0.3 0.4-1.6 2.1-1.3 1.7-1 1.4-0.3 0.4-0.7 0.8-0.3 0.4-0.3 0.3-0.5 0.3-0.3 0.4-0.2 0.5 0 0.4 0 0.5-0.1 0.4-0.4 0.3-0.4 0.2-0.4 0.2-0.4 0.4-0.3 0.4-0.1 0.2-0.2 0.1-0.1-0.1-0.2 0.1-0.2 0.2-0.1 0.2 0 0.3-0.3 0.2-0.6 0.6-0.2 0.3-0.1 0.6-0.3 0.4-0.4 0.4-0.3 0.2-0.2-0.7-0.2-0.8-0.5-0.5-0.7-0.1-0.5 0.3-0.4 0.6-0.4 0.5-0.4 0.5 0 0.6 0.5 0.5 0.6 0.6 0.3 0.5-0.2 0.7-0.4 0.5-0.2 0.5 0.1 0.8 0.3 0.7 0.2 0.7 0.2 0.7 0 0.8 0 0.9 0.1 0.7 0.3 0.6 0.6 0.5 0.9 0.6 0.8 0.6 0.8 0.6 0.8 0.6 0.3 0.6-0.2 0.7-0.4 0.7-0.5 0.7-0.2-0.5-0.4-0.2-0.1 0.1-1 1-0.7-0.7-0.3-0.5 0-0.5 0.2-0.4 0.3-0.3 0.3-0.3 0-0.3-0.1-0.5-0.1-0.3-0.1-0.2-0.1 0-0.3-0.1-0.1-0.1 0 0.1-0.2 0.5 0 0.1-0.5-0.2-0.5-0.3-0.4-0.3-1.1-1.2-0.4-0.2-3.4-0.1 0.4 0.5-0.2 0.3-1.1 0.3-0.2-0.8-0.1-0.4-0.2-0.1-0.4 0-0.3 0.1 0 0.1-0.2-0.2 0-0.6-0.1-0.1-0.7-0.4-0.7 0-1.6 0.4-5-0.3-0.8 0.3-1.6 0.5-1.7 0.4-1.6 0.5-1.7 0.3-0.8-0.1-0.7-0.2-0.6-0.3-0.6-0.4-0.5-0.4-0.3-0.5-0.2-0.4-0.3-0.5-0.4-0.4-0.5-0.2-0.5-0.1-0.5-0.1-2.6-0.2-1.3 0.1-1.2 0.4-1.3 1.8-0.4 2.1 0.2 2.3 0.4 2.3-0.1 0.8-0.3 0.8-0.6 0.7-0.4 0.6-0.2 0.3 0 0.3-0.2 0.2-0.3 0.1-0.3 0-0.6-0.1-0.3 0-0.5 0.3-0.4 0.1-0.5-0.1-0.5 0-0.5 0.1-0.5 0.2-0.5 0.1-0.6 0-0.5 0-0.3 0-0.3 0.2-0.3 0.3-0.3 0.3-0.1 0.3-0.2 0.6-0.2 0.9-0.1 1 0 1 0 0.9 0.2 0.6 0.6 1 0.1 0.5-0.1 0.3-0.2 0.3-0.3 0.6-0.2 0.2-0.5 0-1.2-0.6-1.8-0.9-4.2-1.2-1.7-0.7-1.2-0.1-2.7-0.9-2.9-0.3-1.6-0.3-4.4-1.8-2.9-1.5-1.6-0.6-1.1-0.1-1.7-0.2-0.4-0.4-0.5 0.1-2.5-1.1-0.6 0.1-1.7-0.6-0.5-0.3-1.1-0.4-0.6 0.2-0.5-0.4-1.4-0.8-2.4-1.1-0.8-1.4-1.6-3.8-1.1-1.3-0.3-0.2-0.3-0.4-0.5-0.3-0.5-0.4-1-0.6-0.4-0.1-0.1-0.4 0.7-0.9-0.4-0.8-1.1-1-0.2-0.2 0.7-0.5 0.3-0.4 0.2-0.5 0.1-0.5 0.1-0.4 0.2-0.4 0.3-0.3 0.5-0.2 0.4 0 0.4-0.2 0.4-0.4 0.1-0.4 0-0.4 0.1-0.5 0.2-0.4 0-0.3-0.1-0.3 0-0.2 0.1-0.2 0.1-0.1 0.1-0.1 0.4 0.2 0.3 0.1 0.2-0.1 0.4-0.3 0.3-0.2 0.4-0.2 0.4-0.2 0.2-0.1 0-0.1-0.1-0.4 0.1-0.1 0.1-0.1 0.4 0 0.2-0.1 0.1-0.4 0.1-0.3 0.2-0.3 0.4 0.1 0.4-0.2 0.4-0.1 0.9 0 0.6 0 0.7 0 0.6 0 0.5-0.1 0.3-0.3 0.3-0.5 0.3-0.6 0.2-0.4 0.5-0.5 0.5-0.2 0.4 0.2 0.4 0.6 0.4 0.5 0.5 0 0.5 0 0.5 0.3 0.4 0.7 0.5 0.7 0.5 0.3 0.6-0.5 0.1-0.3 0-0.4 0.1-0.3 0.1-0.2 0.8-0.5 0.4-0.2 0.4-0.2 0.9-0.3 0.9-0.2 0.8-0.4 0.7-0.5 0.4-0.8 0.2-0.9 0.3-0.9 0.6-0.9 0.5-0.4 0.6-0.4 0.6-0.3 0.7-0.2 0.4-0.1 0.4-0.1 0.4-0.1 0.4 0 0.2-0.1 0.3-0.6 0.1-0.2 0.7-0.2 0.7 0.1 0.7 0.2 0.6 0.3 0.1 0.2 0.1 0.2 0.1 0.2 0.2 0 0.4-0.3 0.5-0.6 0.8-1.1 0.7-1 0-0.2-0.1-0.5 0-0.2 0.3-0.5 0.4-0.4 0.5-0.3 0.4-0.4 0.1-0.4-0.2-0.2-0.4-0.1-0.4-0.1-0.2-0.4-0.2-0.6-0.3-1.3-0.1-0.2-0.2-0.1-0.2 0-1.3 0.4-1.6 0.3-1.2-0.2-0.1-1.5 0.1-1 0.1-0.5 0.1-0.6 0-0.5-0.3-0.5-0.2-0.4-0.1-0.3 0-0.3-0.2-0.4-0.1-0.2-0.5-0.3-0.3-0.3-0.2-0.4-0.2-0.8-0.2-0.6-0.1-0.6-0.1-0.7 0-0.7 0.2-1 0.8-0.2 0.9-0.1 0.9-0.3 0.2-0.2 0.2-0.1 0.1-0.2 0.2-0.3-0.4-0.3-0.4-0.2-0.4-0.2-0.4-0.2-0.1-0.3 0-0.5 0-0.5 0-0.5 0-0.1-0.1-0.2-0.1-0.1-0.2-0.1-0.5 0.1-1.1-0.2-0.5 0-0.3 0-0.4 0-0.8 0-0.6-0.3-0.4-0.4-0.5-0.3-0.7 0.2-0.8 0.2-0.8 0.3-0.5 0-0.4 0-0.1-0.1-0.1-0.2-0.2-0.1-0.3-0.1-0.5-0.4-0.2-1-0.1-1-0.1-0.8 0.3-0.8 0.9-0.5 1.1-0.4 0.9-0.2 0.3-0.1 5.2-1.4 0.9-0.2 0.4-0.4 0.5-0.4 0.8-0.2 1.6 0 0.9-0.2 0.7-0.4 1.1-1.1 2-0.5 0.4-0.2 0.1-0.5 0.4-0.4 2.5-0.9 0.6-0.2 1.5-0.1 1.2-0.3 0.6-0.1 0.3 0.1 0.8 0.3 0.6 0.4 0.3-0.1 0.5-0.2 0.5-0.1 0.6-0.1 2-1 0.6-0.1 3.3-0.5-0.5 1.2-0.2 0.7 0.4 0.4 0.4-0.3 0.3-0.9 0.6-0.2 0.4 0.3 0.3 0.8 0.3 3 0.1 0.2 0.2 0.1 0.1 0.2 0.2 0.8 0.2 0.4 0.4 0.1 0.8 0 0.3 0 0.4-0.3 0.3-0.1 0.3 0.1 0.5 0.3 0.1 0 0.3 0 0.3-0.3 0.3-0.1 0.3 0 0.9 0.2 1.1 0 0.5 0.1 0.5 0.4 0.3-0.5 0.8-1 0.2-0.5 0.1-0.2 0.3-0.5 0.1-0.3 0-0.3-0.1-0.4 0.1-0.3 0.1-0.3 0.2-0.1 1.1 0 0.2-0.1 0.7-0.3 0.3 0 0.6-0.1 1.1 0.2 0.6-0.1-0.1 0.4 0.1 0.3 0.2 0.2 0.4 0 0.6 0.1 0.7 0.2 0.6 0.4 0.2 0.5-0.3 0.5-1.2 0.6-0.3 0.5 0.1 0.3 0.2 0.1 0.2 0.1 0.2 0.3 0 0.2-0.1 0.2 0 0.2-0.1 0.2-0.1 0.2-0.1 0.1 0 0.1 0.2 0.3 0.2 0.2 0 0.2 0.1 0.2-0.1 1-0.3 1 0 0.8 0.9 0.5 0.3-0.1 0.3-0.2 0.3-0.1 0.3-0.1 0.2 0 0.5 0.4 0.2 0 0.5 0 0.4-0.1 0.3-0.1 0.5 0.1 0.5 0.3 0.7 0.2 0.6 0 0.6-0.2 0.5-0.6 0.2-0.9 0.3-0.7 0.8-0.2 0.3 0.3 0.3 0.3 0.4 0.1 0.5-0.1 0.7-0.3 0.7 0 0.8 0 0.7 0.3 0.1 0.2 0 0.3 0 0.2-0.1 0.3 0.1 0.2 0.4 0.4-0.1 0.6-0.6 0.3-0.7 0.3-0.6 0.5 0.2 0.8 0.7 0.5 0.9 0.4 0.8 0.3 0.5 0.2 0.5 0 0.6 0 0.5-0.1 0.7-0.2 0.5-0.3 0.5-0.5 0.4-0.6 0.3 0.4 0.6 0.5 0.2 0.4 0.3 0.6 0.4 0.3 0.5 0.1 0.8 0 0-0.7 0.2-0.3 0.3-0.1 0.6 0 0.6 0 1.7-0.1 1.3-0.1 0.7 0 0.5 0.1 0.1 0.4-0.1 0.4 0.1 0.3 0.3 0.2 0.5-0.1 0.2-0.5 0.2-0.6 0.4-0.4 0.7-0.2 0.8-0.1 1.5-0.1 0.5-0.4 0-1-0.2-1.2-0.4-0.7 0-0.4 0.1-0.3 0.3-0.6 0-0.1-0.1-0.1 0-0.2 0.1-0.2 0.2 0 0.2 0 0.5 0.1 0.3-0.2 0.3-0.4 0.3-0.5 0.1-0.3 0.3-0.6 0.2-0.4 0.3-0.4 0.5-0.5z"
                                        id="michoacan" name="Michoacan">
                                    </path>
                                </a>
                                <a xlink:title="Nayarit">
                                    <path
                                        d="M383.5 404.8l0.1 0.1 0.1 0.1 0 0.7-0.1 0.6-0.3-0.1-0.3 0.1-0.7-0.3-0.3-0.5 0.6-0.7 0.6 0.1 0.3-0.1z m-6.5-5.4l0.4 0.2 0.7 0.2 0.9 0 0.1 0.4 0.3 0.2 0 0.3-0.6 0.3-0.1 0.5-0.1 0.4-0.5-0.1-0.8-0.4-0.5 0-0.5-0.4-0.6-0.1-0.4-0.6 0.6-0.5 0.4-0.4 0.4 0.1 0.3-0.1z m-6.4-6.9l0.6 0.3 0.7-0.1 0.4 0.3 1.2 0.5 0.5 0.4-0.2 0.7 0.4 0.4 0.2 0.3 0.2 0.2 0.3 0.2-0.3 0.2-0.1 0.3 0.1 0.3 0.1 0.3-0.3 0.1 0 0.2-0.4 0.4 0 0.3-0.1-0.1-0.2 0 0-0.1 0.1-0.3-0.2-0.2-0.2 0-1.2-0.5-1.3-0.8 0.1-0.3 0-0.2-0.2-0.4-0.2-0.4-0.5-0.7 0.2-0.1 0-0.3 0-0.4-0.3-0.3 0.6-0.2z m-0.7-2.7l0 0.3 0.2 0.1 0 0.4-0.2 0.2 0.2 0.3-0.7 0.4-0.3-0.7 0.1-0.4 0.2-0.5 0.2 0.1 0.3-0.2z m74.1-18.4l-0.1 0.4-0.1 0.5-0.4 0.9-0.8 2.3-0.8 2.2-0.4 1-0.1 0.6 0.1 0.6 0.7 0.6 1.3 1.1 1.2 1.2 1.2 1.1 1.2 1.2 1 1.1 0.9 1.1 0.9 1.1 0.9 1.2-0.1 0.4-0.4 1-0.4 1-0.2 0.6-0.3 1.1-0.1 0.6-0.1 0.5-0.3 1.1-0.4 1-0.5 0.8-0.7 0.9 2.1 1.2 2 1.3 2.1 1.2 1.9 1 0.3 0.1-0.4 0.4-0.2 0.6 0 1.4-0.2 0.6-0.4 0.6-1.8 1.7-0.6 0.4-0.8 0.1-2.4 0-1.2 0.2-0.1 0-0.7 1 0 0.6 0.3 0.8 0.1 0.6 0.1 0.7 0.1 1.3 0 0.5-0.1 1.5-0.2 0.7-0.6 1.2-0.4 0.6-0.5 1-0.3 0.9-0.3 1-0.1 1.1 0 1.1 0 0.5 0.1 0.8-0.1 0.2 0 0.3-0.1 0.2-0.6-0.4-0.8-0.4-0.7-0.4-0.4-0.5-0.4-0.7-0.6-0.5-0.7-0.4-0.7-0.4-0.7-0.4-0.4-0.5-0.4-0.6-0.4-0.6-0.7-0.9-0.6-0.4-0.8-0.1-0.9 0-0.7-0.1-0.6-0.3-0.5-0.5-0.5-0.5-0.3-0.3-0.8-0.7-0.4-0.4-0.3-0.2-0.4-0.1-0.6-0.2-0.3 0-0.3-0.1-0.3 0.1-0.3 0-1.3 0.9-1.3 1.2-1.4 0.9-1.6 0.2-0.6-0.1-0.3 0-0.3 0.1-0.3 0.2-0.2 0.1-0.1-0.1-0.2-0.1 0-0.3-0.2-0.2-0.4 0-1.2 0.6-1 0.9-0.8 1.1-0.7 1.2-0.7 1.1-0.8 1-0.8 1-0.6 1.1-0.4 0.3-0.4 0.2-0.6-1.5-1-0.9-0.6-0.3-0.2 0.3-0.6 0.5-0.7 0.2-1-0.5-1.2-0.1-1.1-0.6-0.6 0.5-0.4-0.4 0.3-0.4 0.4-0.4 0.3 0.1 0.3 0.1 0.6-0.4 0.3-0.8 0.3-0.5 0.2-0.7 0.2-0.4 0.2-0.2 0.2 0.1 0.5-0.6 0.7-1.4 1-0.8 0.4-0.1 0.2-0.5 0.6-0.5 0.5-1.1 0.2-0.4 0.4-0.1 0.2 0.2 0.7 0.1 0.6-0.6 0.5-0.6 0.1-1 0-0.9-0.2-0.5 0.3-0.8-0.1-0.9 0.5-0.8-0.3-2.7-0.6-1.9 0.4-1.6 0.4-0.6 0.5-1 0.6-0.3-0.1-0.3-0.3-0.7-0.1-0.6-0.2-0.5-0.3-0.4-0.4-0.2-0.5-0.1-0.2 0.4-0.4 0.1-0.5-0.5-1.3-0.6-2.2-1.5-0.7-0.4-1.1-1-0.5-1.4-2.7-5.4-2.6-4.3-0.5-1.2-0.3-1.9 0.3-4.8-0.2-2.3-0.9-3.1-0.7-2.5-0.5-1.8-0.4-1 0.3-0.2 0.9 1.5 0.5 0.5 0.5-0.4 0.1-0.6-0.2-0.7-0.3-1.2 0.6-0.1 0.7-0.2 0.7-0.2 0.7 0.2 0.5 0.3 0.4 0.4 0.5 0.4 0.4 0.4 1.1 0.3 1-0.1 0.8-0.7 0-1.2-0.2-0.8-0.2-0.9-0.3-0.9-0.3-0.8-0.1-0.1-0.4-0.1-0.1-0.1 0-0.2 0.2-0.5 0-0.2-0.3-0.2-0.4-0.1-0.3-0.2-0.2-0.3-0.2-0.5-0.2-0.3-0.2-0.2-0.6-0.4-0.2-0.2-0.2-0.2-0.1-0.3 0.2-0.7 0.5-0.8 0.6-0.6 0.5-0.6 0.5-0.4 0.6-0.5 0.6-0.5 0.5-0.4 0.2-0.5 0-0.3-0.5-0.7-0.2-0.6-0.2-0.4 0.1-0.4 0.2-0.7 0.4-0.6 0.5-0.3 0.7-0.1 0.8 0.1 1.6-0.1 1.7-0.1 1.7 0 1.6 0.2 1.5 0.5 1.5 0.8 1.5 0.8 1.4 0.7 0.7 0.4 0.4 0.4 0.3 0.4 0.3 0.7 1.5 3.6-0.3 0.4-0.7 0.7-1.2 1.2-0.6 0.6-0.3 0.5-0.2 0.5-0.1 0.9-0.2 1.9 0 1.1 0.2 0.6 0.8 0.1 0.9-0.5 0.9-0.7 0.6-0.6 1.9-1.4 1.9-1.4 0.7 0.1 1 0.5 1 0.7 0.7 0.4 0.2 0.3 0.2 0.4 0.1 0.5 0.4 1.6 0.3 1.1 0.5 1 0.8 0.8 1.7 1.1 0.9 0.4 0.9-0.1 1.1-0.5 2.3-0.9 1.1-0.5 0.3 2.6 0.2 1.4 0.2 1.3z"
                                        id="nayarit" name="Nayarit">
                                    </path>
                                </a>
                                <a xlink:title="Campeche">
                                    <path
                                        d="M847 491l0 0.5-0.2-0.1-0.1-0.1-0.6 0.5-0.4 0.1-0.4 0.1 0.1-0.3 0.2-0.2 0.2-0.1 0.3-0.1-0.6 0.1-1.1 0.4-0.5 0-1.2 1.7-0.9 0.8-1.1 0.2 0.7-1.2-1.7 1.1-1 0.4-0.9 0.2-0.6 0-0.2-0.1 0.1-0.3 0.5-0.5 0.3-0.2 1.4-0.6 0.9-0.2 1.7-0.9 1.2-0.8 1.5-0.5 1.4-0.7 0.5 0 0.2 0.2 0.2 0.3 0.1 0.3z m66.4-29.5l1.4 1.9 1.7 1.5 2 1.4 3.8 3.4 3.1 3.9 0.7 2.4-0.3 2.1 0.1 2.4-0.1 0.5 0.1 1.1-0.5 0.9-1.5 1.5 0.2 2.5-1 6.6 0.2 1.9 1.1 1.4 0.3 1.8-0.4 0.5-0.2 0.5 0.5 0.2 0.5 0.3 0 0.7-0.3 0.8-0.2 0.7 0.6 3 0.2 2.3 0 2.1-0.7 1.9-2.7 3.3-0.3 0.5 0.2 2.6-0.2 0.4-0.2 1.3 0 2.9-13.9 0-6.9-0.1-6.9 0-7 0-6.9 0-13.8 0-1.4 0-0.7 0.2-0.2 0.3 0-1.7 0-3.8-1.9-0.1-1.8-0.1-0.5-0.1-0.2-0.2-0.3-0.3-0.3-0.3-0.6-0.2-0.6-0.1-1.3 0.1-0.5-0.1-0.6-0.4-0.6-0.4-0.5-0.4-0.6-0.4-0.5-0.3-0.5-0.2-0.7 0-0.6-0.1-0.5-0.2-0.5-0.1-1-0.4-0.4-0.1-0.3-0.1-0.4 0-0.7 0-0.9-0.1-0.9 0.1-0.7 0.2-0.2 0.4-0.2 0.6 0 0.3 0 0.4 0.1 0.4 0 0.2-0.1 0.6-0.3 0.8-0.4 0.8-0.2 0.3-1.6 0-3 0-1.6 0-1 0-1-0.5-0.9-0.6-0.9-0.5-0.5-0.3-0.2-0.5-0.1-0.6-0.6-0.3-0.5-0.2-0.4-0.2-0.4-0.2-0.4-0.3-0.7-0.5-0.7-0.6-0.8-0.6-0.8-0.5-0.4-0.8-0.1-1.3 0.1-1.3 0.1-1 0-3.1 0.1-3-1.4 0-1.5 0.1-1.5 0-1.4-0.2-0.3 0-0.2 0.2-0.3 0-0.3-0.1-0.3-0.2-0.5-0.4-0.2-0.2-0.5-0.6-0.3-0.8-0.1-0.8-0.3-0.8-0.4-0.6-0.4-0.6-0.4-0.7-0.1-0.6 2.3-0.7 3.6-0.2 3.3-0.3 4-0.5 2.5 0.1 1 0.2 0.9 1 1.7 1.1 0.2 0.3 0 0.4-0.2 0.3-0.3 0.3-0.4 0.1 0.2-0.2 0-0.3-0.3 0.2-0.4 0.1-0.9 0-0.3-0.2 0.1-0.3 0.1-0.4-0.2-0.3-0.2 0-0.2 0.1-0.7 0.5-0.1 0-0.1-0.1-0.3 0-0.5 0.1-0.1 0.1 0.2 0.2 0.5 0 0 0.3-0.4 0.1-0.4 0-0.4-0.1-0.3-0.3 0 0.2 0.1 0.3 0.1 0.2-0.3 0.2-0.2 0.3-0.1 0.3-0.1 0.4 0.2-0.2 0.5-0.3 0.6 0.5 0.3 0.1 0.4 0.1 0.7-0.2 0.4-0.1 0.2 0.2 0.2 0.4 0.5 0.4 0.6 0.3 0.6 0.1-0.8-0.6-0.9-0.6-0.7-0.7-0.2-1 0.7 0.3 0.3 0.3 0.4 0.1 0.8-0.3-0.4 0.7 0.4 0.2 0.4 0.2 0.3 0.3 0.2 0.5-0.5-0.3 0 0.3-0.2 0 0.6 0.3 1.2 0.4 0.4 0.4-0.1 0.5-0.8 0.9-0.2 0.5 0.2 0.5 0.6 0.5 0.6 0.5 0.4 0.1 0.3-0.5-0.1-0.5-0.3-0.5-0.2-0.6 0.3 0.2 0.3 0.2 0.3 0.1 0.4-0.1-0.3-0.4-0.5-0.4-0.3-0.5 0.2-0.5 0.9 0.4 1.9 0.5 0.9 0.5 0.6-0.2 1.4 0.3 0.8 0.1 1.6-0.2 0.7-0.2 0.5-0.3 0.1 0.5 0.2 0.3 0.3 0.1 0.3-0.2 0-0.4-0.2-1 0-0.4-0.2 0-0.1 0.1-0.1 0.3-0.1 0.3-0.3 0-0.8 0.3-0.2-0.1 0.2-0.4 0.7-0.8 0.2-0.2 0.8-0.4 1.8-0.7 0.9-0.5 0.5 0.2 0.5-0.1 0.5-0.3 0.4-0.2 0.3-0.4 0.5-1 0.2-0.2 1.1 0 0.5 0 0.2-0.2 0.3-0.3 1.2-0.4 0.5-0.3-0.6-0.2-0.4 0-0.8 0.5-1.5 0.4-0.4 0.2 1-2.5 0-1-0.6-1-0.5-0.5-0.3-0.2-0.4 0-0.3 0.1-0.1 0.2-0.1 0.2-0.2 0.2-0.7-0.2-0.9-1.2-0.6-0.2 0.5-0.8 0.6-0.8 0.7-0.5 1.5-0.5 1-0.7 0.8-0.8 0.5-0.7-0.7 0.1-2.1 1.7-2 1.1-0.8 0.7 0 0.7-0.3 0.2-0.1-0.2-0.7 0.5-0.4 0.2-0.6 0-0.7-0.1 0-0.2 0.7-0.9 1.6-1.2 2-1.2 2.7-1.7 3.8-1.7 2.6-2.4 0.6-0.3 1.5-0.5 2.4-1.7 2.5-3.2 0.7-0.4 1-0.4 1.1-0.9 0.8-1.1 0.4-1.1 0.5-6.5 0.3-1.4 0.1-0.7-0.1-0.7-0.1-0.6 0-0.5 0.2-0.8 0.6-1.4 0.6-1 1.8-1.3 2.8-2 1.3-1.4 0.3-1.4 0.1-0.5 0-0.6-0.1-0.5-1-1.9 0-0.4 0-0.3 0-0.6 0.1-2.6 0.3-1.7-0.1-1.8 0-0.8 0.4-1.9 0.1-1.3-0.5-2.8 0-1.5 0.7-2.8 0.2-3.3 0.4-0.9 1.7-2.1 0.4-0.6 0.1 0.9-0.4 8.4 0.5 1 1.5 0.1 1.6 0 1.3 0.2 0.8 0.9 0.5 1.2 0.8 0.7 0.6-0.3 0.6-0.2 0.6 0.5 0.6 0.6 0.9-0.2 0.6-1.2 0.8-0.6 1.3 1.8 0.5 0.9 0 0.8 0.6 1.3 0.5 0.6 1.8 1.3 1.1 2 0.8 2.4 1.6 1.7 2.2 0.8 1.9 1.5 2.3 4.3 1.7 1.8 1.5 2 0.4 2.4 0.8 1.8z"
                                        id="campeche" name="Campeche">
                                    </path>
                                </a>
                                <a xlink:title="Oaxaca">
                                    <path
                                        d="M773 544.6l0.2 0.9 0 0.9-0.1 1.8 0 0.3 0 0.7-0.8-0.2-0.4 0.6 0 0.9 0 0.8 0 1.2 0 0.6-0.1 0.4-1.9 1.2-0.5 0.3-0.7 0.3-0.6 0.4-0.4 0.5-0.1 0.6 0 0.9 0.2 0.9 0.1 0.7 0 0.7 0 0.7-0.2 0.6-0.3 0.7-0.7 1.1-1 1.3-0.7 1.4 0.3 1.3 0.3 0.5 0.3 0.6 0.5 1.3 0.4 0.9 0.5 1 0.4 1.1 0.1 1-0.1 0.6-0.1 0.7-0.1 0.6-0.2 0.6-0.2 0.4-0.6 0.8-0.2 0.4-0.6-0.5-0.4-0.5-0.2-0.4-0.2-1-0.4-0.2-0.6 0.3-0.7 0.3-1.3 0.2-1.3-0.4-1.3-0.7-1.1-0.9-0.7-0.7-0.4-0.3-0.7-0.1-0.6 0.2 0 0.5 0.1 0.5-0.1 0.6-0.2 0-0.3-0.2-0.1 0.1 0.1 0.2 0.2 0.1 0.4 0.1 0 0.2-0.3 0.1-0.4 0.1 2.9 1.9 1.6 0.7 0.9-0.2-2.4-0.9 0-0.2 0.8 0.1 1.3 0.4 0.6 0.2 0.8-0.1 0.3 0.1 0.5 0.2 1.1 0.7 0 0.2-0.4 0 0 0.2 2.2 0.5 0.6 0.2-0.7 1.4-7.2-3-0.4-0.3-1.1-0.7-1.5-0.3-2.9 0-1.5-0.1-0.8-0.1-0.6-0.3-0.5 0.3-0.6 0-1.3 0-0.7-0.2-0.2-0.3 0.1-0.4 0.4-0.3 2.8-0.8 1.2-0.9 0.2-1.4-0.4-0.4-1.2-0.4-0.5-0.2-0.3-0.3-0.2 0-0.3 0-0.2 0.1-0.1 0.5-0.1 0.2-0.1 0.1-0.4 0.1-0.1 0-0.4 0.4-0.2 0.2 0 0.1-0.8 0.5-0.5 0.1-0.5 0.9-0.4 0.3-0.4-0.6-0.1-0.3 0-0.4 0.4-0.3 0.4-0.3 0.3-0.4-0.3-0.5-0.5-0.5-0.1-0.4 0-0.3-0.2-0.5-0.2-0.3-0.4-0.3-0.4-0.4-0.4-0.1-0.8 0.1-0.8 0.4-0.6 0.6-1.3 2-0.4 0.3-1.8 0 0.2 0.5-0.3 0.2-0.3 0.1-0.2 0.2-0.4 0.5 0 0.4 0.7 0.2 1.4 0.3 1.1 0.1 1 0 0.9-0.1 0.4 0 0.7-0.2 0.3-0.2 0.5-0.6 0.3-0.1 0.2 0.5-1 0.5-1.3 0.3-1 0.1 1.1 0.3 2.9-0.1 0.9 0.3 0.5 0.8-0.2 0.2-1.6-0.5-2.5 0-1.6 0.4-1.4 0.1-0.8 0.2-1.5 0.2-1.2 0-0.6-0.1-0.4 0-0.5 0-0.2 0.2 0.1 0.2 0.1 0.3-0.3 0.1-0.9-0.1-0.3 0.3-1.1 0-0.4 0.3-0.1 0.5-0.6 0.2-0.4 0.3 0 0.3-0.1 0.2-0.4 0-0.3 0.3-1 0.2-0.5 0.3-0.8 1 0.2 0.7-0.4 0.2-0.4 0.4-0.9 0.3 0 0.5-0.2 0.3-1.9 0-0.1 0.3-2.4 0.3-0.3 0.4-0.8 0.1-0.2 0.4-1.5 0.6-1.4 0.1-0.8 0.1-0.7 0.2-0.5 0.3-0.3 0.2 0 0.3-0.7 0.1-0.7 0.2-0.8 0.2-0.9 0.3-0.3 0.2-2.3 0.5-0.3 0.4-1.1 0.3-0.8 0.5-0.7 0.1-0.8 0.6-0.4 0.1-0.2 0.2-0.3 0.1-0.3-0.1-0.4 0.3 0.1 0.5-2.5 1.1-1 0.7-1.6-0.1-2.4 0-1.2-0.2-1-0.2-0.4 0.5-0.8 0.3-0.5 0.4-0.6 0.1-0.7-0.1-0.7-0.1-0.2 0.2-1.8-0.7-2.1-1-3.9-0.7-1.3-0.1-2.7-1.6-1.9-0.6-1-0.2-0.8-0.7 0.1-0.1-0.5-0.9-0.5 0.1-0.8-0.4-1.8-1.2-1.5-0.5-1.9-0.5-0.6 0-1.9-0.3-0.7 0.3-2.9-0.3-2.2-0.8-0.8 0.2-1.9-0.4-1.4-0.1-0.4 0.3-0.3 0.2-1.1-0.2-1.7-0.4-0.6-0.2-0.6-0.5-0.8-0.3-0.3-0.2-0.3-0.3-0.2-0.1-0.5-0.3-2.1-1.6-1.2-0.7-3.3-1.8-1.1-0.4-1.1-0.5-0.5-0.6 1.8 0.5 1 0.2 0.4-0.5-0.4 0.1-0.5-0.3-0.4-0.3-0.4 0.3-0.6-0.3-0.7-0.1-0.1-0.3-0.1-0.1-0.2-0.1 0 0.1-0.2 0.1-0.2 0.2-0.2 0.1-0.6-0.1-3.1-1-4.1-0.8-2-0.7-0.8-0.3-0.4-0.1-0.2-0.1-0.1-0.1 0.1-0.1 0.5-0.5 0.5-0.4 0.7-0.3 0.8-0.2 0.9-0.1 0.8 0 0.8-0.1 0.8-0.5 0.8-0.8 0.7-0.9 0.2-1-0.5-1.1-0.5-0.8 0-0.7 0.4-0.6 0.8-0.4 0.6 0 0.5 0.2 0.5 0 0.7-0.2 0.2-0.4 0.3-0.9-0.1-1-0.3-0.9-0.3-0.9 0.4-0.2 0.4 0 0.4 0 0.4 0.1 0.5 0.1 0.4-0.1 0.4-0.2 0.5-0.2 0.2-0.1 0.2-0.1 0.3-0.3 0.1-0.2 0.2-0.3 0.4-0.3 0.3-0.3 0.2-0.4 0.1-0.6 0.1-0.6 0.2-1.2 0-0.6 0.1-0.4 0-0.3-0.1-0.3 0.2-0.4 0.3-0.4 0.3-0.4 0.3-0.4 0.2-0.5 0.2-0.3 0.1-0.3 0.1-0.4 0.1-0.3 0.1-0.4-0.1-0.4-0.1-0.3-0.2-0.3-0.9-1.3-1-1.3-0.9-1.3-1.1-1.2-0.4-0.5-0.4-0.1-0.4-0.1-0.9 0.1-0.8-0.2-0.5-0.7-0.4-0.9-0.5-0.7-1.2-0.5-0.4-0.3-0.2-0.6 0.1-0.7 0.2-0.7 0.1-0.6-0.3-0.7-0.2-0.2 0.3-0.9 0-0.5-0.1-0.4-0.4-0.5-0.4-0.5-0.7-0.6-0.1-0.5-0.1-0.5 0.1-0.4 0.3-0.3 0.2-0.2 0-0.2-0.1-0.2-0.2-0.1-0.5-0.6 0-0.8 0.1-0.8 0.2-1.3 0.3-0.8 0.1-0.5 0.1-0.6 0.2-0.6 0.1-0.7 0.2-0.6 0.4-0.7 0.2-0.6-0.1-0.5-0.6-0.6 0.7-0.5 0.5-0.5 0.6 0.2 0.5 0.2 1.1-0.1 0.8-0.8 0.7-1.2 0.4-1.1 0.3-0.4 0.3-0.2 0.4-0.1 0.5 0 1.1 0.1 2 0.1 0.6 0 0.6-0.1 0.6-0.1 0.6-0.1 0.3-0.1 0.4 0 0.4-0.1 0.3 0.2 0.2 0.3 0.1 0.4 0.1 0.5 0 0.7 0.1 0.5 0.3 0.7 0.2 0.4 0.3 0.3 0.5 0 0.8-0.3 0.8-0.3 0.3-0.3 0.4-0.3 0.3-0.3 0.3-0.3 0.3-0.3 0.3-0.2 0.2-0.3 0.2-0.3 0-0.4 0-0.3-0.1-0.3-0.1-0.3-0.2-0.4-0.3-0.4-0.3-0.4-0.5-0.4-0.2-0.1-0.5-0.4-0.3-0.5-0.2-0.5 0.2-0.6 0.2-0.4 0.5-0.8 0.2-0.4 0.3-0.5 0.6-1.1 0.4-0.6 0.2-0.5 0.4-0.6 0.4-0.4 0.4 0.1 0.8-0.3 1.2-0.9 0.9-0.4 0 1.3-0.3 1.1-0.5 1.4-0.3 1.4 0 1.1 0.4 0.4 0.5 0.4 1 0.5 0.3 0.3 0.3 0.1 0.5 0.4 0.3 0.4 0.1 0.4 0 0.5 0.1 0.5 0.2 0.4 0.5 0.7 0.2 0.4 0.3 0.4 0.4 0.3 0.4 0.2 0.4 0 0.5-0.1 0.4-0.3 0.2-0.4 0.2-0.4 0.8-1.7 1-1.5 1.3-1.1 1.7-0.7 0.3-0.1 1.4-0.3 0.6 0.1 0.7 0.2 0.5 0.3 0.5 0.3 0.5 0.2 0.6 0.1 0.2 0 1.1 0.4 1 0.3 1-0.1 0.9-0.7 0.3-0.4 0.2-0.6 0.7-0.9 0.6-0.6 0.2-0.2 0.1-0.2 0.6-0.4 0.4-0.2 0.6-0.1 0.5-0.2 0.2-0.1 0.4-0.2 0.1-0.1 0.7-0.4 0.3-0.5 0.3-0.7 0.3-0.6 0.3-0.7 0.3-0.5 0.3-0.5 0.1-0.7 0.5-0.5 1.5-1.7 0.6-0.9 0.4-1.1-0.1-1.1-0.4-1.2-0.3-1.1-0.2-1 1 0.9 1.1 1 1.1 0.6 1.2 0.5 1.4 0.3 1 0.2 0.7 0.3 0.5 0.5 0.3 0.9 0.3 1.3 0.4 1.5 0.7 1.4 0.8 1 0.3 0.2 0.4 0.3 0.3 0.1 0.5 0.4 0.4 0.4 0.3 0.5 0.3 0.5 0.3 0.8 0.2 1 0.2 0.9 0.3 0.3 0.1 0 0.4 0.3 0.4-0.1 0.4 0 0.3 0.1 0.1 0.2-0.1 0.3 0 0.3 0.3 0.3 0.3 0.2 0.5 0.1 0.4 0.1 0.4-0.1 0.2-0.2 0.4-0.6 0.2-0.2 0.4 0 0.7 0.1 0.4 0.2 0.4 0 0.5 0 0.4 0.1 0.2-0.1 0.4-0.1 0.3 0 0.3 0.1 0.3 0.1 0.4 0.2 0.3 0.2 0.4 0.1 0.3 0.1 0.9 0.2 0.2 0 0.5 0.3 0.5 0.2 0.5 0.9 0.5 1.1 0.4 1.2 0.5 1-0.6 1.6-0.8 1.3-1 1.2-1.1 1.2-0.2 0.3-0.2 0.4-0.3 1 0 0.9 0.4 0.9 0.5 1 0.6 1.3 2 4 0.4 0.5 0.5 0.2 0.5 0.2 0.6 0.2 0.1 0.1 0.3 0 0.8-0.3 0.5-0.3 0.6-0.2 0.7 0 0.9 0.4 0.3-0.1 0.5-0.5 0.2 0 0.3 0 0.3-0.1 0-0.2 0-0.2 0.1-0.2 0.1-0.1 0.6-0.3 0.5-0.4 0.5-0.2 0.4-0.1 0.4-0.1 0.3-0.4 0.3-0.4 0.2-0.3 0.7-0.4 0.6-0.2 0.7 0 0.8 0 0-0.2 0-0.2 0.2-0.2 0.9-0.1 0.6-0.3 0.5-0.6 0.3-0.7 0.2-0.2 0.4 0.1 0.4 0.2 0.3 0.2 0.2-0.2-0.3-0.5 0.2-0.2 0.2 0 0.6-0.1 0.2 0 0.3 0.3 0.1 0.4-0.1 0.5-0.1 0.6-0.1 0.8 0 0.2-0.3 0.1-0.6 0.3-0.3 0.2-0.2 0.4-0.1 0.4 0 0.3-0.1 0.4 1 1.2 0.9 1.1 1 1.1 1 1 0.5 0.5 0.4 0.4 0.5 0.5 0.4 0.6 0.7 0.2 0.9 0.3 0.8 0.5 0.4 0.6 0.2 0.7 0 0.3-0.1 0.1-0.2 0.1-0.1 0.2 0.6 2.1 1.1 0.6 2 0.3 2.3 0.1 1.5 0 3.2 0.2 2.1 0.2 0.9 0.1 1.9 0.1 4.9 0.3 4.9 0.3 9.9 0.6z"
                                        id="oaxaca" name="Oaxaca">
                                    </path>
                                </a>
                                <a xlink:title="Puebla">
                                    <path
                                        d="M683 502.9l-0.1 0.7-0.3 0.5-0.3 0.5-0.3 0.7-0.3 0.6-0.3 0.7-0.3 0.5-0.7 0.4-0.1 0.1-0.4 0.2-0.2 0.1-0.5 0.2-0.6 0.1-0.4 0.2-0.6 0.4-0.1 0.2-0.2 0.2-0.6 0.6-0.7 0.9-0.2 0.6-0.3 0.4-0.9 0.7-1 0.1-1-0.3-1.1-0.4-0.2 0-0.6-0.1-0.5-0.2-0.5-0.3-0.5-0.3-0.7-0.2-0.6-0.1-1.4 0.3-0.3 0.1-1.7 0.7-1.3 1.1-1 1.5-0.8 1.7-0.2 0.4-0.2 0.4-0.4 0.3-0.5 0.1-0.4 0-0.4-0.2-0.4-0.3-0.3-0.4-0.2-0.4-0.5-0.7-0.2-0.4-0.1-0.5 0-0.5-0.1-0.4-0.3-0.4-0.5-0.4-0.3-0.1-0.3-0.3-1-0.5-0.5-0.4-0.4-0.4 0-1.1 0.3-1.4 0.5-1.4 0.3-1.1 0-1.3-0.9 0.4-1.2 0.9-0.8 0.3-0.4-0.1-0.4 0.4-0.4 0.6-0.2 0.5-0.4 0.6-0.6 1.1-0.3 0.5-0.2 0.4-0.5 0.8-0.2 0.4-0.2 0.6 0.2 0.5 0.3 0.5 0.5 0.4 0.2 0.1 0.5 0.4 0.3 0.4 0.3 0.4 0.2 0.4 0.1 0.3 0.1 0.3 0 0.3 0 0.4-0.2 0.3-0.2 0.3-0.3 0.2-0.3 0.3-0.3 0.3-0.3 0.3-0.4 0.3-0.3 0.3-0.8 0.3-0.8 0.3-0.5 0-0.3-0.3-0.2-0.4-0.3-0.7-0.1-0.5 0-0.7-0.1-0.5-0.1-0.4-0.2-0.3-0.3-0.2-0.4 0.1-0.4 0-0.3 0.1-0.6 0.1-0.6 0.1-0.6 0.1-0.6 0-2-0.1-1.1-0.1-0.5 0-0.4 0.1-0.3 0.2-0.3 0.4-0.4 1.1-0.7 1.2-0.8 0.8-1.1 0.1-0.5-0.2-0.6-0.2-0.5 0.5-0.7 0.5-1.7-1.9-0.4-0.4-0.4-0.1-0.3 0-0.6 0.2-1 0.2-1 0.1-1.1-0.1-1-0.2-0.3-0.1-0.3-0.1-0.3-0.1-0.3-0.2-0.6-0.1-0.6-0.2-0.7-0.1-0.6-0.2-1.4-0.6-1.2-0.8-0.9-1.2-0.4-1.5-0.4-0.2-0.7-0.2-0.8-0.1-0.5 0-0.5-0.3-0.2-0.6-0.1-1.3-0.4-0.1-0.4 0.2-0.4 0.3-0.6-0.4-0.3-0.3-0.1-0.4-0.1-0.4 0-0.4-0.9 0.1 0-0.5-0.1-0.4-0.2-0.3-0.2-0.5 0-0.5 0-0.5 0-0.5-0.1-0.5 0.7-0.5 0.7-0.4 0.7-0.3 0.8-0.2 0.6-0.4 0.2-0.5 0.1-0.6 0.5-0.4 0.5-0.2 0.2-0.3 0.2-0.3 0.2-0.2 0.4-0.2 0.4-0.1 0.5-0.1 0.4-0.1 0.6 0 0.6 0.2 0.5 0.3 0.5 0.4 0.5 0.5 0.7 0.6 0.7 0.4 0.6-0.2 0-0.4-0.1-0.6-0.2-0.7-0.3-1.3-0.2-0.8-0.3-0.7-0.5-0.6-0.1-0.3-0.1-0.5-0.1-0.6-0.1-0.5-0.1-0.4-0.1-0.4 0-0.3-0.1-0.7 1.2 0.3 0.6 0 0.6 0 0.1-0.2 0.1-0.1 0-0.1 0-0.2-0.1-0.5-0.2-0.5-0.3-0.4-0.3-0.4-0.4-0.3-0.1-0.2-0.1-0.2 0-0.2 0.1-0.2 0-0.4-0.2 0-0.2-0.1-0.3-0.3 0.5-0.5 0.3-0.6 0.5-0.6 0.5-0.5 0.6-0.4-0.2-0.5-0.4-0.5 0-0.7 0.2-0.2 0.3 0.1 0.2 0 0.1-0.5 0.1-2.1 0.1-0.5 0.1-0.3 0-0.3-0.1-0.2-0.2-0.3-0.1-0.4 0-0.4 0-1 0.1-1.5 0.1-0.3 0.3-0.2 0.2-0.2-0.2-1.6-0.3-1.9-0.1-0.3-0.5-1.9-0.2-1 0.2-0.8 0.2-0.4 0.1-0.4 0.2-0.4 0.3-0.4 0.9 0.3 1 0.3 1 0.2 0.9 0 0.5-0.4 0.4-0.1 0.3 0.1 0.5 0.4 0.1 0.2 0 0.3 0.1 0.4 0.1 0.4 0.2 0.4 0.2 0.3 0.2 0.4 0.1 0.4 0.1 0.4 0.2 0.2 0.4 0.2 0.5 0.4 0.4 0.4 0.3 0.5 0.2 0.5 0.2 0.5 0.3 0.7 0.1 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.3 0.1 0.2 0.2 0.3 0.2 0.6 0.4 0.9 0.8 0.4 0.5 0.4 0.8 0.3 0.3 0.7 0.2 0.6-0.2 0.7-0.3 0.6-0.2 0.8-0.2 0.7-0.8 0.6-0.9 0.5-0.8 0.3 0.1 0.3 0.1 1.8 0.8 0.7 0.4 0.7 0.3 0.8 0.1 0.6-0.4 0.8-0.7 0.3-0.2 0.1-0.6-0.3-0.6-0.6-0.5-0.2-0.6 0-0.2 0.2-0.3 0.3-0.2 0.3-0.2 0.4-0.1 0.1-0.2 0.1-0.2 0.2-0.1 0.1-0.1 0.8 0.2 0.9 0.3 0.9 0 0.5-0.3 0.1 0.1 0.1 0.1 0.8 0.5 1 0 0.8-0.5 0.7-0.7 0.2-0.9-0.3-0.6-0.6-0.3-0.8 0.1-0.4-0.1-0.4-0.3-0.4-0.3-0.3-0.3-0.3-0.4-0.4-0.4-0.3-0.4-0.4-0.4-0.6-0.3-0.5 0-0.6 0.2-0.5 0.4-0.5 0.1-0.2-0.4-0.2-0.6-0.2-0.4-0.3-0.1-0.1-0.1-0.2-0.3 0-0.3 0.1-0.3 0.3-0.1 0.3 0 0.3-0.1 0.3-0.9-1-0.5-1.3-0.4-0.8-0.3-0.5-0.4-0.4-0.5-0.4-0.5-0.6-0.3-0.6 0-0.5-0.2-0.2-0.3 0.4-0.6 0-1-0.5-0.9-0.6-0.4-0.3 0.5 0.1 0.6 0 0.4-0.1 0.3-0.5 0.2-0.4 0-0.4 0-0.9 0-0.9-1.1-0.8-1.4-0.7-1.4-0.8-1.3-0.2-0.7 0.2-0.8 0.4-0.7 0.5-0.8 0.2-0.2 0.2-0.2 0.2-0.4 0.5-0.7 0.3-0.4 0.2-0.9 0.2-0.9 0.5-0.8 0.8-0.6 0.5-0.6 0-0.5-0.3-0.6-0.3-0.6 0-0.3-0.1-0.9-0.4-1.3-0.8-0.4-1 0.2-1.1 0.5-0.3 0.1-0.2-0.1-0.3-0.1-0.1-0.3-0.4-0.2-0.2-0.4 0-0.3 0.2-0.4 0.3-0.5 0.1-0.6 0.2-0.6 0.5-0.4 0.5-0.1 1-0.1 0.5-0.1 0.4-0.2 0.7-1.2 0.3-0.4 0.3-0.5 0.7-0.4 0.7-0.4 0.7-0.4 0.3-0.4 0.4-0.4 0.9-1.1 0.4-0.3 0.4-0.3 0.3-0.4 0.2-0.5 0.3-0.7 0.1-0.7 0.1-0.7 0-0.7-0.1-0.7 0-0.4-0.1-0.3-0.5-0.6 0-0.3 0.7-0.3 0.2-0.4 0-1 0.2-0.3 0.4-0.2 0.4-0.1 0.3-0.3 0-0.5 0-0.6 0-0.5 0.3-0.5 0.3-0.2 0.4 0.1 0.3 0.1 0.4 0.2 0.8 0 0.6-0.1 0.6 0.1 0.7 0.6 0.4 0.6 0.1 0.7 0 0.7 0 0.8 0.2 0.7 0.3 0.5 0.4 0.5 0.3 0.6-0.3 0.5-0.3 0.3 0 0.4 0.5 0.2 0.3 0 0.7-0.1 0.4 0 0.4 0.1 0.4 0.1 0.8 0.2 0.7 0.4 0.5 0.9 0.4 0.9 0 0.9-0.1 0.1-0.1 0.2-0.1 0.1-0.1 0.1-0.4 0.5-0.4 0.7-0.4 0.6-0.4 0.4-0.5 0.2-0.5-0.2-0.7-1-0.5-0.5-0.3 0.1-0.3 0.4-0.5 0.4-0.4 0.1-0.5-0.1-0.4 0.1-0.3 0.3 0.2 0.5 0.1 0.5 0.1 0.6-0.1 0.6 0 0.2 0.1 0.3 0.1 0.2 0.1 0.2-0.1 0.4-0.1 0.4-0.4 0.8 0.1 0.5 0.5 0.4 0.6 0.3 0.6 0.3 0.2 0.2 0.3 0.3 0.1 0.3 0.1 0.6 0.3 0.5 0.4 0.3 0.5 0 0.3-0.1 0.9-0.4 0.5 0.2 0.3 0.6 0 1 0.1 0.2 0.1 0.2 0.1 0.1 0.2 0.2 0.2 0 0.1 0 0.3-0.2 0.2-0.1 0.4-0.3 0.3-0.3 0.4-0.4 0.3-0.4 0.7-1 0.3-0.7 0.3-0.6 0.7-0.4 0.5-0.1 0.9-0.2 0.7 0.1 0.7 0.3 0.7 0.6 0.6 0.4 0.5 0.4 0.6 0.3 0.6 0.3 0.3 0.1 0.5 0.3 0.3 0.2 1.2 0.3 1.2 0.5 0.6 0.8-0.6 1.4-0.4 0.5-0.4 0.4-0.5 0.4-0.4 0.5-0.7 0.8-0.3 0.3-0.5 0.5-0.4 0.6-0.4 0.6-0.4 0.7-0.3 0.5-0.1 0.2-0.1 0.2-0.1 0.2 0 0.5 0.1 0.5 0.1 0.3 0.1 1.5-0.2 1.9-0.5 1.8-1 1-0.5 0-0.4 0.6-0.1 0.8-0.1 0.7 0 0.9 0.3 0.3 0.4 0.2 0.4 0.4 0 0.2-0.1 0.3 0 0.3 0.1 0.3 0.4 0.2 0.2 0.2 0.2 0.2 0.3 0.6-0.3 0.5-0.5 0.3-0.6 0.2-0.5-0.1-0.5 0.1-0.3 0.2 0.2 0.5 0.4 0.2 0.5 0.1 0.5 0 0.5 0.1 0.2 0.2 0.3 0.6 0.2 0.2 0.4-0.1 0.4-0.2 0.3-0.1 0.4 0 0.5 0.6 0.4 0.8 0.5 0.7 0.5 0.3 0.6 0 0.8 0.2 0.9 0.4 0.8 0.2 0.6-0.1 0.2-0.1 0.5-0.2 0.3-0.1 0.4 0.1 0.8 0.3 0.5 0.2 0.4 0.2 0.4 0.2 0 0.3-0.1 0.2-0.1 0.2-0.4 0.3-0.1 0.1-0.2 0.2-0.1 0.2-0.8 0.9-0.2 0.2-0.2 0.1-0.2 0-0.2 0-0.3 0-0.3 0-0.2 0.1-0.1 0.3-0.1 0.3-0.4 0.3-0.6-0.1-0.6-0.3-0.6-0.1-0.5 0.1-0.7 0.5-0.5 0.2-0.3 0.1-0.4 0-0.4 0.1-0.3 0.1-0.2 0.8 0 1 0.2 1.1 0.2 0.8 0.2 0.8 0.1 0.3 0 0.4 0 0.3 0.1 0.4 0 0.4 0.1 0.4 0.1 0.4 0.3 0.8 0.1 0.3 0 0.7-0.3 0.3-0.5 0.1-0.6 0.2-0.4 0.2-0.1 0.4-0.2 0.4-0.2 0.3-0.2 0.2-0.3 0.2-0.5 0.5-0.3 0.9 0 1 0.4 1 0.5 1.3 0.2 0.3 0.3 0.2 0.3 0.2 0.5 0.1 0.5-0.1 1.1-0.4 0.4 0 0.6 0.4 0.4 0.1 0.7 0.1 0.3 0.1 0.2 0.1 0.2 0.2 0.1 0.3 0.1 0.2 0 0.2 0 0.3 0.1 0.7 0.4 0.5 0.4 0.4 0.1 0.5-0.2 0.5-0.2 0.6-0.1 0.6 0.3 0.5 0.4 0.1 0.5 0 0.5-0.1 0.5 0.2 0.4-0.1 0.4-0.4 0.4-0.3 0.4-0.3 0.4-0.2 0.9-0.1 1.2-0.4 0.8-0.1 0.8-0.2 0.9-0.2 0.1 0 0.8-0.1 0.3 0.7 0.1 0.9 0.1 0.8 0.4 0.7 1.1 1.1 0.3 0.5z"
                                        id="puebla" name="Puebla">
                                    </path>
                                </a>
                                <a xlink:title="Tabasco">
                                    <path
                                        d="M863.8 523.1l0 18.2-13.9-0.1-0.1-0.1-0.2-0.5 0.1-0.5 0.1-0.5 0.2-0.3 0.4-0.2 0.4 0 0.4 0 0.1-0.5-0.1-0.1-0.8-1.3-0.2-0.3-0.3-0.2-0.7 0.1-0.4-0.1-0.4-0.1-0.4-0.3-0.2-0.3 0.2-1 0-0.5-0.3-0.2-0.3-0.2-0.2-0.2-0.6-0.2-0.7-0.2-0.6-0.2-0.4-0.2-0.5-0.2-0.7-0.3-0.5-0.4-0.2-0.5 0-0.7 0-0.3 0-0.3-0.2-1.1-0.3-1.2-0.4-1.2-0.6-0.9-0.6-0.2-0.7-0.1-0.6 0.1-0.7 0-0.4-0.3 0.1-0.6 0.3-0.6 0.2-0.3-0.2-1-0.1-0.3 0-0.2 0-0.7 0-0.2-0.5-0.8-0.6-0.5-0.7-0.1-0.6 0.5-0.8-0.4-0.5-0.1-0.4 0-0.4 0.2-0.2 0.3-0.1 0.3-0.2 0.4-0.4-0.5 0.1-1.1-0.5-0.3-0.2 0-0.7 0.2-0.9 0.6-0.9 0.9-0.8 0.9 0.6 1-0.7 0.5-1.1 0.1-1-0.2-0.6 0.5-0.7 0.5-0.8 0.4-0.8 0.3-1 0.2-1.1 0.3-1.1 0.3-0.8 0.6-0.3 1 0.1 0.8-0.3 0.6-1.1 0.3-0.7 0.2-0.6 0.5-1 1.1-2.8 2.4-1.2 1.2-1.9 1.8-0.5 0.4-0.9 0.6-1 0.1-1-0.4-0.9-0.5-0.4-0.4-0.4-0.5-0.4-0.5-0.3-0.5-0.6-1-0.4-0.9-0.5-0.7-1-0.2-0.8 0-0.5-0.3-0.2-0.7-0.1-0.8 0-1.4-0.6-2.6 0-1.4 0.2-0.5 0.3-1 0.2-0.5 0-0.6 0-0.6-0.1-0.6 0-0.6 0-0.2-0.1-0.7-0.1-0.8-0.4 0.7-0.6-0.1-0.7 0.7-1.1-0.2-1-0.7-0.7-0.9-0.8-0.4-0.6-0.4-0.3-0.2-1.1-0.2-0.8-0.2-0.5-0.1-0.3 0.2-0.4 0.5-0.2 0.2-0.4 0.1-0.1 0.7-0.7 1.9-0.6 2-0.6 2-0.5 1.9-0.2 0.6-0.1 0.6-0.2 0.6-0.2 0.5-0.4 0.4-0.5 0.3-0.4 0.3-0.4 0.4 0 0.2-0.1 0.6-0.1 0-0.1 0-0.3 0.3-0.6 0.3-0.1 0.2-0.2 0.4-0.2 0.2-0.4 1.3-0.8 1.9-0.9 1.9-0.6-0.2-0.5-0.3-0.4-0.4-0.2-0.6 0-0.3 0.3-0.7 0-0.4 0.1-0.3 0.2-1 0.2-0.8 0.1-0.7-0.2-0.5-1-0.4-0.4-0.4-0.7-0.7-0.7-0.8-0.7-1.3-0.8-0.6-0.9-0.3-0.9-0.3-0.3 0-0.4 0-0.3-0.1-0.1-0.2-0.1-0.6-0.3-0.3-0.5-0.1-0.6 0-1.2-0.4-0.3-0.8-0.1-0.9-0.7-0.7-0.4-0.2-0.5 0-0.4-0.1-0.4-0.2 0-0.1-0.2-0.4-0.1-0.1-0.2-0.1-0.5 0-0.2 0-0.5-0.5 0-0.7 0.2-1.6 0.1-0.5 0.3-0.4 0.3-0.5-0.3-0.4-0.3-0.3 0-0.3 0-0.4-0.1-0.4-0.2-0.2-0.3-0.4-0.1-0.2 0.1-0.2 0.2-0.1 0.1-0.3-0.2-0.2-0.3-0.3-0.1-0.4 0.1-0.5 0-0.4-0.1-0.4-0.2-0.2-0.4 0-0.3-0.1-0.2-0.3 0-0.8-0.2-0.3 0.1 0 0.7-0.4 0.9-0.4 2.4-0.5 0.5-0.5 0.6-0.3 3.5-1.2-0.2 0.4-0.3 0.3-0.2 0.4-0.1 0.4 0.3 0.2 2.5-0.4 0.6-0.1 0.4-0.3 0.3-0.4 0-0.3-0.2-0.2-0.1-0.2 0.1-0.3 0.2-0.2 0.4-0.2 0.2-0.2 0.4 0.1 0.5-0.1 0.4-0.2 0.4-0.3 0.2 0.6 0.7 0.2 2-0.4 0.4-0.4 0.4-1.1-0.3-0.8-0.1-0.1-0.3 0-0.4 0.2-0.4 0.2-0.2 0.2-0.4 0.3-2.2 0.7-0.2 0.2-0.3 0.3-0.2 0.2-1.4 0.2-1 0.8-0.4 0.2-0.3 0-0.4 0-0.3 0.4 0.2-0.7 0.6-0.3 0.6-0.2 0.3-0.3 0.3-0.3 5.9-2.2 1.4-0.3 3.4-0.5 4.4 0.2 4.7-0.2 0 0.2-0.3 0.5-0.3 0.3-0.3 0.1 0.2 0.3 0 0.8 0.2 0.3 0.3 0 0.5-0.2 0.5-0.3 0.2-0.2 0 0.5-0.3 0.6-0.1 0.5 0.2 0 0.5-0.7 0.2-0.2-0.2-0.2 0.6-0.1 0.2-0.5-0.2-0.6-0.7-0.2-0.7-0.1 0-0.3 0.5-0.3 0.7-0.2 5.1-0.1 2.6-0.7 1.6-0.9 1.5-1.4 0.6-0.9 0.3-0.5 0.1-0.3 0.3-0.2 0.3 0.1 0.1 0.2 0.4 1.1 0.3 3.2 0.4 0.9 0.2-1-0.2-0.5 0-0.7 0.2-1.4-0.2-0.7-0.7-1.5-0.1-0.4 0.4-0.3 0.8 0 1.4 0.1 0.7-0.1 3.3-0.8 0.2-0.1 0.1 0.6 0.4 0.7 0.4 0.6 0.4 0.6 0.3 0.8 0.1 0.8 0.3 0.8 0.5 0.6 0.2 0.2 0.5 0.4 0.3 0.2 0.3 0.1 0.3 0 0.2-0.2 0.3 0 1.4 0.2 1.5 0 1.5-0.1 1.4 0-0.1 3 0 3.1-0.1 1-0.1 1.3 0.1 1.3 0.4 0.8 0.8 0.5 0.8 0.6 0.7 0.6 0.7 0.5 0.4 0.3 0.4 0.2 0.4 0.2 0.5 0.2 0.6 0.3 0.1 0.6 0.2 0.5 0.5 0.3 0.9 0.5 0.9 0.6 1 0.5 1 0 1.6 0 3 0 1.6 0 0.2-0.3 0.4-0.8 0.3-0.8 0.1-0.6 0-0.2-0.1-0.4 0-0.4 0-0.3 0.2-0.6 0.2-0.4 0.7-0.2 0.9-0.1 0.9 0.1 0.7 0 0.4 0 0.3 0.1 0.4 0.1 1 0.4 0.5 0.1 0.5 0.2 0.6 0.1 0.7 0 0.5 0.2 0.5 0.3 0.6 0.4 0.5 0.4 0.6 0.4 0.6 0.4 0.5 0.1 1.3-0.1 0.6 0.1 0.6 0.2 0.3 0.3 0.3 0.3 0.2 0.2 0.5 0.1 1.8 0.1 1.9 0.1 0 3.8 0 1.7z"
                                        id="tabasco" name="Tabasco">
                                    </path>
                                </a>
                                <a xlink:title="Tlaxcala">
                                    <path
                                        d="M622.7 467.8l-0.1-0.8 0-0.5-0.1-0.4-1-0.3-0.5-0.3-0.2-0.7-0.2-1 0.4 0 0.7-0.1 0.4 0 0.4-0.1 0.2-0.1 0.1-0.3 0.2-0.4 0.3 0.2 0.4-0.2 0.7-0.6 0.5-0.1 0.4 0.3 0.4 0.3 0.5 0 0.4-0.3 0.5-0.5 0.5-0.2 0.6 0.6 0.1 0.1 0.6 0.2 0.7 0 0.7 0.1 0.6 0.1 0.4 0.2 0.7 0.4 0.5-0.4 0.4-0.8 0.3-0.8 0.2-0.4 0.3-0.3 0.2-0.4 0.3-0.3 0.2-0.3 0-0.2 0.1-0.1 0.5-0.2 0.1 0 0.2 0.4 0.1 0.1 0.7 0.5 0.7 0.4 0.8 0.2 0.8 0 0.9 0 0.4 0 0.4 0 0.5-0.2 0.1-0.3 0-0.4-0.1-0.6 0.3-0.5 0.6 0.4 0.5 0.9 0 1-0.4 0.6 0.2 0.3 0.5 0.2 0.6 0 0.6 0.3 0.4 0.5 0.4 0.5 0.5 0.4 0.8 0.3 1.3 0.4 1 0.5-0.3 0.9-0.3 0.1-0.3 0-0.3 0.1-0.1 0.3 0 0.3 0.2 0.3 0.1 0.1 0.3 0.1 0.2 0.4 0.2 0.6 0.2 0.4 0.5-0.1 0.5-0.4 0.6-0.2 0.5 0 0.6 0.3 0.4 0.4 0.3 0.4 0.4 0.4 0.3 0.4 0.3 0.3 0.4 0.3 0.4 0.3 0.4 0.1 0.8-0.1 0.6 0.3 0.3 0.6-0.2 0.9-0.7 0.7-0.8 0.5-1 0-0.8-0.5-0.1-0.1-0.1-0.1-0.5 0.3-0.9 0-0.9-0.3-0.8-0.2-0.1 0.1-0.2 0.1-0.1 0.2-0.1 0.2-0.4 0.1-0.3 0.2-0.3 0.2-0.2 0.3 0 0.2 0.2 0.6 0.6 0.5 0.3 0.6-0.1 0.6-0.3 0.2-0.8 0.7-0.6 0.4-0.8-0.1-0.7-0.3-0.7-0.4-1.8-0.8-0.3-0.1-0.3-0.1-0.5 0.8-0.6 0.9-0.7 0.8-0.8 0.2-0.6 0.2-0.7 0.3-0.6 0.2-0.7-0.2-0.3-0.3-0.4-0.8-0.4-0.5-0.9-0.8-0.6-0.4-0.3-0.2-0.2-0.2-0.3-0.1-0.2-0.2-0.2-0.2-0.2-0.2-0.2-0.2-0.1-0.2-0.3-0.7-0.2-0.5-0.2-0.5-0.3-0.5-0.4-0.4-0.5-0.4-0.4-0.2-0.2-0.2-0.1-0.4-0.1-0.4-0.2-0.4-0.2-0.3-0.2-0.4-0.1-0.4-0.1-0.4 0-0.3-0.1-0.2-0.5-0.4-0.3-0.1-0.4 0.1-0.5 0.4-0.9 0-1-0.2-1-0.3-0.9-0.3z"
                                        id="tlaxcala" name="Tlaxcala">
                                    </path>
                                </a>
                                <a xlink:title="Ciudad de Mexico">
                                    <path
                                        d="M612.5 480.3l-0.4 0-0.4 0-0.5 0-0.4 0.1-0.2 0.3-0.3 0.4-0.3 0.2-0.3-0.1-0.6-0.4-0.6-0.4-0.6-0.2-0.6-0.1-1-0.1-1-0.2-1.1-0.2-1.1-0.4-0.7-0.7-0.2-0.2-0.2-0.2-0.3-0.5-0.1-0.5-0.1-0.6 0.1-0.7 0-0.1-0.1-0.1-0.1-0.1-0.2 0-0.3-0.2-0.1-0.3 0.2-0.3 0.2-0.3 0-0.1 0-0.1-0.2-0.2-0.1-0.7 0.2-0.7 0.4-0.7 0.1-0.7 0.6 0.1 0.6 0.1 0.4-0.2 0.3-0.6 0.1-0.3 0.3-0.5 0.4-0.6 0.4-0.5 0.4-0.5 0.5-0.7 0.1-0.2 0.2-0.1 0.2-0.1 0.2-0.1 0.3-0.2 0.1-0.2-0.2-0.3-0.3-0.1 0.3-0.3 0-0.3 0-0.4 0.3-0.3 0.3-0.3 0.4-0.4 0.3 0.2 0.2 0.2 0.2 0.3 0.1 0.2 0 0.3 0 0.2 0.1 0.5 0.2 0.4 0.2 0.2 0.4 0.2 0.1 0.3 0.1 0.3 0.1 0.2 0.3 0.5 0.2 0.5 0.2 0.3-0.1 0.3-0.2 0.2-0.3 0.2 0.1 0.2 0.3 0.3-0.5 0.5 0.5 0.4 0.5 0.3 0.7 0.3 0.5 0.3 0.2 0.2 0.3 0.5 0.2 0.3 0.2 0.7 0.1 0.4 0 0.4 0 0.5-0.2 0.8 0 0.7 0.1 0.6 0.5 1 0.2 0.5 0 0.2-0.1 0.4-0.2 0.4-0.5 0.7z"
                                        id="ciudaddemexico" name="Ciudad de Mexico">
                                    </path>
                                </a>
                                <a xlink:title="Guanajuato">
                                    <path
                                        d="M586.5 402l0 0.4-0.2 0.5-0.1 0.4 0.2 0.4 0.1 0.5 0 0.3-0.1 0.3-0.1 0.4 0.1 1.1 0.6 0.5 0.8 0.1 0.9 0.1 0.4 0.3 0 0.5-0.2 0.4-0.4 0.4-0.8 0.3-0.3 0.1-0.3 0.3-0.2 0.4-0.2 0.3-0.1 0.3-0.5 0.2-0.8 0.3-0.9 0.1-0.9-0.2-0.5-0.6-0.4-0.3-0.5-0.2-0.5-0.2-0.5-0.1-0.8 0.1-0.8 0.2-0.8 0.5-0.5 0.7-0.4 1.1-0.2 1.2-0.1 1.3-0.1 1.2 0 0.8-0.1 0.8-0.2 0.8-0.3 0.7-0.3 0.2-0.2 0.1-0.3 0.1-0.3 0.1-0.2 0.2-0.2 0.3-0.2 0.3-0.3 0.2-0.7 0-0.5-0.4-0.4-0.6-0.4-0.5-0.1-0.2-0.2 0-0.6-0.1-0.6 0.3-0.5 0.4-0.5 0.3-0.6 0.2-0.6 0-0.6-0.1-0.7-0.1-0.9-0.3-0.3-0.6-0.1-0.8-0.5-0.5-0.6 0-0.5 0.6-0.3 0.8-0.3 0.6-0.5 0.4-0.2 0.6 0 1.2-0.1 0.5-0.2 0.6-0.3 0.5-0.3 0.5-0.6 1.4-0.1 1.4 0.3 1.4 0.6 1.4 0.4 0.6 0.4 0.6 0.4 0.6 0.3 0.6 0.1 1.3 0 1.2 0.1 1.2 0.5 1.1 0.5 0.6 0.6 0.7 0.7 0.7 0.5 0.7 0.3 0.9 0.4 0.8 0.6 0.3 0.5 0.3 0.4 0.7 0.3 0.2 0.4 0.1 0.3 0.1 0.3 0.2-0.5 0.5-0.3 0.4-0.2 0.4-0.3 0.6-0.1 0.3-0.3 0.5-0.3 0.4-0.3 0.2-0.5-0.1-0.2 0-0.2 0-0.1 0.2 0 0.2 0.1 0.1 0 0.1-0.3 0.6-0.1 0.3 0 0.4 0.4 0.7 0.2 1.2 0 1-0.5 0.4-1.5 0.1-0.8 0.1-0.7 0.2-0.4 0.4-0.2 0.6-0.2 0.5-0.5 0.1-0.3-0.2-0.1-0.3 0.1-0.4-0.1-0.4-0.5-0.1-0.7 0-1.3 0.1-1.7 0.1-0.6 0-0.6 0-0.3 0.1-0.2 0.3 0 0.7-0.8 0-0.5-0.1-0.4-0.3-0.3-0.6-0.2-0.4-0.6-0.5-0.3-0.4-0.4 0.6-0.5 0.5-0.5 0.3-0.7 0.2-0.5 0.1-0.6 0-0.5 0-0.5-0.2-0.8-0.3-0.9-0.4-0.7-0.5-0.2-0.8 0.6-0.5 0.7-0.3 0.6-0.3 0.1-0.6-0.4-0.4-0.1-0.2 0.1-0.3 0-0.2 0-0.3-0.1-0.2-0.7-0.3-0.8 0-0.7 0-0.7 0.3-0.5 0.1-0.4-0.1-0.3-0.3-0.3-0.3-0.8 0.2-0.3 0.7-0.2 0.9-0.5 0.6-0.6 0.2-0.6 0-0.7-0.2-0.5-0.3-0.5-0.1-0.3 0.1-0.4 0.1-0.5 0-0.2 0-0.5-0.4-0.2 0-0.3 0.1-0.3 0.1-0.3 0.2-0.3 0.1-0.9-0.5 0-0.8 0.3-1 0.1-1-0.1-0.2 0-0.2-0.2-0.2-0.2-0.3 0-0.1 0.1-0.1 0.1-0.2 0.1-0.2 0-0.2 0.1-0.2 0-0.2-0.2-0.3-0.2-0.1-0.2-0.1-0.1-0.3 0.3-0.5 1.2-0.6 0.3-0.5-0.2-0.5-0.6-0.4-0.7-0.2-0.6-0.1-0.4 0-0.2-0.2-0.1-0.3 0.1-0.4-0.6 0.1-1.1-0.2-0.6 0.1-0.3 0-0.7 0.3-0.2 0.1-1.1 0-0.2 0.1-0.1 0.3-0.1 0.3 0.1 0.4 0 0.3-0.1 0.3-0.3 0.5-0.1 0.2-0.2 0.5-0.8 1-0.3 0.5-0.5-0.4-0.5-0.1-1.1 0-0.9-0.2-0.3 0-0.3 0.1-0.3 0.3-0.3 0-0.1 0-0.5-0.3-0.3-0.1-0.3 0.1-0.4 0.3-0.3 0-0.8 0-0.4-0.1-0.2-0.4-0.2-0.8-0.1-0.2-0.2-0.1-0.1-0.2-0.3-3-0.3-0.8-0.4-0.3-0.6 0.2-0.3 0.9-0.4 0.3-0.4-0.4 0.2-0.7 0.5-1.2-3.3 0.5 0.1-0.5 0.5-1.2 0.6-1 0.8-1.1 0.9-0.9 0.9-1 0.4-1-0.3-1.4-0.2-0.4-0.8-0.8-0.8-0.7-0.9-0.7-0.7-0.8-0.3-1 0.2-1.1 0.4-1 0.5-1 0.4-0.8 1.3-2.2 0.9-1.4 0.9-1.4 0.9-1.3 1.1-1.3 0.2-0.3 0.2-0.3 0.2-0.6 0.3-0.5 0.5-0.3 0.4-0.3 0.4-0.3 0.3-0.4 0.4-0.8 0.2-0.4 0.4-0.2 0.6-0.1 0.7 0 0.5 0 0.5 0 0.4-0.1 0.4-0.3 0.4-0.3 0.8-0.7 0.8-0.7 0.7-0.8 0.5-1 0.2-0.7 0-0.6 0-0.7-0.2-0.6-0.7-1.1-0.7-1-0.6-1-0.1-1.3 0.8-1.1 1.3-0.8 1.1-0.9 0.2-1.1-0.5-0.7-0.5-0.7-0.5-0.7-0.2-0.8 0.2-0.8 0.6-0.8 1.3-1.4 1.2 0.7 1 0 0.9-0.4 1.2-0.8 0.3-0.1 0.7-0.3 0.8-0.1 0.7 0.2 0.5 0.6 0.1 0.5-0.1 0.5 0.1 0.5 0.2 0.5 0.2 0.3 0.4 0.3 0.3 0.3 0.4 0.2 1.1 0.1 1.2-0.2 1.2-0.3 1.1-0.1 1 0 1.1 0.1 1 0.3 1 0.3 0.5 0.4 0.5 0.5 1 1 1.4 1.2 1.5 1.2 1.5 1.2 1.5 1.1 0.6 0.6 0.7 0.6 0.6 0.5 0.7 0.5 1.1 0 1.1 0 1.1-0.2 0.7-0.5 0.3-0.7 0.1-0.7 0.1-0.8 0.2-0.7 0.1-0.4 0.2-0.5 0.2-0.4 0.2-0.4 0.2-0.3 0.3-0.3 0.4-0.2 0.3-0.2 0.4 0 0.3 0.1 0.2 0.2 0.2 0.2 0.4 0.1 0.3 0.1 0.3 0.1 0.4 0.2 0.5 0.3 0.6 0.3 0.6 0.2 0.6 0.3 0.4 0.2 0.3 0.2 0.4 0.1 0.4 0.1 1.1 0.3 1 0.3 1 0.4 1.1 0.3 0.3 0.2 1.2 0.9 1.2 1.3 1.3 1 1.3 0.1 1.2 0 1 0.3 0.8 0.5 1 0.5z"
                                        id="guanajuato" name="Guanajuato">
                                    </path>
                                </a>
                                <a xlink:title="Guerrero">
                                    <path
                                        d="M595.8 494.1l-0.3 0.6-0.2 0.6 0.1 0.5 0.7 0.2 0.6 0.1 0.1 0.5 0.2 0.6 0.6 0.2 0.2 0.4 0.5 0.8 0.2 0.4 0.3 0.4 0.3 0.3 0.4 0.2 0.4 0 0.6 0.1 0.2 0.5 0 0.7 0.3 0.3 0.6 0 0.7 0 0.7 0 0.7-0.1 0.1-0.3 0.1-0.4 0.1-0.9 0.2-0.8 0.4-0.6 0.6-0.4 0.8 0.1 0.3 0.1 0.2 0.1 0.2 0.2 0 0.3 0.1 0.4 0 0.5 0.1 0.3 0.3 0.3 0.2 0.3 0.2 0.2 0.1 0.2 0.1 0.4 0.4 0.9 0.7 0.7 0.6 0.7 0.3 1.2 0.1 0.5 0 0.5 0 0.5 0 0.5 0.2 0.5 0.2 0.3 0.1 0.4 0 0.5 0.9-0.1 0 0.4 0.1 0.4 0.1 0.4 0.3 0.3 0.6 0.4 0.4-0.3 0.4-0.2 0.4 0.1 0.1 1.3 0.2 0.6 0.5 0.3 0.5 0 0.8 0.1 0.7 0.2 0.4 0.2 0.4 1.5 0.9 1.2 1.2 0.8 1.4 0.6 0.6 0.2 0.7 0.1 0.6 0.2 0.6 0.1 0.3 0.2 0.3 0.1 0.3 0.1 0.3 0.1 1 0.2 1.1 0.1 1-0.1 1-0.2 0.6-0.2 0.3 0 0.4 0.1 0.4 0.4 1.7 1.9 0.6 0.6 0.1 0.5-0.2 0.6-0.4 0.7-0.2 0.6-0.1 0.7-0.2 0.6-0.1 0.6-0.1 0.5-0.3 0.8-0.2 1.3-0.1 0.8 0 0.8 0.5 0.6 0.2 0.1 0.1 0.2 0 0.2-0.2 0.2-0.3 0.3-0.1 0.4 0.1 0.5 0.1 0.5 0.7 0.6 0.4 0.5 0.4 0.5 0.1 0.4 0 0.5-0.3 0.9 0.2 0.2 0.3 0.7-0.1 0.6-0.2 0.7-0.1 0.7 0.2 0.6 0.4 0.3 1.2 0.5 0.5 0.7 0.4 0.9 0.5 0.7 0.8 0.2 0.9-0.1 0.4 0.1 0.4 0.1 0.4 0.5 1.1 1.2 0.9 1.3 1 1.3 0.9 1.3 0.2 0.3 0.1 0.3 0.1 0.4-0.1 0.4-0.1 0.3-0.1 0.4-0.1 0.3-0.2 0.3-0.2 0.5-0.3 0.4-0.3 0.4-0.3 0.4-0.2 0.4 0.1 0.3 0 0.3-0.1 0.4 0 0.6-0.2 1.2-0.1 0.6-0.1 0.6-0.2 0.4-0.3 0.3-0.4 0.3-0.2 0.3-0.1 0.2-0.3 0.3-0.2 0.1-0.2 0.1-0.5 0.2-0.4 0.2-0.4 0.1-0.5-0.1-0.4-0.1-0.4 0-0.4 0-0.4 0.2 0.3 0.9 0.3 0.9 0.1 1-0.3 0.9-0.2 0.4-0.7 0.2-0.5 0-0.5-0.2-0.6 0-0.8 0.4-0.4 0.6 0 0.7 0.5 0.8 0.5 1.1-0.2 1-0.7 0.9-0.8 0.8-0.8 0.5-0.8 0.1-0.8 0-0.9 0.1-0.8 0.2-0.7 0.3-0.5 0.4-0.5 0.5-0.1 0.1-0.4-0.2 0-0.1 0.1-0.1 0-0.3-0.5-0.7-1.2-1-2.5-2.3-1.2-1.7-0.9-1-0.1-0.2-0.3-0.2-0.4 0.1-0.5-0.2-0.2 0.2-0.3 0-0.3 0.1-0.5 0.1-0.1 0.2-0.2 0.4-1-0.2-0.6 0-1.2-0.5-6.2-2-5.2-1.4-2.1-0.5-3.8-0.6-2 0-1.5 0.1-1-0.2-0.8-0.3-0.8-0.3-1.7-0.7-1.7-1.4-0.8-0.6-0.2 0-0.2 0.3-0.3-0.2-0.1-0.2-0.3-0.1 0.2-0.1 0.4 0.2 0.1-0.3-0.2-0.2-0.2-0.1-0.2 0.2-0.3-0.1-0.2 0-0.2-0.2 0.2-0.1 0-0.3 0.2-0.3 0.2 0.1 0.2-0.1 0-0.2-0.3-0.3-0.2-0.2-0.5-0.1-0.5 0.2-0.3 0.3 0 0.2 0.3-0.1 0.2 0.1-0.3 0.3-0.4 0.1-0.2-0.2-0.2-0.8-0.2-0.1-0.7-0.8-0.1-0.3-1.1-0.5-2.3-0.9-1.6-0.4-1.6-0.6-2.1-0.8-2.7-1.1-7.7-2.7-2.8-0.9-1.9-0.6-2.1-1-1.7-0.6-2.1-0.6-1.7-0.6-1.7-0.6-1.1-0.5-0.5 0.2-0.2-0.4 0.4-0.2-0.1-0.7-0.5-0.6-1-1-2.1-1.3-0.4-0.7-2.5-1.5-2.7-0.9-1.4-0.7-2-0.7 0-0.4 0.4 0 0.1-0.6-0.3-0.5-0.3-0.4-1.2-1-0.9-0.1-0.9 0.2-0.1-0.5-0.4 0-0.3-0.3-0.5 0-0.1-0.6-0.5-0.2-0.9-0.3-0.1-1.2-0.8-1.2-0.8-0.5-1.5-1.2-0.4-0.8-0.4-0.4-0.1-0.7-1.2-1.3-1.4-0.7-0.5-0.2-1.9-1.1-1.8-0.8-1.5-0.6-2 0.3-0.3 0.6-0.6 0.4-0.5 0.6-0.6 0.3-0.2 0.1 0.3-0.6 0.2-0.3 0.1-0.3-0.1-0.5-0.6-1-0.2-0.6 0-0.9 0-1 0.1-1 0.2-0.9 0.2-0.6 0.1-0.3 0.3-0.3 0.3-0.3 0.3-0.2 0.3 0 0.5 0 0.6 0 0.5-0.1 0.5-0.2 0.5-0.1 0.5 0 0.5 0.1 0.4-0.1 0.5-0.3 0.3 0 0.6 0.1 0.3 0 0.3-0.1 0.2-0.2 0-0.3 0.2-0.3 0.4-0.6 0.6-0.7 0.3-0.8 0.1-0.8-0.4-2.3-0.2-2.3 0.4-2.1 1.3-1.8 1.2-0.4 1.3-0.1 2.6 0.2 0.5 0.1 0.5 0.1 0.5 0.2 0.4 0.4 0.3 0.5 0.2 0.4 0.3 0.5 0.5 0.4 0.6 0.4 0.6 0.3 0.7 0.2 0.8 0.1 1.7-0.3 1.6-0.5 1.7-0.4 1.6-0.5 0.8-0.3 5 0.3 1.6-0.4 0.7 0 0.7 0.4 0.1 0.1 0 0.6 0.2 0.2 0-0.1 0.3-0.1 0.4 0 0.2 0.1 0.1 0.4 0.2 0.8 1.1-0.3 0.2-0.3-0.4-0.5 3.4 0.1 0.4 0.2 1.1 1.2 0.4 0.3 0.5 0.3 0.5 0.2 0-0.1 0.2-0.5 0-0.1 0.1 0.1 0.3 0.1 0.1 0 0.1 0.2 0.1 0.3 0.1 0.5 0 0.3-0.3 0.3-0.3 0.3-0.2 0.4 0 0.5 0.3 0.5 0.7 0.7 1-1 0.1-0.1 0.4 0.2 0.2 0.5 0.5-0.7 0.4-0.7 0.2-0.7-0.3-0.6-0.8-0.6-0.8-0.6-0.8-0.6-0.9-0.6-0.6-0.5-0.3-0.6-0.1-0.7 0-0.9 0-0.8-0.2-0.7-0.2-0.7-0.3-0.7-0.1-0.8 0.2-0.5 0.4-0.5 0.2-0.7-0.3-0.5-0.6-0.6-0.5-0.5 0-0.6 0.4-0.5 0.4-0.5 0.4-0.6 0.5-0.3 0.7 0.1 0.5 0.5 0.2 0.8 0.2 0.7 0.3-0.2 0.4-0.4 0.3-0.4 0.1-0.6 0.2-0.3 0.6-0.6 1.2 0.4 1.2 0.3 1.2 0.2 1.3 0 0.4 0 0.3 0.1 0.1 0.4 0 0.5 0.1 0.4 0.2 0.2 0.2 0.3 0 0.4-0.3 0.6-0.3 0.6 0 0.7 0.3 0.7 0.2 0.4 0 0.4 0 0.4-0.1 0.4 0.1 0.4 0.2 0.3 0.3 0.3 0.2 0.3 1.2 1.1 0.5 0.7 0.2 0.7-0.1 0.9-0.3 0.9-0.2 0.8 0.3 0.6 0.3 0.3 0.2 0.3 0.5 0.5 0.3 0.3 0.4 0.2 0.5 0 0.4-0.1 0.4-0.3 0.2-0.3 0.2-0.3 0.4-0.1 0.7-0.6 0.7-0.5 0.7-0.6 0.7-0.6 0.7-0.8 0.6-0.8 0.4-0.9 0.6-1.2 0.1-0.2 0.7-0.1 0.6-0.1 0.6-0.2 0.7-0.2 0.6-0.2 0.6-0.2 0.7-0.2 0.6-0.2 0.4-0.1 0.3-0.1 0.7-0.2 0.5 0 0.5 0.1 0.5 0.4 0.4 0.5 0.3 0.3 0.4 0.1 0.5-0.5 0.3-0.4 0.1-0.3 0-0.4 0-0.4 0.2-0.4 0.3-0.2 0.3-0.2 0.9-0.8 0.5-0.5 0.8-0.7 0.6 0.3 0.6 0.7 0.6 0.6 0.4 0.1 0.2 0.2 0.3 0.7 0.4 0.4 0.8 0.1 0.7 0.1 0.6-0.2z"
                                        id="guerrero" name="Guerrero">
                                    </path>
                                </a>
                                <a xlink:title="Hidalgo">
                                    <path
                                        d="M642.9 433.5l-0.9 1.1-0.4 0.4-0.3 0.4-0.7 0.4-0.7 0.4-0.7 0.4-0.3 0.5-0.3 0.4-0.7 1.2-0.4 0.2-0.5 0.1-1 0.1-0.5 0.1-0.5 0.4-0.2 0.6-0.1 0.6-0.3 0.5-0.2 0.4 0 0.3 0.2 0.4 0.4 0.2 0.1 0.3 0.3 0.1 0.2 0.1 0.3-0.1 1.1-0.5 1-0.2 0.8 0.4 0.4 1.3 0.1 0.9 0 0.3 0.3 0.6 0.3 0.6 0 0.5-0.5 0.6-0.8 0.6-0.5 0.8-0.2 0.9-0.2 0.9-0.3 0.4-0.5 0.7-0.2 0.4-0.2 0.2-0.2 0.2-0.5 0.8-0.4 0.7-0.2 0.8 0.2 0.7 0.8 1.3 0.7 1.4 0.8 1.4 0.9 1.1-0.8 0-0.8-0.2-0.7-0.4-0.7-0.5-0.1-0.1-0.2-0.4-0.1 0-0.5 0.2-0.1 0.1 0 0.2-0.2 0.3-0.3 0.3-0.2 0.4-0.3 0.3-0.2 0.4-0.3 0.8-0.4 0.8-0.5 0.4-0.7-0.4-0.4-0.2-0.6-0.1-0.7-0.1-0.7 0-0.6-0.2-0.1-0.1-0.6-0.6-0.5 0.2-0.5 0.5-0.4 0.3-0.5 0-0.4-0.3-0.4-0.3-0.5 0.1-0.7 0.6-0.4 0.2-0.3-0.2-0.2 0.4-0.1 0.3-0.2 0.1-0.4 0.1 0.1-0.2 0.3-0.6 0.3-0.6 0.3-0.5 0.3-0.6 0.1-0.4 0.3-0.4 0.2-0.5 0.1-0.3 0-0.5-0.1-0.3-0.2-0.3-0.3-0.5-0.6-0.9-0.1-0.2-0.3-0.4-0.1-0.2-1-1-0.2-0.3-0.3-0.2-0.3 0-0.3 0.1-0.9 0.3-0.6-0.1-0.6-0.3-0.5-0.8-1.1-0.4-1.2 1.4-1.3 1.4-1.4-0.2-0.1-0.1-0.1-0.3 0-0.3 0-0.3 0.2-0.6 0.1-0.7 0.3-0.6 0.5-1.2-0.1 0-0.3-0.1-0.1 0 0.1-0.3 0.1-0.4 0-0.3 0-0.4-0.1-0.5-0.2-0.4-0.2-0.3-0.3-0.4-0.3-0.2-0.3-0.2-0.5-0.1-0.6-0.1-0.5 0-0.5 0.2-0.6 0.4-0.7 0.4-0.7 0.4-0.7 0.2-0.6 0.1-0.5 0-0.5 0.1-0.5 0.3-0.2 0.6-0.1 0.6 0 0.7-0.1 0.6-0.2 0.3-0.3 0.1-0.3 0-0.3-0.1-0.7 0.5-0.1 1.1-0.4 0.9-1-0.1-0.8 0.6-0.7 1.1-0.6 0.6-0.3-1.1 0-0.7-0.1-0.4-0.2-0.2-0.2-0.2-0.3-0.1-0.1-0.2 0-0.3 0-0.9-0.2-0.7-0.5-0.4-0.7-0.2-0.8-0.3-0.5-0.3-0.2-0.6 0.1-1 0.3-0.7 0.2-0.6 0.2-0.6 0.2-0.7-1.2-1.9-0.4-0.7-0.2-0.3-0.2-0.4-0.4-0.2-0.7-0.1-0.8 0.1-0.5 0.2-0.2 0.3-0.1 0.4-0.2 0.3-0.5-0.3-0.9-0.7-1-0.9-0.9-0.9-0.7-0.9-0.2-0.3-0.1-0.2-0.2-0.6-0.3-0.4-0.5-0.3-1.1-0.6 0.3-2.3 0.3-2.3 0.1-0.7 0.1-0.8 0-0.7 1-0.5 1.2-0.5 1.1-0.4 1.1-0.2 0.1-0.2 0.5 0.2 0.5-0.1 0.4-0.3 0.3-0.3 0.1-0.3 0.2-0.3 0.2-0.3 0.3-0.2 0.1 0 0.3 0.3 0.2 0 0.1-0.2 0.2-0.2 0.1-0.3 0.1-0.2 0.1-0.1 0.5-0.1 0.2-0.1 0.3-0.2 0.3-0.3 0.4-0.2 0.5 0-0.1-0.2-0.2-0.2-0.4-0.5-0.3-0.6-0.1-0.7 0.1-0.3 0.5-2.3 0.4-1.1 0.6-0.9 1.8-1.2 0.3-0.2 0.3-0.4 0.2-0.5 0.1-1.3 0.1-0.6 0.7-0.9 0.2-0.5 0-0.5-0.8-1.3 0-0.5 0.5-0.5 0.3-0.1 0.6-0.1 0.3-0.2 0.5-0.7 0.3-0.1 0.6 0 1.1 0.7 0.6 0.2 1-0.2 1.4-1.2 0.9-0.4 0.8 0.1 0.3 0 0.2-0.1 0.3-0.2 0.2-0.1 0.5 0.2 0.3 0-0.1-0.8-0.1-1.5 0.1-0.4 0-0.4 0.6-0.7 0.9-0.3 1 0 0.8 0.2 0.2 0.2 0.1 0.2 0.2 0.2 0.2 0.7 0.1 0.4 0.1 0.5 0.2 0.3 0.3 0.3 0.4 0.2 0.8 0.3 0.5 0.3 0.6 0.3 0.5 0 0.6-0.1 0.7-0.4 0.8-0.3 0.8-0.3 0.8-0.1 0.4 0.1 0.5 0.2 0.3 0 0.2 0 0.3 0 0.2-0.2 0.2-0.2 0.3-0.1 0.3 0 0.3 0.2 0.2-1.2 0.1-1.2-0.1-1.2-0.1-1.5 0-0.3 0.2-0.2 0.3-0.2 0.9-0.3 0.5-0.1 0.5-0.2 0.2 0.1 0.5 0.4 0.5 0.3 1.1 0.8-0.6 0.7-0.6 0.6-0.3 0.8-0.1 0.9 0 0.3 0.1 0.2 0.1 0.2 0.2 0.1 0.6 0.2 0.6 0.6 0.5 0.7 0.5 0.6 0.4 0.3 0.3 0.3 0.4 0.2 0.5 0 0.6-0.5 0.8-0.6 0.6-0.7 0-0.7-0.1-0.5 0.4-0.1 0.4 0.3 0.2 0.5 0 0.9-0.4 0.9-0.3 0.9 0.4 0.6 0.9 0.1 0.6-0.7 0.5-0.3 0.7 1 0.3 0.2 0.3 0.1 0.2 0.3 0.2 0.4 0.2 0.2 0.3 0 0.2 0.2 0.2 0.3 0 0.3-0.2 0.5-0.2 0.5-0.2 0.3-0.2 0.1-0.2 0-0.2 0-0.1 0.1-0.2 0.3-0.2 0.2-0.2 0.3-0.2 0.3-0.2 0.3-0.3 0.3-0.2 0.3-0.4 0.7-0.2 1.1 0 1.2 0.3 0.9 0.1 0.2 0 0.1-0.1 0.1-0.2 0.1-0.8 0-0.7-0.2-0.7-0.4-0.7-0.5-0.4-0.1-0.4-0.2-0.4-0.1-0.4-0.1-0.5 0-0.5 0-0.5 0.3-0.2 0.3 0.1 0.4 0.2 0.3 0.2 0.3 0.1 0.4-0.1 0.4 0 0.3-0.1 0.3-0.4 0.2-0.4 0.1-0.4 0-0.4 0.1-0.4 0.1-0.4 0.5 0.1 0.5 0.3 0.4 0.6 0.1 0.4-0.2 0.4-0.3 0.3-0.2 0.4 0.1 0.1 0.6-0.2 0.6-0.3 0.6-0.3 0.5-0.6 0.7-0.9 0.5-0.7 0.6-0.4 0.7-0.1 0.6 0 0.6-0.1 0.7-0.2 0.5-0.3 0.4-0.3 0.3-0.3 0.3-0.3 0.3 0.1 0.7 0.5 0.8 0.6 0.8 0.4 0.7 0.6 1.4 1 0.3 1.1-0.6 0.9-1.2 0.1-0.5 0.2-0.6 0.2-0.5 0.4-0.3 0.5 0.4 0.4 0.5 0.4 0.1 0.6-0.7 0.3-0.5 0.9-0.8 0.4-0.5 0.5-0.7 0.5-0.6 0.5-0.6 0.5-0.5 0.8-1.1 1-1.4 1.1-1.1 1-0.3 0.2 0.1 0.1 0.1 0.3 0.5 0.4 0.1 0.5 0 0.3 0.4 0 0.3 0 0.4-0.1 0.4 0.1 0.3 0.1 0.2 0.4 0.4 0.1 0.2 0.1 0.5-0.3 0.4-0.3 0.5-0.2 0.4 0 0.6 0.2 0.5 0.3 0.4 0.3 0.4z"
                                        id="hidalgo" name="Hidalgo">
                                    </path>
                                </a>
                                <a xlink:title="Estado de Mexico">
                                    <path
                                        d="M622.1 463.7l-0.4 0-0.7 0.1-0.4 0 0.2 1 0.2 0.7 0.5 0.3 1 0.3 0.1 0.4 0 0.5 0.1 0.8-0.3 0.4-0.2 0.4-0.1 0.4-0.2 0.4-0.2 0.8 0.2 1 0.5 1.9 0.1 0.3 0.3 1.9 0.2 1.6-0.2 0.2-0.3 0.2-0.1 0.3-0.1 1.5 0 1 0 0.4 0.1 0.4 0.2 0.3 0.1 0.2 0 0.3-0.1 0.3-0.1 0.5-0.5 0.2-0.4 0.3-0.4 0.2-0.3 0.2-0.2 0.5-0.2 0.4-0.3 0.1-0.4 0.1-0.5 0.1-0.4 0-0.7-0.2-0.4 0-0.2 0-0.2-0.1-0.2-0.2 0-0.3-0.2-0.5-0.2-0.6-0.2-0.7-0.2-0.2-0.1 0-0.3 0.1-0.2-0.1-0.3-0.2-0.2-0.2-0.5-0.6-0.3-0.1-0.5-0.1-1-0.2-0.5-0.1 0.5-0.7 0.2-0.4 0.1-0.4 0-0.2-0.2-0.5-0.5-1-0.1-0.6 0-0.7 0.2-0.8 0-0.5 0-0.4-0.1-0.4-0.2-0.7-0.2-0.3-0.3-0.5-0.2-0.2-0.5-0.3-0.7-0.3-0.5-0.3-0.5-0.4 0.5-0.5-0.3-0.3-0.1-0.2 0.3-0.2 0.2-0.2 0.1-0.3-0.2-0.3-0.2-0.5-0.3-0.5-0.1-0.2-0.1-0.3-0.1-0.3-0.4-0.2-0.2-0.2-0.2-0.4-0.1-0.5 0-0.2 0-0.3-0.1-0.2-0.2-0.3-0.2-0.2-0.3-0.2-0.4 0.4-0.3 0.3-0.3 0.3 0 0.4 0 0.3-0.3 0.3 0.3 0.1 0.2 0.3-0.1 0.2-0.3 0.2-0.2 0.1-0.2 0.1-0.2 0.1-0.1 0.2-0.5 0.7-0.4 0.5-0.4 0.5-0.4 0.6-0.3 0.5-0.1 0.3-0.3 0.6-0.4 0.2-0.6-0.1-0.6-0.1-0.1 0.7-0.4 0.7-0.2 0.7 0.1 0.7 0.2 0.2 0 0.1 0 0.1-0.2 0.3-0.2 0.3 0.1 0.3 0.3 0.2 0.2 0 0.1 0.1 0.1 0.1 0 0.1-0.1 0.7 0.1 0.6 0.1 0.5 0.3 0.5 0.2 0.2 0.2 0.2-0.2 0.3-0.3 0.4-0.4 0.3-0.3 0.3-0.3 0.5 0.1 0.5 0.4 0.4 0.3 0.5-0.4 0.3-0.4 0.3-0.1 0.4 0.2 0.6 0.7 0.7 0.2 0.9-0.2 0.5-0.5 0.4-0.7 0.4-0.4 0.1-0.3 0.1-0.4 0.2-0.3 0.1-0.4 0.4-0.3 0.5-0.3 0.6-0.2 0.5-0.3 0.4-0.4 0.3-0.4 0.2-0.3 0.3 0 0.2-0.1 1-0.1 0.9-0.3 1-0.2 1 0 0.1-0.6 0.2-0.7-0.1-0.8-0.1-0.4-0.4-0.3-0.7-0.2-0.2-0.4-0.1-0.6-0.6-0.6-0.7-0.6-0.3-0.8 0.7-0.5 0.5-0.9 0.8-0.3 0.2-0.3 0.2-0.2 0.4 0 0.4 0 0.4-0.1 0.3-0.3 0.4-0.5 0.5-0.4-0.1-0.3-0.3-0.4-0.5-0.5-0.4-0.5-0.1-0.5 0-0.7 0.2-0.3 0.1-0.4 0.1-0.6 0.2-0.7 0.2-0.6 0.2-0.6 0.2-0.7 0.2-0.6 0.2-0.6 0.1-0.7 0.1-0.1 0.2-0.6 1.2-0.4 0.9-0.6 0.8-0.7 0.8-0.7 0.6-0.7 0.6-0.7 0.5-0.7 0.6-0.4 0.1-0.2 0.3-0.2 0.3-0.4 0.3-0.4 0.1-0.5 0-0.4-0.2-0.3-0.3-0.5-0.5-0.2-0.3-0.3-0.3-0.3-0.6 0.2-0.8 0.3-0.9 0.1-0.9-0.2-0.7-0.5-0.7-1.2-1.1-0.2-0.3-0.3-0.3-0.2-0.3-0.1-0.4 0.1-0.4 0-0.4 0-0.4-0.2-0.4-0.3-0.7 0-0.7 0.3-0.6 0.3-0.6 0-0.4-0.2-0.3-0.2-0.2-0.1-0.4 0-0.5-0.1-0.4-0.3-0.1-0.4 0-1.3 0-1.2-0.2-1.2-0.3-1.2-0.4 0.3-0.2 0-0.3 0.1-0.2 0.2-0.2 0.2-0.1 0.1 0.1 0.2-0.1 0.1-0.2 0.3-0.4 0.4-0.4 0.4-0.2 0.4-0.2 0.4-0.3 0.1-0.4 0-0.5 0-0.4 0.2-0.5 0.3-0.4 0.5-0.3 0.3-0.3 0.3-0.4 0.7-0.8 0.3-0.4 1-1.4 1.3-1.7 1.6-2.1 0.3-0.4 0.3-0.3 0.1-0.3-0.2-0.4-0.9-1.4 0.8-0.6 3.3-1.9 0.5-0.3 0.8-0.5 0.4-0.5-0.5-0.5-0.4-0.4-0.3-0.6-0.4-1.2-0.3-0.7-0.2-0.6-0.1-0.3 0.2-0.6 0.5-1.7 0.3-1.1 0.6-1.5 0-0.3-0.2-0.8 0-0.4 0.6-2.2 0.6-2.2 0.1-0.4 0.1-0.5 0.1-0.8 0.3-0.5 0.3-0.6 0.3-0.5 0.3-0.5 0.2-0.2 0.6-0.8 0.5-0.7 0.5-0.8 0.4-0.8 1.4-1.7 0.6-0.7 0.5-0.5 0.6-0.2 0.9 0-0.4-0.5-0.4-0.6-0.3-0.5-0.5-0.5 3-1.9 1.1 0.6 0.5 0.3 0.3 0.4 0.2 0.6 0.1 0.2 0.2 0.3 0.7 0.9 0.9 0.9 1 0.9 0.9 0.7 0.5 0.3 0.2-0.3 0.1-0.4 0.2-0.3 0.5-0.2 0.8-0.1 0.7 0.1 0.4 0.2 0.2 0.4 0.2 0.3 0.4 0.7 1.2 1.9-0.2 0.7-0.2 0.6-0.2 0.6-0.3 0.7-0.1 1 0.2 0.6 0.5 0.3 0.8 0.3 0.7 0.2 0.5 0.4 0.2 0.7 0 0.9 0 0.3 0.1 0.2 0.3 0.1 0.2 0.2 0.2 0.2 0.1 0.4 0 0.7 0.3 1.1 0.6-0.6 0.7-1.1 0.8-0.6 1 0.1 0.4-0.9 0.1-1.1 0.7-0.5 0.3 0.1 0.3 0 0.3-0.1 0.2-0.3 0.1-0.6 0-0.7 0.1-0.6 0.2-0.6 0.5-0.3 0.5-0.1 0.5 0 0.6-0.1 0.7-0.2 0.7-0.4 0.7-0.4 0.6-0.4 0.5-0.2 0.5 0 0.6 0.1 0.5 0.1 0.3 0.2 0.3 0.2 0.3 0.4 0.2 0.3 0.2 0.4 0.1 0.5 0 0.4 0 0.3-0.1 0.4-0.1 0.3 0.1 0 0.3 0.1 0.1 0-0.5 1.2-0.3 0.6-0.1 0.7-0.2 0.6 0 0.3 0 0.3 0.1 0.3 0.1 0.1 1.4 0.2 1.3-1.4 1.2-1.4 1.1 0.4 0.5 0.8 0.6 0.3 0.6 0.1 0.9-0.3 0.3-0.1 0.3 0 0.3 0.2 0.2 0.3 1 1 0.1 0.2 0.3 0.4 0.1 0.2 0.6 0.9 0.3 0.5 0.2 0.3 0.1 0.3 0 0.5-0.1 0.3-0.2 0.5-0.3 0.4-0.1 0.4-0.3 0.6-0.3 0.5-0.3 0.6-0.3 0.6-0.1 0.2z"
                                        id="estadodemexico" name="Estado de Mexico">
                                    </path>
                                </a>
                                <a xlink:title="Morelos">
                                    <path
                                        d="M612.5 480.3l0.5 0.1 1 0.2 0.5 0.1 0.3 0.1 0.5 0.6 0.2 0.2 0.3 0.2 0.2 0.1 0.3-0.1 0.1 0 0.2 0.2 0.2 0.7 0.2 0.6 0.2 0.5 0 0.3 0.2 0.2 0.2 0.1 0.2 0 0.4 0 0.7 0.2 0.4 0 0.5-0.1 0.4-0.1 0.3-0.1 0.2-0.4 0.2-0.5 0.3-0.2 0.4-0.2 0.4-0.3 0.5-0.2-0.1 2.1-0.1 0.5-0.2 0-0.3-0.1-0.2 0.2 0 0.7 0.4 0.5 0.2 0.5-0.6 0.4-0.5 0.5-0.5 0.6-0.3 0.6-0.5 0.5 0.3 0.3 0.2 0.1 0.2 0 0 0.4-0.1 0.2 0 0.2 0.1 0.2 0.1 0.2 0.4 0.3 0.3 0.4 0.3 0.4 0.2 0.5 0.1 0.5 0 0.2 0 0.1-0.1 0.1-0.1 0.2-0.6 0-0.6 0-1.2-0.3 0.1 0.7 0 0.3 0.1 0.4 0.1 0.4 0.1 0.5 0.1 0.6 0.1 0.5 0.1 0.3 0.5 0.6 0.3 0.7 0.2 0.8 0.3 1.3 0.2 0.7 0.1 0.6 0 0.4-0.6 0.2-0.7-0.4-0.7-0.6-0.5-0.5-0.5-0.4-0.5-0.3-0.6-0.2-0.6 0-0.4 0.1-0.5 0.1-0.4 0.1-0.4 0.2-0.2 0.2-0.2 0.3-0.2 0.3-0.5 0.2-0.5 0.4-0.1 0.6-0.2 0.5-0.6 0.4-0.8 0.2-0.7 0.3-0.7 0.4-0.7 0.5-0.3-1.2-0.6-0.7-0.7-0.7-0.4-0.9-0.1-0.4-0.1-0.2-0.2-0.2-0.2-0.3-0.3-0.3-0.1-0.3 0-0.5-0.1-0.4 0-0.3-0.2-0.2-0.2-0.1-0.3-0.1-0.8-0.1-0.6 0.4-0.4 0.6-0.2 0.8-0.1 0.9-0.1 0.4-0.1 0.3-0.7 0.1-0.7 0-0.7 0-0.6 0-0.3-0.3 0-0.7-0.2-0.5-0.6-0.1-0.4 0-0.4-0.2-0.3-0.3-0.3-0.4-0.2-0.4-0.5-0.8-0.2-0.4-0.6-0.2-0.2-0.6-0.1-0.5-0.6-0.1-0.7-0.2-0.1-0.5 0.2-0.6 0.3-0.6 0-0.1 0.2-1 0.3-1 0.1-0.9 0.1-1 0-0.2 0.3-0.3 0.4-0.2 0.4-0.3 0.3-0.4 0.2-0.5 0.3-0.6 0.3-0.5 0.4-0.4 0.3-0.1 0.4-0.2 0.3-0.1 0.4-0.1 0.7-0.4 0.5-0.4 0.2-0.5-0.2-0.9-0.7-0.7-0.2-0.6 0.1-0.4 0.4-0.3 0.4-0.3-0.3-0.5-0.4-0.4-0.1-0.5 0.3-0.5 0.3-0.3 0.4-0.3 0.3-0.4 0.2-0.3 0.7 0.7 1.1 0.4 1.1 0.2 1 0.2 1 0.1 0.6 0.1 0.6 0.2 0.6 0.4 0.6 0.4 0.3 0.1 0.3-0.2 0.3-0.4 0.2-0.3 0.4-0.1 0.5 0 0.4 0 0.4 0z"
                                        id="morelos" name="Morelos">
                                    </path>
                                </a>
                                <a xlink:title="Queretaro">
                                    <path
                                        d="M610 407.1l0 0.4-0.1 0.4 0.1 1.5 0.1 0.8-0.3 0-0.5-0.2-0.2 0.1-0.3 0.2-0.2 0.1-0.3 0-0.8-0.1-0.9 0.4-1.4 1.2-1 0.2-0.6-0.2-1.1-0.7-0.6 0-0.3 0.1-0.5 0.7-0.3 0.2-0.6 0.1-0.3 0.1-0.5 0.5 0 0.5 0.8 1.3 0 0.5-0.2 0.5-0.7 0.9-0.1 0.6-0.1 1.3-0.2 0.5-0.3 0.4-0.3 0.2-1.8 1.2-0.6 0.9-0.4 1.1-0.5 2.3-0.1 0.3 0.1 0.7 0.3 0.6 0.4 0.5 0.2 0.2 0.1 0.2-0.5 0-0.4 0.2-0.3 0.3-0.3 0.2-0.2 0.1-0.5 0.1-0.1 0.1-0.1 0.2-0.1 0.3-0.2 0.2-0.1 0.2-0.2 0-0.3-0.3-0.1 0-0.3 0.2-0.2 0.3-0.2 0.3-0.1 0.3-0.3 0.3-0.4 0.3-0.5 0.1-0.5-0.2-0.1 0.2-1.1 0.2-1.1 0.4-1.2 0.5-1 0.5 0 0.7-0.1 0.8-0.1 0.7-0.3 2.3-0.3 2.3-3 1.9 0.5 0.5 0.3 0.5 0.4 0.6 0.4 0.5-0.9 0-0.6 0.2-0.5 0.5-0.6 0.7-1.4 1.7-0.4 0.8-0.5 0.8-0.5 0.7-0.6 0.8-0.2 0.2-0.3 0.5-0.3 0.5-0.3 0.6-0.3 0.5-0.7-0.3-0.6-0.5-0.4-0.6 0-0.9 0-0.8 0-1.9-0.7-1.9-1.1-1.6-1.6-0.8-0.3-0.2-0.3-0.1-0.4-0.1-0.3-0.2-0.4-0.7-0.5-0.3-0.6-0.3-0.4-0.8-0.3-0.9-0.5-0.7-0.7-0.7-0.6-0.7-0.5-0.6-0.5-1.1-0.1-1.2 0-1.2-0.1-1.3-0.3-0.6-0.4-0.6-0.4-0.6-0.4-0.6-0.6-1.4-0.3-1.4 0.1-1.4 0.6-1.4 0.3-0.5 0.3-0.5 0.2-0.6 0.1-0.5 0-1.2 0.2-0.6 0.5-0.4 0.3-0.6 0.3-0.8 0.5-0.6 0.6 0 0.5 0.5 0.1 0.8 0.3 0.6 0.9 0.3 0.7 0.1 0.6 0.1 0.6 0 0.6-0.2 0.5-0.3 0.5-0.4 0.6-0.3 0.6 0.1 0.2 0 0.1 0.2 0.4 0.5 0.4 0.6 0.5 0.4 0.7 0 0.3-0.2 0.2-0.3 0.2-0.3 0.2-0.2 0.3-0.1 0.3-0.1 0.2-0.1 0.3-0.2 0.3-0.7 0.2-0.8 0.1-0.8 0-0.8 0.1-1.2 0.1-1.3 0.2-1.2 0.4-1.1 0.5-0.7 0.8-0.5 0.8-0.2 0.8-0.1 0.5 0.1 0.5 0.2 0.5 0.2 0.4 0.3 0.5 0.6 0.9 0.2 0.9-0.1 0.8-0.3 0.5-0.2 0.1-0.3 0.2-0.3 0.2-0.4 0.3-0.3 0.3-0.1 0.8-0.3 0.4-0.4 0.2-0.4 0-0.5-0.4-0.3-0.9-0.1-0.8-0.1-0.6-0.5-0.1-1.1 0.1-0.4 0.1-0.3 0-0.3-0.1-0.5-0.2-0.4 0.1-0.4 0.2-0.5 0-0.4 0.4-1 0.4-1.1 0.5-0.9 0.9-0.3 0.4 0.2 0.5 0.3 0.4 0.3 0.3 0.3 0.2 0.2 0.2 0.2 0.2 0.1 0.2 0.2 0.2 0.4 0.2 0.4 0.1 0.4 0.4 0.2 0.3 0.2 0.4 0.5 0.3 0.2 0.4 0.1 0.2-0.2 0.2-0.1 0.2-0.1 0.7 0 0.9 0 0.8-0.1 0.4-0.6 0.2-0.1 0.3-0.1 0.5-0.1 0.4-0.1 0.4 0.1 0.4 0.1 0.4-0.1 0.2-0.2 0.1-0.2 0.3-0.5 0.3-0.5 0.1-0.3 0.2-0.2 0.2-0.2 0.1-1 0.2-0.3 0.2-0.1 0.2-0.1 0.1 0 0.6 0.3 0.2 0 0.3-0.1 0.3-0.2 0.3-0.3 0-0.3 0-0.4 0-0.4 0.5-0.5 0.8-0.4 0.5-0.6 0.1-0.7 0.9 3.1 0.2 0.9 0.3 0.8 0.3 0.9 0.3 0.8 0.3 0.9 0.5 1 0.3 0.5 0 0.5-0.3 2-0.1 0.6 0.5 0 0.6 0.1 0.6 0.3 0.4 0.4z"
                                        id="queretaro" name="Queretaro">
                                    </path>
                                </a>
                                <a xlink:title="Veracruz">
                                    <path
                                        d="M655.5 390.7l-0.3 0.4-0.9-0.2-0.8-1.1-0.5-1.6-0.2-1.3 0.5 0.5 0.2 0.6 0.1 0.8 0.3 0.6 1.1 0.8 0.5 0.5z m-5.7-17.8l0.2 0.7 0.1 4.2 0.4 1.2 4.7 8.8 3.2 3.9 0.6 0.3 1.7 1.6 0.3 0.2 0.4 0.4 2.2 1.5 0.9 1.5-0.1 1.3-0.5 1.5-0.3 1.4-0.1 0.6-0.9 1.5-0.4 0.5-0.3 0.6-0.2 0.8-0.2 1.5-0.3 0-0.4-2.3-0.8-1.7-0.2-1.1-0.2-0.2-0.1-0.3 0.6-0.6 0.5-0.4 0.6-0.3 0.6-0.1 0.3 0.2 0.3-0.5 0.2-0.5 0.1-0.6 0.1-0.6-0.3-0.5-0.7-0.6-1.2-0.8-1.5-1.4-0.5-0.8-1.7-1.8-1.5-2.2-0.7-0.6-0.1-0.3-0.1-0.4-0.5-2.3-0.3-0.8-0.9-0.6-2.6-4.7-0.4-1.1 0.1 0.8 0.6 1.2 0.2 0.4 0.3 0.6 0.7 1.9 0.3 1.4 0.1 2.8 0.6 2.3 0.5 2.9 0.5 1.3 2.5 4.6 0.5 0.5 0.5 0.3 0.5 0 0.5-0.2 0.4-0.3 0.4 0.4 0 0.6-0.4 1.4 0.2 0.7 2.1 4.3 0 0.4 0.5 0.2 0.3 0.5 0.2 1.2 1.9 5.1 2.2 4.3 2.2 3.9 0.3 1.2 0.3 0.6-0.2 0.1-0.1 0.1-0.3 0.4 1.5 3.1 3.6 4.5 1.1 1 1.3 0.7 0.6 0.5 0.5 1.3 0.4 0.6 0.9 0.8 2.2 2.6 1.9 1.7 0.6 0.7 0.4 0.9 0.3 0.4 0.3 0.3 0.2 0.1 0.4 0.1 0.2 0.3 1.1 1.9 2.1 2.5 2.1 3.3 1.7 2 0.5 1 1.1 3.3 0.3 2.9 1.1 3.9 0.3 0.6 1.1 1.3 0.2 0.6-0.4 0.8 0.1 0.5 0.4 1.1 0.2 1.2 0.3 0.8 0.4 0.6 0.7 0.4 2.6 2.2 0.5 0.3 0.8-0.3 0.3 0.4 0.1 0.8 0.2 0.6 0.3 0.5 0.4 1.7 0.4 0.7 0.5 0.5 0.6 0.5 0.8 0.1 0.8 0 0.5 0.1 0.2 0.4 0.4 2.4 0.5 1.2 0.5 1 0.7 0.9 1.1 1.1 0.7 0.5 0.7 0.2 0.5 0.1 0.7 0.2 0.6 0.3 0.4 0.3 0.1 0.3-0.1 0.9-0.8-0.5-1.4-1.1-1.8-0.5-1.1-1.2-0.7-0.1-0.7 0.3 0.7 0.6 1.2 0.6 0.5 0.2 0.3 0.6 0.7 0.6 1.4 0.9 0 0.3-0.5-0.1-0.9-0.3-0.5-0.1-0.3 0.2 0.1 0.5 0.4 0.5 0.3 0.2 0.5 0 0.4-0.1 0.7-0.4 0.1-0.1 0-0.2 0.1-0.1 0.4 0 0.2 0 3.4 1 0.7 0.1 0.5 0.3 0.7 0.7 0.7 0.4 0.5-0.5-1.2-0.8-2.1-0.7-1.7-0.9-0.1-1.5 2.1 1.7 2.6 0.9 2.7 0.5 4.2 0.1 2.8-0.2 2.1 0.1 0.6 0.1 0.5 0.3 1.1 1 2.7 1.8 0.4 0.5 0.2 0.6 0.3 0.5 0.7 0.3 4.1 0.6 0.5 0.3 1.5 0.1 0.7 0.4 0.5 1 1 2.5 0.6 1.1 2.1 2 0.8 0.9 1.5 3.2 0.1 0.1 1 0.7 0.4 0.2 1 0.1 1 0.4 0.9-0.1 0.9-0.2 0.7 0 1.1-0.5 4.6-0.7 2.2-0.6 0.2 0.3 0 0.8 0.2 0.3 0.3 0.1 0.4 0 0.2 0.2 0.1 0.4 0 0.4-0.1 0.5 0.1 0.4 0.3 0.3 0.2 0.2-0.1 0.3-0.2 0.1-0.1 0.2 0.1 0.2 0.3 0.4 0.2 0.2 0.1 0.4 0 0.4 0 0.3 0.3 0.3 0.3 0.4-0.3 0.5-0.3 0.4-0.1 0.5-0.2 1.6 0 0.7 0.5 0.5 0.2 0 0.5 0 0.2 0.1 0.1 0.1 0.2 0.4 0 0.1 0.4 0.2 0.4 0.1 0.5 0 0.4 0.2 0.7 0.7 0.1 0.9 0.3 0.8 1.2 0.4 0.6 0 0.5 0.1 0.3 0.3 0.1 0.6 0.1 0.2 0.3 0.1 0.4 0 0.3 0 0.9 0.3 0.9 0.3 0.8 0.6 0.7 1.3 0.7 0.8 0.7 0.7 0.4 0.4 1 0.4 0.2 0.5-0.1 0.7-0.2 0.8-0.2 1-0.1 0.3 0 0.4-0.3 0.7 0 0.3 0.2 0.6 0.4 0.4 0.5 0.3 0.6 0.2-0.5 1.3-0.4 0.6-0.6 0.6-0.6 0.4-0.7 0.4-4.6 3.2-0.7 0.6-0.4 0.2-0.4 0.1-9.9-0.6-4.9-0.3-4.9-0.3-1.9-0.1-0.9-0.1-2.1-0.2-3.2-0.2-1.5 0-2.3-0.1-2-0.3-1.1-0.6-0.6-2.1 0.1-0.2 0.2-0.1 0.1-0.1 0-0.3-0.2-0.7-0.4-0.6-0.8-0.5-0.9-0.3-0.7-0.2-0.4-0.6-0.5-0.5-0.4-0.4-0.5-0.5-1-1-1-1.1-0.9-1.1-1-1.2 0.1-0.4 0-0.3 0.1-0.4 0.2-0.4 0.3-0.2 0.6-0.3 0.3-0.1 0-0.2 0.1-0.8 0.1-0.6 0.1-0.5-0.1-0.4-0.3-0.3-0.2 0-0.6 0.1-0.2 0-0.2 0.2 0.3 0.5-0.2 0.2-0.3-0.2-0.4-0.2-0.4-0.1-0.2 0.2-0.3 0.7-0.5 0.6-0.6 0.3-0.9 0.1-0.2 0.2 0 0.2 0 0.2-0.8 0-0.7 0-0.6 0.2-0.7 0.4-0.2 0.3-0.3 0.4-0.3 0.4-0.4 0.1-0.4 0.1-0.5 0.2-0.5 0.4-0.6 0.3-0.1 0.1-0.1 0.2 0 0.2 0 0.2-0.3 0.1-0.3 0-0.2 0-0.5 0.5-0.3 0.1-0.9-0.4-0.7 0-0.6 0.2-0.5 0.3-0.8 0.3-0.3 0-0.1-0.1-0.6-0.2-0.5-0.2-0.5-0.2-0.4-0.5-2-4-0.6-1.3-0.5-1-0.4-0.9 0-0.9 0.3-1 0.2-0.4 0.2-0.3 1.1-1.2 1-1.2 0.8-1.3 0.6-1.6-0.5-1-0.4-1.2-0.5-1.1-0.5-0.9-0.5-0.2-0.5-0.3-0.2 0-0.9-0.2-0.3-0.1-0.4-0.1-0.3-0.2-0.4-0.2-0.3-0.1-0.3-0.1-0.3 0-0.4 0.1-0.2 0.1-0.4-0.1-0.5 0-0.4 0-0.4-0.2-0.7-0.1-0.4 0-0.2 0.2-0.4 0.6-0.2 0.2-0.4 0.1-0.4-0.1-0.5-0.1-0.3-0.2-0.3-0.3 0-0.3 0.1-0.3-0.1-0.2-0.3-0.1-0.4 0-0.4 0.1-0.4-0.3-0.1 0-0.3-0.3-0.2-0.9-0.2-1-0.3-0.8-0.3-0.5-0.3-0.5-0.4-0.4-0.5-0.4-0.3-0.1-0.4-0.3-0.3-0.2-0.8-1-0.7-1.4-0.4-1.5-0.3-1.3-0.3-0.9-0.5-0.5-0.7-0.3-1-0.2-1.4-0.3-1.2-0.5-1.1-0.6-1.1-1-1-0.9 0.2 1 0.3 1.1 0.4 1.2 0.1 1.1-0.4 1.1-0.6 0.9-1.5 1.7-0.5 0.5-0.3-0.5-1.1-1.1-0.4-0.7-0.1-0.8-0.1-0.9-0.3-0.7-0.8 0.1-0.1 0-0.9 0.2-0.8 0.2-0.8 0.1-1.2 0.4-0.9 0.1-0.4 0.2-0.4 0.3-0.4 0.3-0.4 0.4-0.4 0.1-0.5-0.2-0.5 0.1-0.5 0-0.4-0.1-0.3-0.5 0.1-0.6 0.2-0.6 0.2-0.5-0.1-0.5-0.4-0.4-0.4-0.5-0.1-0.7 0-0.3 0-0.2-0.1-0.2-0.1-0.3-0.2-0.2-0.2-0.1-0.3-0.1-0.7-0.1-0.4-0.1-0.6-0.4-0.4 0-1.1 0.4-0.5 0.1-0.5-0.1-0.3-0.2-0.3-0.2-0.2-0.3-0.5-1.3-0.4-1 0-1 0.3-0.9 0.5-0.5 0.3-0.2 0.2-0.2 0.2-0.3 0.2-0.4 0.1-0.4 0.4-0.2 0.6-0.2 0.5-0.1 0.3-0.3 0-0.7-0.1-0.3-0.3-0.8-0.1-0.4-0.1-0.4 0-0.4-0.1-0.4 0-0.3 0-0.4-0.1-0.3-0.2-0.8-0.2-0.8-0.2-1.1 0-1 0.2-0.8 0.3-0.1 0.4-0.1 0.4 0 0.3-0.1 0.5-0.2 0.7-0.5 0.5-0.1 0.6 0.1 0.6 0.3 0.6 0.1 0.4-0.3 0.1-0.3 0.1-0.3 0.2-0.1 0.3 0 0.3 0 0.2 0 0.2 0 0.2-0.1 0.2-0.2 0.8-0.9 0.1-0.2 0.2-0.2 0.1-0.1 0.4-0.3 0.1-0.2 0.1-0.2 0-0.3-0.4-0.2-0.4-0.2-0.5-0.2-0.8-0.3-0.4-0.1-0.3 0.1-0.5 0.2-0.2 0.1-0.6 0.1-0.8-0.2-0.9-0.4-0.8-0.2-0.6 0-0.5-0.3-0.5-0.7-0.4-0.8-0.5-0.6-0.4 0-0.3 0.1-0.4 0.2-0.4 0.1-0.2-0.2-0.3-0.6-0.2-0.2-0.5-0.1-0.5 0-0.5-0.1-0.4-0.2-0.2-0.5 0.3-0.2 0.5-0.1 0.5 0.1 0.6-0.2 0.5-0.3 0.3-0.5-0.3-0.6-0.2-0.2-0.2-0.2-0.4-0.2-0.1-0.3 0-0.3 0.1-0.3 0-0.2-0.4-0.4-0.4-0.2-0.3-0.3 0-0.9 0.1-0.7 0.1-0.8 0.4-0.6 0.5 0 1-1 0.5-1.8 0.2-1.9-0.1-1.5-0.1-0.3-0.1-0.5 0-0.5 0.1-0.2 0.1-0.2 0.1-0.2 0.3-0.5 0.4-0.7 0.4-0.6 0.4-0.6 0.5-0.5 0.3-0.3 0.7-0.8 0.4-0.5 0.5-0.4 0.4-0.4 0.4-0.5 0.6-1.4-0.6-0.8-1.2-0.5-1.2-0.3-0.3-0.2-0.5-0.3-0.3-0.1-0.6-0.3-0.6-0.3-0.5-0.4-0.6-0.4-0.7-0.6-0.7-0.3-0.7-0.1-0.9 0.2-0.5 0.1-0.7 0.4-0.3 0.6-0.3 0.7-0.7 1-0.3 0.4-0.4 0.4-0.3 0.3-0.4 0.3-0.2 0.1-0.3 0.2-0.1 0-0.2 0-0.2-0.2-0.1-0.1-0.1-0.2-0.1-0.2 0-1-0.3-0.6-0.5-0.2-0.9 0.4-0.3 0.1-0.5 0-0.4-0.3-0.3-0.5-0.1-0.6-0.1-0.3-0.3-0.3-0.2-0.2-0.6-0.3-0.6-0.3-0.5-0.4-0.1-0.5 0.4-0.8 0.1-0.4 0.1-0.4-0.1-0.2-0.1-0.2-0.1-0.3 0-0.2 0.1-0.6-0.1-0.6-0.1-0.5-0.2-0.5 0.3-0.3 0.4-0.1 0.5 0.1 0.4-0.1 0.5-0.4 0.3-0.4 0.3-0.1 0.5 0.5 0.7 1 0.5 0.2 0.5-0.2 0.4-0.4 0.4-0.6 0.4-0.7 0.4-0.5 0.1-0.1 0.1-0.1 0.1-0.2 0.1-0.1 0-0.9-0.4-0.9-0.5-0.9-0.7-0.4-0.8-0.2-0.4-0.1-0.4-0.1-0.4 0-0.7 0.1-0.3 0-0.5-0.2 0-0.4 0.3-0.3 0.3-0.5-0.3-0.6-0.4-0.5-0.3-0.5-0.2-0.7 0-0.8 0-0.7-0.1-0.7-0.4-0.6-0.7-0.6-0.6-0.1-0.6 0.1-0.8 0-0.4-0.2-0.3-0.1-0.4-0.1-0.3 0.2-0.3 0.5 0 0.5 0 0.6 0 0.5-0.3 0.3-0.4 0.1-0.4 0.2-0.2 0.3 0 1-0.2 0.4-0.7 0.3 0 0.3 0.5 0.6 0.1 0.3 0 0.4 0.1 0.7 0 0.7-0.1 0.7-0.1 0.7-0.3 0.7-0.2 0.5-0.3 0.4-0.4 0.3-0.4 0.3-0.3-0.4-0.3-0.4-0.2-0.5 0-0.6 0.2-0.4 0.3-0.5 0.3-0.4-0.1-0.5-0.1-0.2-0.4-0.4-0.1-0.2-0.1-0.3 0.1-0.4 0-0.4 0-0.3-0.3-0.4-0.5 0-0.4-0.1-0.3-0.5-0.1-0.1-0.2-0.1-1 0.3-1.1 1.1-1 1.4-0.8 1.1-0.5 0.5-0.5 0.6-0.5 0.6-0.5 0.7-0.4 0.5-0.9 0.8-0.3 0.5-0.6 0.7-0.4-0.1-0.4-0.5-0.5-0.4-0.4 0.3-0.2 0.5-0.2 0.6-0.1 0.5-0.9 1.2-1.1 0.6-1-0.3-0.6-1.4-0.4-0.7-0.6-0.8-0.5-0.8-0.1-0.7 0.3-0.3 0.3-0.3 0.3-0.3 0.3-0.4 0.2-0.5 0.1-0.7 0-0.6 0.1-0.6 0.4-0.7 0.7-0.6 0.9-0.5 0.6-0.7 0.3-0.5 0.3-0.6 0.2-0.6-0.1-0.6-0.4-0.1-0.3 0.2-0.4 0.3-0.4 0.2-0.6-0.1-0.3-0.4-0.1-0.5 0.4-0.5 0.4-0.1 0.4-0.1 0.4 0 0.4-0.1 0.4-0.2 0.1-0.3 0-0.3 0.1-0.4-0.1-0.4-0.2-0.3-0.2-0.3-0.1-0.4 0.2-0.3 0.5-0.3 0.5 0 0.5 0 0.4 0.1 0.4 0.1 0.4 0.2 0.4 0.1 0.7 0.5 0.7 0.4 0.7 0.2 0.8 0 0.2-0.1 0.1-0.1 0-0.1-0.1-0.2-0.3-0.9 0-1.2 0.2-1.1 0.4-0.7 0.2-0.3 0.3-0.3 0.2-0.3 0.2-0.3 0.2-0.3 0.2-0.2 0.2-0.3 0.1-0.1 0.2 0 0.2 0 0.2-0.1 0.2-0.3 0.2-0.5 0.2-0.5 0-0.3-0.2-0.3-0.2-0.2-0.3 0-0.2-0.2-0.2-0.4-0.2-0.3-0.3-0.1-0.3-0.2-0.7-1-0.5 0.3-0.6 0.7-0.9-0.1-0.4-0.6 0.3-0.9 0.4-0.9 0-0.9-0.2-0.5-0.4-0.3-0.4 0.1 0.1 0.5 0 0.7-0.6 0.7-0.8 0.6-0.6 0.5-0.5 0-0.4-0.2-0.3-0.3-0.4-0.3-0.5-0.6-0.5-0.7-0.6-0.6-0.6-0.2-0.2-0.1-0.1-0.2-0.1-0.2 0-0.3 0.1-0.9 0.3-0.8 0.6-0.6 0.6-0.7-1.1-0.8-0.5-0.3-0.5-0.4-0.2-0.1 0-0.6 0-0.6-0.1-0.6 0-0.7-0.1-1-0.3-0.7-0.6-0.5-1.6-0.8-0.6-0.4-0.4-0.5-0.3-0.7 0.1-0.2 0.4-0.4 0-0.5-0.1-0.6 0.1-0.9 0.5-0.4 1.2 0.2 0.5-0.5-0.3-0.2 0-0.3 0.2-0.2 0.3-0.2 0.2 0 0.4 0.2 0.2 0.1 0.1-0.1 0.1-0.3 0.1-0.1 0.8-0.5 0.4-0.3 0.3-0.4 0.2-0.3 0.1-0.5-0.1-0.4-0.5-0.2-0.3-0.1 0-0.4 0-0.4-0.2-0.4-1.3 0.2-0.4-0.4-0.5-0.8-0.1-0.7 0.7-0.2-0.2-0.7 0.3-0.4 0.4-0.3 0-0.3-0.6 0.1-0.8 0.2-0.5 0-0.1-1 0.1 0 0.3 0.1 1.2 0.2 0.2-0.1 0.4-0.2 0.4 0 0.4 0.1 0.3 0.1 0.3 0 0.3-0.4 0.3 0.3 0.2-0.1 0.3-1.1 0.2-0.5 0.3-0.5 1.4-2.4 0.6-1.4 0.4-1.3 0-1-0.2-0.8-0.6-0.7-0.7-0.6-0.9-0.6-1.9-1.1-0.9-0.5-0.6-0.5-0.6-0.5-0.6-0.5-0.7-0.4-0.5-0.4-0.2-0.1 1.1-0.2 1.1-0.2 1-0.2 1 0.1 0.2 0 0.1-0.1 0.2 0 0.5 0.4 0.1-0.1 0.1-0.1 0.2-0.1 0.5 0.3 0.3 0.3 0.3 0.1 0.5-0.4 0.3-0.1 0.2 0.5 0.2 0.4 0.5-0.3 0.4 0.2 0.4 0.1 0.5 0 0.3-0.2 0.1-0.6 0-0.8 0.2-0.7 0.5 0 0.4 0.2 0.2 0.1 0.1 0 0.4-0.1 0.3-0.1 0.3-0.2 0.3-0.2 0.4-0.1 0.6 0.2 0.2 0.7 0.3 0.9 0.6 0.5 0.5 0.4 0.6 0.5 0.5 0.4 0.5 0.1 0.7 0 0.8 0.3 0.8 0.3 0.8 0 0.5 0.1 0.6 0.4 0.6 0.4 0.5 0.3 0.4 0.4-0.2 0.4-0.4 0.4 0.1 0.5 0.6 0.6 0.3 0.3 0.3 0.4 0.3 0.4 0.4-0.1 0.3-0.3 0.2-0.4 0.3-0.2 0.3-0.1 0.9-0.6 0.2-0.2z"
                                        id="veracruz" name="Veracruz">
                                    </path>
                                </a>
                                <a xlink:title="Chiapas">
                                    <path
                                        d="M765.3 580.6l0.7-1.4 0.4 0.2 0.8 0.6 0.8 1.2 0.4 0.3 1 0.4 0.5 0.3 0.2 0.4-4.8-2z m84.6-39.4l-0.2 0-0.1 0.5 0.7 0.4 1 0.2 0.5 0.2 0.2 0.8 0.6 0.1 0.9-0.1 0.9 0 0.3 0.3 0.3 0.6 0.2 0.6 0 0.5 0.1 0.2 0.7 0.2 0.3 0.1 0.1 0.3 0.2 0.5 0.1 0.4 0.3 0.4 1.1 1.3 0.3 0.1 0.8-0.1 0.3 0.1 0.2 0.2 0.1 0.6 0.2 0.3 1.1 1.3 0.2 0.4 0.1 0.7 0.4 0.3 1.2 0.5 0.2 0.1 0.4 0.4 0.1 0.1 0.3-0.1 0-0.3-0.1-0.3 0-0.2 0.6 0 0.4 0.1 0.1 0.3-0.5 0.5 0.6 0.3 1 1 0.5 0.3 2.2 0.7 0.4 0 0.3-0.3 0.4 0.3 0 0.2-0.1 0.4 0.5 0.4 1.1 0.6 0.4 0.3 2.2 3.1 0.4 1.2-0.4 0.8 0 0.2 0.3-0.1 0.1 0 0.1-0.1 0.1-0.2 0.4 0.2-0.1 0.5-0.2 0.5 0.2 0.6-0.3 0.5 0.3 0.1 0.5 0 0.3 0.3 0 0.3-0.2 0.2-0.3 0.3-0.1 0.3 0.4-0.1 0.5 0 0.4 0.1 0.2 0.1 0.2-0.1 0.8-0.2 0.3 0 0.1 0.7 0.2 0.3 0.8-0.4 0.3 0.1 0.3 0.2 0.2 0.2 0.2 0.4-0.1 0.2 0.1 0.2 1 0.2 0.3 0.1 0.3 0.2 0.2 0 0.3 0 0.3-0.1 0.2 0 0 0.5 0 0.4 0.1 0.2 0.4 0.6-0.5-0.1-0.5-0.1-0.3 0.2 0 0.5 0.2 0 0-0.3 0.2 0 0.3 0.5-0.2 0.5-0.5 0.4-0.6 0.2-0.2 0.1 0.3 0.3 0.5 0.2 0.2-0.1 0 0.3-0.2 0.1-0.3-0.1-0.2-0.1 0 0.2-0.2 0 0.1 0.2 0.2 0.3 0.1 0.2-0.4 0-0.1-0.1-0.1-0.1-0.4 0.4 0.1 0.3 0.3 0.2 0.4 0.2-0.3 0.2-0.4 0.3-0.3 0.4 0.2 0.7 0.9 0.5 0.2 0.3-0.7 0.3 0 0.2 0.4 0.4-0.8 0.6 0.2 0.6 0.2 0 0.1-0.1 0.3-0.1-0.1 0.2-0.2 0.5-0.1 0.2-0.6 0.2-0.6 0.1-2.8 0-4.4 0-4.3 0-4.3 0-4.4 0-4.3 0-4.4 0-4.3 0-5.8 0-0.5 0.3-0.4 0.5-2.8 4.9-2.2 3.8-2.5 4.3-2.5 4.3-4.3 7.4-0.2 0.6 0 0.6 0.3 0.6 4.1 5.3-0.7 1.4-0.3 0.4-0.4 0.2-0.4 0-0.4 0.2-0.4 0.3-0.1 1.1 0.1 2-0.3 1-0.7 0.8-0.1 0.4 0 0.7 0 0.2 0.3 0.8 0.1 0.3-0.1 0.5 0 0.2 0.6 1.6 0 0.6-0.1 0.5-0.7 1.3-0.7 1.9-0.5 0.7-0.7 0.1-0.1-0.1-1.7-2.1-2.4-2.3-4-4-6.1-6.3-3.9-4.4-0.5-0.9 0-0.6 0.5 0.3 1.4 0.4 0.3 0.3 0 0.6 0.2 0.6 0.4 0.5 0.5 0.2-0.4-0.7-0.2-1.3-0.4-0.6-0.5-0.3-0.6-0.2-0.7-0.2-0.5 0.1-0.1-0.5-0.3-0.1-0.2 0.2 0.4 0.4-0.5 0-1.9-1.5-1.3-0.6-0.6-0.4-0.5-0.9-2.5-1.8-2.9-3.3-0.5-0.9-0.4-0.4-0.9-0.4-7.7-6.5-0.5-0.3-5.3-4.3-3.2-2.1-5.9-3.5 0.4-0.2 0.8 0.1 0.4-0.1 0.2 0.4 0.3 0 0.4-0.2 0.4-0.4-0.7-0.8-0.3-0.7-0.4-0.6-0.8-0.4-3.8-0.8-1-0.6-0.3-0.2 0.2-0.4 0.6-0.8 0.2-0.4 0.2-0.6 0.1-0.6 0.1-0.7 0.1-0.6-0.1-1-0.4-1.1-0.5-1-0.4-0.9-0.5-1.3-0.3-0.6-0.3-0.5-0.3-1.3 0.7-1.4 1-1.3 0.7-1.1 0.3-0.7 0.2-0.6 0-0.7 0-0.7-0.1-0.7-0.2-0.9 0-0.9 0.1-0.6 0.4-0.5 0.6-0.4 0.7-0.3 0.5-0.3 1.9-1.2 0.1-0.4 0-0.6 0-1.2 0-0.8 0-0.9 0.4-0.6 0.8 0.2 0-0.7 0-0.3 0.1-1.8 0-0.9-0.2-0.9 0.4-0.1 0.4-0.2 0.7-0.6 4.6-3.2 0.7-0.4 0.6-0.4 0.6-0.6 0.4-0.6 0.5-1.3 0.9-1.9 0.8-1.9 0.4-1.3 0.2-0.2 0.2-0.4 0.1-0.2 0.6-0.3 0.3-0.3 0.1 0 0.1 0 0.1-0.6 0-0.2 0.4-0.4 0.4-0.3 0.5-0.3 0.4-0.4 0.2-0.5 0.2-0.6 0.1-0.6 0.2-0.6 0.5-1.9 0.6-2 0.6-2 0.7-1.9 0.1-0.7 0.4-0.1 0.2-0.2 0.4-0.5 0.3-0.2 0.5 0.1 0.8 0.2 1.1 0.2 0.3 0.2 0.6 0.4 0.8 0.4 0.7 0.9 1 0.7 1.1 0.2 0.7-0.7 0.6 0.1 0.4-0.7 0.1 0.8 0.1 0.7 0 0.2 0 0.6 0.1 0.6 0 0.6 0 0.6-0.2 0.5-0.3 1-0.2 0.5 0 1.4 0.6 2.6 0 1.4 0.1 0.8 0.2 0.7 0.5 0.3 0.8 0 1 0.2 0.5 0.7 0.4 0.9 0.6 1 0.3 0.5 0.4 0.5 0.4 0.5 0.4 0.4 0.9 0.5 1 0.4 1-0.1 0.9-0.6 0.5-0.4 1.9-1.8 1.2-1.2 2.8-2.4 1-1.1 0.6-0.5 0.7-0.2 1.1-0.3 0.3-0.6-0.1-0.8 0.3-1 0.8-0.6 1.1-0.3 1.1-0.3 1-0.2 0.8-0.3 0.8-0.4 0.7-0.5 0.6-0.5 1 0.2 1.1-0.1 0.7-0.5-0.6-1 0.8-0.9 0.9-0.9 0.9-0.6 0.7-0.2 0.2 0 0.5 0.3-0.1 1.1 0.4 0.5 0.2-0.4 0.1-0.3 0.2-0.3 0.4-0.2 0.4 0 0.5 0.1 0.8 0.4 0.6-0.5 0.7 0.1 0.6 0.5 0.5 0.8 0 0.2 0 0.7 0 0.2 0.1 0.3 0.2 1-0.2 0.3-0.3 0.6-0.1 0.6 0.4 0.3 0.7 0 0.6-0.1 0.7 0.1 0.6 0.2 0.6 0.9 0.4 1.2 0.3 1.2 0.2 1.1 0 0.3 0 0.3 0 0.7 0.2 0.5 0.5 0.4 0.7 0.3 0.5 0.2 0.4 0.2 0.6 0.2 0.7 0.2 0.6 0.2 0.2 0.2 0.3 0.2 0.3 0.2 0 0.5-0.2 1 0.2 0.3 0.4 0.3 0.4 0.1 0.4 0.1 0.7-0.1 0.3 0.2 0.2 0.3 0.8 1.3 0.1 0.1-0.1 0.5-0.4 0-0.4 0-0.4 0.2-0.2 0.3-0.1 0.5-0.1 0.5 0.2 0.5 0.1 0.1z"
                                        id="chiapas" name="Chiapas">
                                    </path>
                                </a>
                                <a xlink:title="Quintana Roo">
                                    <path
                                        d="M977.8 503.2l-0.2 0 0.1-0.3 0.6-0.6 0.3-0.5 0.1-0.3 0.2-0.8 0.2-1.9 0.1-0.3 0.1-0.2 0.2-0.3 0.3-0.3-0.6 1.1 0.2 1.5-0.4 1.1-1.2 1.8z m3.9-8.3l-0.4 0.7 0.1-0.9-0.3-2.7 0.4 0.4 0.2 1.6 0 0.9z m15.8-64.2l-1.1 2-0.4 1.1-0.6 0.5-0.9 0.8-0.4 0.6-0.8 1.5-0.1 0.5-0.2 0.2-0.3 0.2-0.3 0.2-0.1 0.4-0.1 0.2-0.3 0.4-1.7 1.5-0.5 0.2-0.2-0.3-0.1-0.6-0.4-1.5-0.2-0.7 0.1-1.5 0.4-1.3 1.3-2.3 1-1.4 0.2-0.1 0.5-0.4 0.2-0.2 0.3 0 0.2 0.1 0.3 0.1 0.3 0.1 0.8 0.3 0.3 0.1 0.4-0.1 0.7-0.4 0.4 0.1 0.6-0.2 0.5-0.4 0.2-0.5 0-0.1 0.2 0 0.1 0.1 0.1 0.2-0.1 0.1-0.3 0.5z m0.7-22.8l0.8 1.5-0.6-0.5-0.6-1-0.4-1 0.3-0.5 0.1 0.7 0.4 0.8z m-2.1-8.4l0.1 1-0.1-0.2-0.2-0.6-0.1-0.4 0-0.2-0.1-0.4 0-0.4 0-0.2 0.1 0.2 0.1 0.3 0.2 0.9z m-74.2 118.6l-0.2-2.6 0.3-0.5 2.7-3.3 0.7-1.9 0-2.1-0.2-2.3-0.6-3 0.2-0.7 0.3-0.8 0-0.7-0.5-0.3-0.5-0.2 0.2-0.5 0.4-0.5-0.3-1.8-1.1-1.4-0.2-1.9 1-6.6-0.2-2.5 1.5-1.5 0.5-0.9-0.1-1.1 0.1-0.5-0.1-2.4 0.3-2.1-0.7-2.4-3.1-3.9-3.8-3.4-2-1.4-1.7-1.5-1.4-1.9 0.7-1.2 0.5-1.2 0.3-1.1 0.1-1-0.1-1.2 0.8-0.3 1.1 0.1 3.4-0.5 0.8-0.8 0.8-0.9 2-0.7 1-0.6 3.5-0.1 0.5-0.2 0.5-0.3 0.3-0.3 2-1.9 0.8 0.5 0.7 0.6 0.3-0.5-0.2-0.7 0.7-0.9 1.9-1.2 0.9-0.5 1-0.6 1-0.4 1.8-0.4 1.7-1.1 1.8-0.5 1.4-1.7 0.9-2.2 0.8-0.6 1.1 0.1 0.6 0.8 0.3 0.9 0.7 0.1 0.1-1.3-0.4-1.4 0.4-1.1 0.7-1 0.6-0.9 0.7-0.7 1.1-0.2 0.8 0.6 0.9 0.4 1-0.3 1.9 0.1 0.8-0.3 2.7-1.4 2.6-2.3 1-0.6 1.7-1.4 1.9-1.2 1-2 0.4-1.2 0.7-1.1 0.3-1.1 0.1-1.1 1.9-3.9-0.1-2.1-1.5-3.1 0.1-1.3 0.4-2.1 1.3-1.8 0.1-1.2-0.4-6.3 0-0.5 0.9 0 0.2 0 0.2 0.2 0.1 0.2 0.2 0.2 0.4 0.1-0.2 0.1-0.2 0.1-0.2 0-0.1-0.2-0.2 0 0.3 0.4 0.6 0 1.4-0.2 0.7 0.1 1.8 0.6 1.9 0 0.6 0.2 0.5 0.2 0.6-0.1 2.2-1 0.4-0.3 0.4-0.6 0.2-0.3 0.2-0.3-0.1-0.3-0.1-0.3-0.1-0.3 0.1-0.3 0-0.2-0.1-0.1-0.5-0.2-0.7 0-0.7 0.2-0.7 0.4-0.5 0.4-0.6 0.4-0.8 0-0.7-0.2-0.7-0.3-0.2 0.3-0.1-0.5-0.1-0.2-0.5 0.2-0.8 0.7-0.6 0.2 0 0.2 0.2 0.1-0.3 0.1-0.3-0.1-0.1-0.3 0-0.4 1-0.9 0.3-0.3 0.3-0.2 0.2 0 0.7 0 1 0.2 0.3 0.1 0.7 0.2 0.9-0.3 3.4-1.7 0.8-0.2 2.1 0.8 0.5 0.3 0.9 0.9 1.7 2.5 0.1 0.3 0.3 0.3 0.1 0.3 0.1 0.6 0.2 0.3 0.3 0.1 0.4 0.1 0.1-0.4 0.3 0 0.6 0.2 0.8 0 0.4 0.2 0.5 1.7 0 0.4 0 0.5-0.3 0.9-0.1 0.4 0 1.6 0.3 2.2 0.8 1.6 1.5-0.2-0.1 0.3-0.2 0.4-0.7 1.5-0.1 0.2-0.4 0.9 0 0.3 0.2 0.3 0 0.1 0 0.3-0.1 0-0.2 0-0.1 0.1-0.2 0.1-0.5 0.2-0.2 0.2-0.1 0.2-0.1 0.3 0 0.7-0.1 0.4-0.5 1.8-0.8 1.8 0 0.3-2.1 3.2-3 3.3-0.6 1.1-0.4 0.4-1.7 1.1-0.5 0.5-1.3 0.8-1.7 1.8-3.8 5.6-0.3 1.1-0.5 0.1-0.2 0.3 0 0.3 0.2 0.2-1 0.7-0.6 0.9-0.4 1-0.7 2.7-0.2 1.4 0.1 2.8 0.3 0.8 0.7 1.3 0.1 0.8 0 0.3-0.3 1.2-0.1 0.2-0.3 0-0.2 0.2-0.4 1.5-0.2 0.4 0-1.3 0-0.4 0.1-0.2 0.3 0 0.3-0.2 0.2-0.1 0.2-0.4 0-0.4 0.1-1.3-0.6-0.5-0.1-0.3-0.1-0.6-0.1-0.2-0.2-0.1-0.2 0.1-0.1 0.2 0 0.3 0.3 0.3 0.1 0.2 0.1 1.1 0 0.5-0.1 0.3 0.2-0.2 0.1-0.1 0.3-0.2-1.3 2-0.3 0.3-0.1 0.1-0.2 0.3-0.3 0.2-0.2 0-0.3-0.3-0.3-0.2-0.2 0.1-0.2 0.5-0.5 0-0.7 1-0.5 1.1-0.3 1-0.6 1-0.4 1.1-0.3 0.4-0.4-0.1 0.4-0.2 0.3-0.4 0.1-0.6-0.1-0.4-0.4 0.1-1.7 0-0.3-0.1-0.2 0.4-0.1 0.7 0 0.7 0.1 0.5 0.3 0.5 0.9 0.6 0.1 0.3 0.2 0.1 0.3 0.1 0.4 0 0.4 0-0.2 0.5-0.1 1-0.2 0.6 0.6-0.1 0.4-0.3 0.4-0.5 0.4-0.5 0.3-0.2 0.9-0.3 0.5-0.2 0.9 0.2 0.6 0.5 0.2 0 0.2-0.1 0.1-0.2 0-0.2 0.1-0.2 0.3 0 0.2 0.2 0.2 0 0.2-0.2 0.3 0.2 0.1 0-0.4 0.2 0 0.3 0.9-0.2 0.4-0.7 0-0.6-0.4-0.1 0.2 0.3 0 0.3-0.3 0.1-1 0-0.9-0.2-0.4-0.1-0.4-0.2 0.6 0 2 0.3 0-0.3-0.1-0.2 0.3-0.8 0-0.6 0.6 1.2 0.3 0.8-0.2 0.3-0.2 0.3-0.3 2.2-0.3 0.7-0.5 0.6-0.5 0.4-0.5 0.2-0.2 0.1-0.9 0.9-0.3 0.1-1.1 0.2 0.6-0.2 0.2-0.3 0.1-0.4 0.2-0.4-1.2 0.3-1.4 0.7-1.2 1.1-0.4 1.3 0.3 0-0.3 0.4-0.2 0.4 0.5 0.1-0.7 1.4-0.2 0.8 0.3 0.3 0.6 0.2 0.3 0.2 0.3 0 0.7-0.6 0.8-1 0.3-0.6 0.2-0.6 0.3-0.4 0.8-0.3 1.4-0.1-0.6 1.4 0.4-0.3 0.3-0.5 0.4-0.3 0.6 0 0 0.2-0.6 0.3-0.5 0.5-0.8 1.2-0.3 0.8-0.4 1.8-0.4 0.6 0.3 0.8-1.1 2.7-0.7 1.1-0.7 4.3-1.1 4.1-0.6 1-0.7 0.9-0.6 1-0.5 1.2-0.1 1.4 0.1 1.5 0 0.7-0.4 0.7-0.2 0.5-0.2 2.4-0.2 0.7-1.6 2.3-0.1 0.5-0.1 0.5-0.5 1-0.1 0.5 0 2.2-0.2 0 0-0.9-0.2-0.7-0.5 0.6-0.4-0.1-0.1-0.5 0.3-0.2 0.2-0.4 0.2-0.8 0.1-0.9 0-0.5-0.1 0.4-0.2 0.3-0.2 0.3-0.1 0.2-0.2-0.4 0.1-0.3 0.2-0.4 0.1-0.5-0.1 0-0.5-0.6 0-0.1 0-0.3 0-0.3-0.1-0.3-0.9-0.2-0.2-0.2 0-0.2 0.2-0.3 0.1 0-0.2-0.5-0.1-0.4-0.3-0.2-0.6 0-0.9-0.3-1.6-0.9-0.8-0.2-0.3-0.2-0.1-0.6 0.1-0.5 0-0.2 1.1-1.2-0.2-0.8 0.3-0.7 0.5-0.6 0.2-0.6 0.1-0.3 0.3-0.5 0.1-0.4-0.1-0.1-0.1-0.1-0.2-0.2-0.1-0.2 0.1-0.2 0.1-0.2 0.1-0.2 0.1-1.3 0-0.7-0.3-0.6-0.3-0.5-0.2-0.5-0.2-1.4-0.7 0.6-0.8 0.9-0.6 0.9-0.3 0.9 0 0.5-0.2 0.6-0.3 0.5-0.2 0.1-0.3-0.2 0.1-0.6 0.1-0.4-0.4 0.4-0.5 0.1-0.8 0.1-0.2 0.1-1.4 1.2-0.2 0.3-0.1 0.3-0.1 0.3 0.6-0.2 0.6-0.5 0.6-0.7 0.4-0.6 0.1 0.6-0.1 0.4-0.2 0.4-0.1 0.6 0.2-0.2 0.2-0.3 0.4-0.3 0.3-0.1 0.3 0.2-0.2 0.3-0.4 0.2-0.1 0-0.8 1.6-0.7 1-0.9 1.6-0.1 0.6-0.7 1-0.3 0.6-0.4 0.1-0.1 0-0.1 0.1 0 0.1-0.2 0-2 0-0.2 0.1-0.2 0.1-0.2 0-0.2-0.1-0.3-0.3-0.2-0.1-0.2 0.1-0.3 0.2-0.7 0.2-0.2 0-0.4-0.1-0.3-0.1-0.3-0.1-0.9 0.8-0.3 0.2-0.1 0.4-0.2 1-0.3 0.8-0.1 0.8-0.1 0.4-0.4 0.6-1 1.2-0.3 0.5-0.1 0.6-0.1 0.5-0.1 0.5-0.3 0.5-0.4 0.3-0.9 0.4-0.9 0.7 0.1 0.1 0.1 0.5-0.1 0.3-0.8 1.4-0.1 0.3-0.1 0.7 0 0.4-0.4 0.5-0.3 0.3-0.5 0.2-0.4 0.4-0.2 0.3-0.4 1.3-0.3 0.4-1.6 1.2-0.2 0.2-0.1 0.8-0.2 0.2-0.3 0.1-1.3-0.7-0.4-0.3-0.4-1-0.3 0-0.4 0-0.3 0-0.6-0.4-0.4-0.5-0.5-0.5-0.7-0.3-2.6 1-0.5 0.6z m46.9-46.1l0.2-0.6 0.2 0-0.3 0.5-0.1 0.1z"
                                        id="quintanaroo" name="Quintana Roo">
                                    </path>
                                </a>
                                <a xlink:title="Yucatan">
                                    <path
                                        d="M972.6 399.2l0 0.5 0.4 6.3-0.1 1.2-1.3 1.8-0.4 2.1-0.1 1.3 1.5 3.1 0.1 2.1-1.9 3.9-0.1 1.1-0.3 1.1-0.7 1.1-0.4 1.2-1 2-1.9 1.2-1.7 1.4-1 0.6-2.6 2.3-2.7 1.4-0.8 0.3-1.9-0.1-1 0.3-0.9-0.4-0.8-0.6-1.1 0.2-0.7 0.7-0.6 0.9-0.7 1-0.4 1.1 0.4 1.4-0.1 1.3-0.7-0.1-0.3-0.9-0.6-0.8-1.1-0.1-0.8 0.6-0.9 2.2-1.4 1.7-1.8 0.5-1.7 1.1-1.8 0.4-1 0.4-1 0.6-0.9 0.5-1.9 1.2-0.7 0.9 0.2 0.7-0.3 0.5-0.7-0.6-0.8-0.5-2 1.9-0.3 0.3-0.5 0.3-0.5 0.2-3.5 0.1-1 0.6-2 0.7-0.8 0.9-0.8 0.8-3.4 0.5-1.1-0.1-0.8 0.3 0.1 1.2-0.1 1-0.3 1.1-0.5 1.2-0.7 1.2-0.8-1.8-0.4-2.4-1.5-2-1.7-1.8-2.3-4.3-1.9-1.5-2.2-0.8-1.6-1.7-0.8-2.4-1.1-2-1.8-1.3-0.5-0.6-0.6-1.3 0-0.8-0.5-0.9-1.3-1.8-0.8 0.6-0.6 1.2-0.9 0.2-0.6-0.6-0.6-0.5-0.6 0.2-0.6 0.3-0.8-0.7-0.5-1.2-0.8-0.9-1.3-0.2-1.6 0-1.5-0.1-0.5-1 0.4-8.4-0.1-0.9 0.1-0.1 0.4-1.9 0.7-1.9 0.1-1.1-0.2 0-0.4 1.8-0.6 1.3-0.1 0.2-0.1 0.8-0.4 1-0.6 0.8-0.8 0.3 0-0.2 0.6-0.9 2-6.1 0.3-0.5 0.5-0.6 3.6-2.2 0.6-0.5 2.1-0.8 1.1-0.9 0.7-0.3 0.3-0.2 1-0.1 1.7-0.6 1.9-1.4 0.5-0.2 0.6-0.1 3.2-1.2 3.4-0.6 2.5 0 4.4-0.8 6-0.6 2.5-0.7 1.3-0.2 0.8 0.2 0.3 0.1 0.3-0.1 0.7-0.3 0.2-0.1 2.7-0.5 2.1-0.6 1.4-0.1 0.6-0.2 1.1-0.5 3.8-0.9 1.1-0.7 2-1.8 0.6-0.3 2-0.2 0.6-0.2 1.1-0.6 0.6-0.1 2.5 0 0.5 0.1 1.1 0.5 0.6 0.1 0.5-0.1 1.1-0.3 1.7-0.2 0.6-0.2 0.4-0.3 0.4-0.2 2.1 0.1-0.6-0.3-0.8-0.1-0.7 0-1.1 0.6-1.3 0.3-0.3 0 0.2-0.3 0.6-0.3 0.7-0.3 0.9-0.1 0.7-0.3 0.3-0.1 0.4 0 1.4 0.4 2.7 0 0.7 0.1 2 0.9 1.3 0.3 2.8 0.4 1.9 0.6 0.1 0.1-0.3 0.2-0.3 0.1-0.4 0.1-0.4-0.1-0.3-0.2-0.4-0.2-2.3-0.4-0.6-0.2 0.7 0.6 1 0.5 1 0.4 1.1 0.1 2.1 0 1 0.2 0.6 0 0.5-0.2-1.4-0.1-0.6-0.1-0.5-0.4 0.2-0.2 2.1 0.3 1.7 0.7 0.8 0z"
                                        id="yucatan" name="Yucatan">
                                    </path>
                                </a>
                                <circle cx="832.1" cy="533.4" id="0">
                                </circle>
                                <circle cx="832.6" cy="533.3" id="1">
                                </circle>
                                <circle cx="832.6" cy="533.5" id="2">
                                </circle>
                            </svg>
                        </div>
                        <div name="tarjetasEstacion" class="col-2">
                            <div class="card row" style="width: 18rem;">
                                <div class="card-body row">
                                    <p class="card-text col">Nuevo</p>
                                    <h1 class="col" id="nuevo">
                                    </h1>
                                </div>
                            </div>
                            <div class="card row" style="width: 18rem;">
                                <div class="card-body row">
                                    <p class="card-text col">Marcacion</p>
                                    <h1 class="col" id="marcacion">
                                    </h1>
                                </div>
                            </div>
                            <div class="card row" style="width: 18rem;">
                                <div class="card-body row">
                                    <p class="card-text col">Proceso</p>
                                    <h1 class="col" id="proceso">
                                    </h1>
                                </div>
                            </div>
                            <div class="card row" style="width: 18rem;">
                                <div class="card-body">
                                    <div class="row">
                                        <p class="card-text col">Cancelado</p>
                                        <h1 class="col" id="cancelado">
                                        </h1>
                                    </div>
                                    <div class="row">
                                        <h4 class="text-center" id="canceladoTotal"></h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card row" style="width: 18rem;">
                                <div class="card-body row">
                                    <p class="card-text col">Terminado</p>
                                    <h1 class="col" id="terminado">
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseThree">
                    Graficas
                </button>
            </h2>
            <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                aria-labelledby="panelsStayOpen-headingThree">
                <div class="accordion-body">
                    <!--acordeon de graficas-->
                    <div class="accordion" id="acordionGraficas">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="graficas1">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#infoGrafica1" aria-expanded="true" aria-controls="infoGrafica1">
                                    Estatus y Folios
                                </button>
                            </h2>
                            <div id="infoGrafica1" class="accordion-collapse collapse show"
                                aria-labelledby="infoGrafica1">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col-6" id="foliosGrafica">
                                        </div>
                                        <div class="col-6" id="seguimientosGrafica">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="graficas2">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#infoGrafica2" aria-expanded="false" aria-controls="infoGrafica2">
                                    Estaciones
                                </button>
                            </h2>
                            <div id="infoGrafica2" class="accordion-collapse collapse" aria-labelledby="infoGrafica2">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col text-center" id="folioDona">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="graficas3">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#infoGrafica3" aria-expanded="false" aria-controls="infoGrafica3">
                                    Entregados
                                </button>
                            </h2>
                            <div id="infoGrafica3" class="accordion-collapse collapse" aria-labelledby="infoGrafica3">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div>
                                            <div id="foliosEntregados"> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="graficas4">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#infoGrafica4" aria-expanded="false" aria-controls="infoGrafica4">
                                    Por dias y regiones
                                </button>
                            </h2>
                            <div id="infoGrafica4" class="accordion-collapse collapse" aria-labelledby="infoGrafica4">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col" id="disPorDias">

                                        </div>
                                        <div class="col" id="regionesGrafica">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="graficas6">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#infoGrafica6" aria-expanded="false" aria-controls="infoGrafica6">
                                    Porcentaje de Documentos
                                </button>
                            </h2>
                            <div id="infoGrafica6" class="accordion-collapse collapse" aria-labelledby="infoGrafica6">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div class="col" id="porcentajeDocs">

                                        </div>
                                        <div class="col" id="porcentajeTotal">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="graficas7">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#infoGrafica7" aria-expanded="false" aria-controls="infoGrafica7">
                                    Folios por Area
                                </button>
                            </h2>
                            <div id="infoGrafica7" class="accordion-collapse collapse" aria-labelledby="infoGrafica7">
                                <div class="accordion-body">
                                    <div class="row">
                                        <div id="docsGrafica">

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../js/pruebasrutas.js">
    </script>
</body>

</html>