<form action="cadastro.php" method="post">
	Marca <input type="text" name="marca"><br/>
	Modelo<input type="text" name="modelo"><br/>
	Ano<input type="text" name="ano"><br/>
	Cor<input type="text" name="cor"><br/>
	Valor<input type="text" name="valor"><br/>
	Portas<input type="text" name="portas"><br/>
	Combustível<input type="text" name="combustivel"><br>
	<input type="submit" value="CADASTRAR"><br/>
</form>

<?php
	include("conexao.php");
	$sql = "SELECT idVeiculo, marca, modelo, ano, valor 
			FROM veiculo order by marca asc";
		
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
		<th>Marca</th>
		<th>Modelo</th>
		<th>Ano</th>
		<th>Valor</th>	
		<th>Eventos</th>	
	<?php
		foreach($arrayVeiculo as $valor){
	?>
	<tr>
		<td><?php echo $valor["idVeiculo"];?></td>
		<td><?php echo $valor["marca"];?></td>
		<td><?php echo $valor["modelo"];?></td>
		<td><?php echo $valor["ano"];?></td>
		<td><?php echo $valor["valor"];?></td>
		<td><a href = "formAlterar.php">ALTERAR</a> - 
			<a href = excluir.php?idVeiculo=<?php echo $valor["idVeiculo"];?>
					>EXCLUIR</a>
		</td>
	</tr>
		<?php
	}
	?>
	</table>
	Foram Encontrados <?php echo $numeroRegistro; ?> registros.

<?php
}
?>