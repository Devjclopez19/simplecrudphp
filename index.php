<?php  
	try {
		$conexion = new PDO('mysql:host=localhost;dbname=db_biblioteca;charset=utf8','josh','pass1234');
	#Obtener los autores de la base de datos
		$stm = $conexion->prepare("SELECT id_autor, nombre FROM autor");
		$stm->execute();
		$opciones = $stm->fetchAll();
	} catch (PDOException $e) {
		echo "Error: ".$e->getMessage();
	}

	#INSERTAR DATOS
	if(isset($_POST['enviar'])){
		$titulo = $_POST['titulo'];
		$autor = $_POST['autor'];
		$editorial = $_POST['editorial'];
		$anio = $_POST['anio'];
		#preparar la consulta
		$stm = $conexion->prepare("INSERT INTO libro(titulo,autor,editorial,anio) VALUES (:titulo,:autor,:editorial,:anio)");
		$stm->bindParam(':titulo',$titulo,PDO::PARAM_STR);
		$stm->bindParam(':autor',$autor,PDO::PARAM_INT);
		$stm->bindParam(':editorial',$editorial,PDO::PARAM_STR);
		$stm->bindParam(':anio',$anio,PDO::PARAM_STR);
		#ejecutar la consulta
		if($stm->execute()){
			echo "<script>alert('Exito! Se insertaron los datos')</script>";
			header('Location: index.php');
		}else{
			echo "<script>alert('Error! NO se insertaron los datos')</script>";
			header('Location: index.php');
		}
	}
	# MODIFICAR DATOS
	if(isset($_POST['editar'])){
		$editarId = $_POST['editarId'];
		$editarTitulo = $_POST['editarTitulo'];
		$editarAutor = $_POST['editarAutor'];
		$editarEditorial = $_POST['editarEditorial'];
		$editarAnio = $_POST['editarAnio'];
		#preparar la consulta
		$stm = $conexion->prepare("UPDATE libro SET titulo = :titulo, autor = :autor, editorial = :editorial, anio = :anio WHERE id_libro = :id_libro");
		#parametrizar 
		$stm->bindParam(':id_libro',$editarId,PDO::PARAM_INT);
		$stm->bindParam(':titulo',$editarTitulo,PDO::PARAM_STR);
		$stm->bindParam(':autor',$editarAutor,PDO::PARAM_INT);
		$stm->bindParam(':editorial',$editarEditorial,PDO::PARAM_STR);
		$stm->bindParam(':anio',$editarAnio,PDO::PARAM_STR);
		#ejecutar la consulta
		if($stm->execute()){
			header('Location: index.php');
		}else{
			echo "Error";
		}
	}
	# ELIMINAR DATOS
	if(isset($_GET['id']) && !empty($_GET['id'])){
		$idLibro = $_GET['id'];
		#preparar la consulta
		$stm = $conexion->prepare("DELETE FROM libro WHERE id_libro = :id");
		#parametrizar
		$stm->bindParam(':id',$idLibro,PDO::PARAM_INT);
		#ejecutar
		if($stm->execute()){
			header('Location: index.php');
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>CRUD con PDO</title>
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	<link rel="stylesheet" href="css/all.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>CRUD con PDO</h2>
	<hr>
	<div class="contenedor">
		<div class="content-form" id="registrar-libro">
			<h3>Registro de Libro</h3>
			<form action="" method="POST">
				<p>Datos del libro</p>
				<div class="input">
					<label for="">Titulo:</label>
					<input type="text" name="titulo" required="" id="titulo">
				</div>
				<div class="input">
					<label for="autor">Autor:</label>
					<select name="autor" id="autor">
						<?php  
						foreach ($opciones as $fila => $item) {
							echo '<option value="'.$item['id_autor'].'">'.$item['nombre'].'</option>';
						}
						?>
					</select>
				</div>
				<div class="input">
					<label for="editorial">Editorial:</label>
					<input type="text" name="editorial" required="" id="editorial">
				</div>
				<div class="input">
					<label for="anio">Año:</label>
					<input type="text" name="anio" required="" id="anio">
				</div>
				<div class="enviar">
					<input type="submit" name="enviar" value="Registrar">
				</div>
			</form>
		</div>
		<div class="content-form" id="editar-libro" style="display: none;">
			<h3>Editar Libro</h3>
			<form action="" method="POST">
				<p>Datos del libro</p>
				<input type="hidden" name="editarId" id="editarId">
				<div class="input">
					<label for="editarTitulo">Titulo:</label>
					<input type="text" name="editarTitulo" required="" id="editarTitulo">
				</div>
				<div class="input">
					<label for="editarAutor">Autor:</label>
					<select name="editarAutor" id="editarAutor">
						<?php  
						foreach ($opciones as $fila => $item) {
							echo '<option value="'.$item['id_autor'].'">'.$item['nombre'].'</option>';
						}
						?>
					</select>
				</div>
				<div class="input">
					<label for="editarEditorial">Editorial:</label>
					<input type="text" name="editarEditorial" required="" id="editarEditorial">
				</div>
				<div class="input">
					<label for="editarAnio">Año:</label>
					<input type="text" name="editarAnio" required="" id="editarAnio">
				</div>
				<div class="enviar">
					<input type="submit" name="editar" value="Editar" id="btn-editar">
					<button id="btn-cancelar" class="cancelar">Cancelar</button>
				</div>
			</form>
		</div>
		<div class="datos" >
			<h3>Lista de libros</h3>
			<table class="tabla-libro" id="tabla-libro">
				<thead>
					<tr>
						<th>N°</th>
						<th>Titulo</th>
						<th>Autor</th>
						<th>Genero</th>
						<th>Editorial</th>
						<th>Año</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>	
				<?php
					# Obtener los libros de la bd  
					$stm = $conexion->prepare("SELECT l.id_libro, l.titulo, l.editorial, l.anio, a.nombre,a.genero_literario, a.id_autor FROM libro l inner join autor a oN l.autor = a.id_autor order by l.id_libro DESC LIMIT 10");
					$stm->execute();
					$libros = $stm->fetchAll();
					$n = 1;
					foreach ($libros as $fila => $item) {
						echo "<tr>";
						echo "<td>".$n."</td>";
						echo "<td>".$item['titulo']."</td>";
						echo "<td>".$item['nombre']."</td>";
						echo "<td>".$item['genero_literario']."</td>";
						echo "<td>".$item['editorial']."</td>";
						echo "<td>".substr($item['anio'], -10, 4)."</td>";
						echo '<td><button class="btn btn-editar" id="'.$item['id_libro'].'-'.$item['id_autor'].'"></button><a href="crud_pdo.php?id='.$item['id_libro'].'" class="btn btn-eliminar"><i class="fa fa-times-circle"></i></a></td>';
						echo "</tr>";
						$n++;
					}
				?>
				</tbody>
			</table>
		</div>
	</div>
	<script src="js/crud.js"></script>
</body>
</html>
