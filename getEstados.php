<?php
        $servername = "localhost";
        $database = "proyecto_introtics";
        $username = "root";
        $password = "";
        
        try{
            $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                
            //GET ESTADOS
            $stmt = $conn->prepare("SELECT * FROM estados");
            $stmt->execute();
            $result = $stmt->fetchAll();
            return $result;
            $conn=null;
        }
        catch (PDOException $e){
            echo "Connection Failed: " . $e -> getMessage();
        }
?>