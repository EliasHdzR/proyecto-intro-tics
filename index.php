<?php include("getEstados.php");?>
<!DOCTYPE HTML>
<HTML>

	<HEAD>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style/styles.css"> <!--Hojas de estilos propia-->
		<title>La República Mexicana</title>
	</HEAD>

	<BODY>
		<!-- Cabecera -->
		<div id = "cabecera">
			<h1>Estados de la Republica  mexicana</h1>
			<p>Con 5 municipios en cada uno</p>
		</div>

		<section id = "contenido">
			<!-- SELECT ESTADOS -->
		<form action="">
			<label style="font-size:25px;">Estado: </label>
			<select id="estados" onchange="getMunicipios(this.value)" style="font-size:25px;">
				<option value="">Seleccionar Estado</option>
				<?php 
					foreach ($result as $output) { ?>
						<option value="<?php echo $output["ISO"] ?>"><?php echo $output["nombre_estado"]; ?></option>
				<?php } ?>
			</select>
		</form>
		<br>

		<!-- SELECT MUNICIPIOS-->
		<div id="txtHint"></div>
		</section>
		<script>
			function getMunicipios(str){
				if(str == ""){
					document.getElementById("txtHint").innerHTML = "";
    				return;
				}
				const xhttp = new XMLHttpRequest();

  				xhttp.onload = function() {
    				document.getElementById("txtHint").innerHTML = this.responseText;
  				}

 			 	xhttp.open("GET", "getMunicipio.php?q="+str);
  				xhttp.send();
			}
		</script>

		<footer>
			<p>Introducción a las Tecnologías de la Información</p>
			<p>Ing. Manuel Ruíz Méndez</p>
		</footer>
	</BODY>
</HTML>