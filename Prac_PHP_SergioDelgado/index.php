<!DOCTYPE html>
<html lang="es-ES">

<head>
  <meta charset="utf-8">
  <title>Prac de PHP</title>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<body>
  <h1>Página de práctica de PHP (23/01/2020)</h1>
  <h2>Sergio Delgado - alu0100893601@ull.edu.es</h2>
  <hr>

  <?php
  $usuario = "root";
  $contrasena = "";
  $servidor = "localhost";
  $basededatos = "peliculas_sergio";

  $conexion = new mysqli($servidor, $usuario, $contrasena, $basededatos) or die("No se ha podido conectar al servidor de Base de datos");

  $db = mysqli_select_db($conexion, $basededatos) or die("Upps! Pues va a ser que no se ha podido conectar a la base de datos");
  ?>

  <h2>Listado de peliculas</h2>
  <br />

  <a href="#miModal1" class="button">Añadir registro</a> <br /><br />
  <a href="#miModal2" class="button">Modificar</a> <br /><br />
  <a href="#miModal3" class="button">Eliminar</a> <br /><br />

  <?php
  $sql2 = "SELECT * FROM titulos";
  $resultado = mysqli_query($conexion, $sql2) or die("Algo malo en consulta");

  echo "<table borde='2'>";
  echo "<tr>";
  echo "<th>ID.</th>";
  echo "<th>Titulo</th>";
  echo "<th>Director</th>";
  echo "<th>Duracion</th>";
  echo "</tr>";
  while ($columna = mysqli_fetch_array($resultado)) {
    echo "<tr>";
    echo "<td>" . $columna['title'] . "</td><td>" . $columna['director'] . "</td><td>" . $columna['duration'] . " min</td>";
    echo "</tr>";
  }
  echo "</table>";
  ?>

  <div id="miModal1" class="modal">
    <div class="modal-contenido">
      <a href="#">X</a>
      <h2>Añadir registro</h2>
      <form action="aniadir.php" method="post">
        <p>Titulo: <input type="text" name="titulo" id="titulo" /></p>
        <p>Director: <input type="text" name="director" id="director" /></p>
        <p>Duracion: <input type="text" name="duracion" id="duracion" /></p>
        <p><input type="submit" /></p>
      </form>
    </div>
  </div>

  <div id="miModal2" class="modal">
    <div class="modal-contenido">
      <a href="#">X</a>
      <h2>Modificar registro</h2>
      <p>Elija el registro a modificar</p>
      <?php
      echo '<form method="POST" action="modificar.php">Titulos<br>';

      //Creamos la sentencia SQL y la ejecutamos
      $sql_del = "SELECT title FROM titulos";
      $result = mysqli_query($conexion, $sql_del);

      echo '<select name="titulo_mod" id="titulo_mod">';

      //Mostramos los registros en forma de menú desplegable
      while ($row = mysqli_fetch_array($result)) {
        echo '<option>' . $row["title"];
      }
      mysqli_free_result($result)
      ?>

      </select>
      <br />

      <p>Nuevo titulo: <input type="text" name="new_titulo" id="new_titulo" /></p>
      <p>Nuevo director: <input type="text" name="new_director" id="new_director" /></p>
      <p>Nueva duracion: <input type="text" name="new_duracion" id="new_duracion" /></p>

      <input type="submit" value="Modificar">
      </form>
    </div>
  </div>

  <div id="miModal3" class="modal">
    <div class="modal-contenido">
      <a href="#">X</a>
      <h2>Eliminar registro</h2>
      <p>Elija el registro a eliminar</p>
      <?php
      echo '<form method="POST" action="borrar.php">Titulos<br>';

      //Creamos la sentencia SQL y la ejecutamos
      $sql_del = "SELECT title FROM titulos";
      $result = mysqli_query($conexion, $sql_del);

      echo '<select name="titulo_del" id="titulo_del">';

      //Mostramos los registros en forma de menú desplegable
      while ($row = mysqli_fetch_array($result)) {
        echo '<option>' . $row["title"];
      }
      mysqli_free_result($result)
      ?>

      </select>
      <br>
      <input type="submit" value="Eliminar">
      </form>
    </div>
  </div>

  <br />
  <a href="#" class="button" onclick=refrescar()>Actualizar lista</a>
  <br />

</body>

</html>

<script>
  function refrescar() {
    location.reload(true);
  }
</script>

<style>
  .modal-contenido {
    background-color: aqua;
    width: 300px;
    padding: 10px 20px;
    margin: 20% auto;
    position: relative;
  }

  .modal {
    background-color: rgba(0, 0, 0, .8);
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: 0;
    pointer-events: none;
    transition: all 1s;
  }

  #miModal1:target,
  #miModal2:target,
  #miModal3:target,
  #miModal4:target {
    opacity: 1;
    pointer-events: auto;
  }

  .button {
    font: bold 11px Arial;
    text-decoration: none;
    background-color: #EEEEEE;
    color: #333333;
    padding: 2px 6px 2px 6px;
    border-top: 1px solid #CCCCCC;
    border-right: 1px solid #333333;
    border-bottom: 1px solid #333333;
    border-left: 1px solid #CCCCCC;
  }
</style>