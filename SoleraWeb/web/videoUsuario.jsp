<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Tomar foto con Javascript</title>
	<style>
		@media only screen and (max-width: 700px) {
			video {
				max-width: 100%;
			}
		}
	</style>
    <script src="./js/jquery-3.6.1.js"></script>
</head>

<body>
	<input name="transmitir" id="idControl" type="hidden" value="transmitir">


	</div>
	<h1>Tomar foto con JavaScript</h1>
	<h1>Selecciona un dispositivo</h1>
	<div>
		<label for="">imagen</label>
<img id="mostrarimagen" src="" alt="">
	</div>
	<div>
		<select name="listaDeDispositivos" id="listaDeDispositivos"></select>
		<button id="boton">Tomar foto</button>
	</div>
	<br>
	<video muted="muted" id="video"></video>
	<canvas id="canvas" style="display: none;"></canvas>

</body>
<script src="./js/video.js"></script>

</html>