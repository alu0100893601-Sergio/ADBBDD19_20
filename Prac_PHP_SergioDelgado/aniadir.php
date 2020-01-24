<html>
<body>

<?php
// process form
$usuario = "root";
$contrasena = "";
$servidor = "localhost";
$basededatos = "peliculas_sergio";

$titulo=htmlspecialchars($_REQUEST['titulo']);
$director=htmlspecialchars($_REQUEST['director']);
$duracion=htmlspecialchars($_REQUEST['duracion']);

$conexion = new mysqli($servidor, $usuario, $contrasena, $basededatos) or die("No se ha podido conectar al servidor de Base de datos");

$db = mysqli_select_db($conexion, $basededatos) or die("Upps! Pues va a ser que no se ha podido conectar a la base de datos");

$sql = "INSERT INTO titulos (title, director, duration) VALUES ('$titulo', '$director', '$duracion')";
if (mysqli_query($conexion, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conexion);
}

header('Location: index.php');

?>
</body>
</html>