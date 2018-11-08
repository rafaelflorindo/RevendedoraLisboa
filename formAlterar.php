<?php
	$idVeiculo = filter_input(INPUT_GET, "idVeiculo");
	echo "Alterando o Registro " . $idVeiculo;
	
	$sql = "SELECT * from veiculo 
	WHERE idVeiculo = $idVeiculo";
	
	include("conexao.php");
	
	$listarVeiculo = $conectar->query($sql);
	
	$dadoVeiculo = array();
	while($linha = $listarVeiculo->fetch_array()) {
		$dadoVeiculo[] = $linha;	
	}
	//var_dump($dadoVeiculo);
	foreach($dadoVeiculo as $valor){
		
?>

<form action="editar.php" method="post">
	Marca <input type="text" name="marca" value=<?php echo $valor["marca"];?>><br/>
	Modelo<input type="text" name="modelo" value=<?php echo $valor["modelo"];?>><br/>
	Ano<input type="text" name="ano" value=<?php echo $valor["ano"];?>><br/>
	Cor<input type="text" name="cor" value=<?php echo $valor["cor"];?>><br/>
	Valor<input type="text" name="valor" value=<?php echo $valor["valor"];?>><br/>
	Portas<input type="text" name="portas" value=<?php echo $valor["portas"];?>><br/>
	Combustível<input type="text" name="combustivel" value=<?php echo $valor["combustivel"];?>><br>
	<input type="hidden" name="idVeiculo" value=<?php echo $valor["idVeiculo"];?>>	
	<input type="submit" value="ALTERAR"><br/>
</form>

<?php
}
?>