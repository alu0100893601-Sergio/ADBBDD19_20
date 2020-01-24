<html>
<body>

<?php
// process form
$usuario = "root";
$contrasena = "";
$servidor = "localhost";
$basededatos = "peliculas_sergio";

$conexion = new mysqli($servidor, $usuario, $contrasena, $basededatos) or die("No se ha podido conectar al servidor de Base de datos");

$db = mysqli_select_db($conexion, $basededatos) or die("Upps! Pues va a ser que no se ha podido conectar a la base de datos");

$sql_mod="UPDATE titulos SET title='{$_REQUEST["new_titulo"]}', director='{$_REQUEST["new_director"]}', duration='{$_REQUEST["new_duracion"]}'
 WHERE title='{$_REQUEST["titulo_mod"]}'";
mysqli_query($conexion, $sql_mod);

echo "Error: " . $sql_mod . "<br>" . mysqli_error($conexion);

?>
</body>
</html>