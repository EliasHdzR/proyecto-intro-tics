<?php
    $servername = "localhost";
    $database = "proyecto_introtics";
    $username = "root";
    $password = "";

    try{
        $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        //GET MUNICIPIOS
        $stmt2 = $conn->prepare("SELECT * FROM municipios WHERE ISOestado = ?");
        $stmt2 -> bindParam(1,$_GET['q'],PDO::PARAM_STR,200);
        $stmt2->execute();
        $result2 = $stmt2->fetchAll();
        $conn=null;
?>

        <form action="">
        <label style="font-size:25px;">Municipio: </label>
            <select style="font-size:25px;" id="municipios" onchange="
                    str2 = this.value;
                    if(str2 == ''){
                        document.getElementById('txtHint2').innerHTML = '';
                        return;
                    }
                    const xhttp = new XMLHttpRequest();

                    xhttp.onload = function() {
                        document.getElementById('txtHint2').innerHTML = this.responseText;
                    }
                   xhttp.open('GET', 'getImagen.php?q='+str2);
                    xhttp.send();">

                <option value="">Seleccionar Municipio</option>
                <?php foreach($result2 as $output) {?>
                    <option value="<?php echo $output['ISOestado'],',',$output["nombre_municipio"]; ?>"><?php echo $output["nombre_municipio"]; ?></option>
                <?php } ?>
            </select>
        </form>
        <br>
<?php

    } catch (PDOException $e){
        echo "Connection Failed: " . $e -> getMessage();
    }
?>
            <!--MOSTRAR IMAGENES-->
            <div id="txtHint2"></div>