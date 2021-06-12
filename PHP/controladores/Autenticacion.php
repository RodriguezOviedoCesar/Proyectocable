<?php


require("../conexion/conexion.php");

$errors = array();

$U = $_POST['EnviarU'];

if($U){
    
    //Si es que existen los elementos
    if(isset($_POST['EnviarU'])){
        $User = $_POST['User'];
        $Pass  =$_POST['Pass'];


        //Para comprobar si es que no vienen celdas vacias
        if(!empty($User) && !empty($Pass)){
            $sql = "SELECT * FROM usuario_Seg";
            $sql1 = "SELECT * FROM tipo_usuario";
            $result = $mysqli->query($sql);
            $result1 = $mysqli->query($sql1);
                if($result){
                    if($result->num_rows > 0){
                        while($Usuarios = $result ->fetch_assoc()){
                            if($User === $Usuarios['nombre_user'] && $Pass === $Usuarios['password']){
                                while($tipos = $result1->fetch_assoc()){
                                    if($Usuarios['id_usuario'] === $tipos['id_usuario']){
                                        if($tipos['categoria'] === 'supervisor'){
                                            $id =  $tipos['id_usuario'];
                                            header("location:../../PHP/vistas/Supervisor.php?id=$id;");
                                        }else if($tipos['categoria'] === 'Agente'){
                                            $id = $tipos['id_usuario'];
                                            header("location:../../PHP/vistas/Agente.php?id=$id;");
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        
        }
    }
?>
