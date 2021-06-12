<?php

    $mysqli = new mysqli('localhost','root','','bd_cablevision');

    //var_dump($mysqli);

    try {
        return $mysqli;
    } catch (Exception $e) {
        echo "Excepción capturada".$e->getMessage()."\n";
    }

?>