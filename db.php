<?php

/*cambiamos el user por root y el password lo dejamos en campo vacio, por que la base de datos esta con usuario predeterminado y contraseña aun no definida*/
/*Carlos Andre Mamani Rojas*/

$servername = "localhost";
$username = "root";
$password = "";
$db = "tienda_Bolivia";


$con = mysqli_connect($servername, $username, $password,$db);


if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>