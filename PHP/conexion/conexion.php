<?php

    $mysqli = new mysqli('localhost','root','','');

    try {
        return $mysqli;
    } catch (Exception $e) {
        echo "Excepción capturada".$e->getMessage()."\n";
    }

?>