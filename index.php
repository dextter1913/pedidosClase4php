<?php 
require_once 'app\controllers\controller.php';

$controller = $_GET['controller'];
if (isset($_GET['controller'])) {
    switch ($_GET['controller']) {
        case $_GET['controller']:
            controller::$controller();
            break;
    }
}else {
    header('Location:Inicio');
}
//Esto es un comentario
?>