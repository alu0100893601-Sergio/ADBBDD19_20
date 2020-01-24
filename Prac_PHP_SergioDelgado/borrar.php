<html>
<body>

<?php
// process form
$usuario = "root";
$contrasena = "";
$servidor = "localhost";
$basededatos = "peliculas_sergio";

$a_borrar=htmlspecialchars($_REQUEST['titulo']);

$conexion = new mysqli($servidor, $usuario, $contrasena, $basededatos) or die("No se ha podido conectar al servidor de Base de datos");

$db = mysqli_select_db($conexion, $basededatos) or die("Upps! Pues va a ser que no se ha podido conectar a la base de datos");

$sql_del="DELETE FROM titulos WHERE title='{$_REQUEST["titulo_del"]}'";
mysqli_query($conexion, $sql_del);

header('Location: practica.php');

?>
</body>
</html>