<?php
	
	$sql = "SELECT idFoto, titulo, foto, descricao 
			FROM album order by titulo asc";
	
	include("conexao.php");	
	$listar = $conectar->query($sql);
	$numeroRegistro = $listar->num_rows;
	$arrayVeiculo = array();
	
	while($linha = $listar->fetch_array()) {
		$arrayVeiculo[] = $linha;
	}
	
	if($arrayVeiculo) {
	?>
	<table border="1">
		<th>Código</th>
		<th>Título</th>
		<th>Foto</th>
		<th>Descrição</th>
	<?php
		foreach($arrayVeiculo as $valor){
	?>
	<tr>
		<td><?php echo $valor["idFoto"];?></td>
		<td><?php echo $valor["titulo"];?></td>
		<td><img src = <?php echo $valor["foto"];?> width=100 height=100></td>
		<td><?php echo $valor["descricao"];?></td>
	</tr>
		<?php
	}
	?>
	</table>
	Foram Encontrados <?php echo $numeroRegistro; ?> registros.

<?php
}
?>