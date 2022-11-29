<?php
    $valores = $_GET['q'];
    list($ISO,$municipio) = explode(",", $valores);
    $img1 = "images/".$ISO."/".$municipio."/img1.jpg";
    $img2 = "images/".$ISO."/".$municipio."/img2.jpg";
    $img3 = "images/".$ISO."/".$municipio."/img3.jpg";
    $img4 = "images/".$ISO."/".$municipio."/img4.jpg";

    //MOSTRAR IMAGENES
	echo "<table id='imagenes'>";
		 echo "<tr>";
			echo "<td><img height='150px' width='250px' src='$img1'/></td>";
			echo "<td><img height='150px' width='250px' src='$img2'/></td>";
		echo "</tr>";
		echo "<tr>";
            echo "<td><img height='150px' width='250px' src='$img3'/></td>";
			echo "<td><img height='150px' width='250px' src='$img4'/></td>";
		echo "</tr>";
	echo "</table>";
?>
