<?php
    include("cn.php");
    $usuarios = "SELECT * FROM usuarios";
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Registro de usuarios</title>
        <meta name="viewport" content="width=device-width,
        user-scalable=no, initial-scale=1.0, maximum-scale=1.0,
        minimum-scale=1.0">
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>

        <div class="conteiner-add">
            <h2 class="coteiner__title">Registrar usuario</h2>
            <div class="conteiner__form">
                <label for="" class="conteiner__label">Nombre</label>
                <input type="text" class="conteiner__input">
                <label for="" class="conteiner__label">Apellido</label>
                <input type="text" class="conteiner__input">
                <label for="" class="conteiner__label">Usuario</label>
                <input type="text" class="conteiner__input">
                <label for="" class="conteiner__label">Telefono</label>
                <input type="text" class="conteiner__input">
                <input type="submit" value="Registrar">
            </div>
        </div>





        <div class="container-table">
            <div class="table__title">Datos de usuario</div>
            <div class="table__header">Nombre</div>
            <div class="table__header">Apellidos</div>
            <div class="table__header">Usuario</div>
            <div class="table__header">Telefono</div>
            <?php $resultado = mysqli_query($conexion, $usuarios);
            while($row=mysqli_fetch_assoc($resultado))  { ?>
            <div class="table__item"><?php echo $row["nombre"];?></div>
            <div class="table__item"><?php echo $row["apellidos"];?></div>
            <div class="table__item"><?php echo $row["usuario"];?></div>
            <div class="table__item"><?php echo $row["telefono"];?></div>
            <?php } mysqli_free_result($resultado);?> 
        </div>
    </body>
</html>
