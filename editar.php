<?php
	$idVeiculo = filter_input(INPUT_POST, "idVeiculo");
	$marca = filter_input(INPUT_POST, "marca");
	$modelo = filter_input(INPUT_POST, "modelo");
	$ano = filter_input(INPUT_POST, "ano");
	$cor = filter_input(INPUT_POST, "cor");
	$valor = filter_input(INPUT_POST, "valor");
	$portas = filter_input(INPUT_POST, "portas");
	$combustivel = filter_input(INPUT_POST, "combustivel");

	$sql = "UPDATE veiculo set 
		marca = '$marca', 
		modelo = '$modelo', 
		ano = '$ano', 
		cor = '$cor', 
		valor = '$valor', 
		portas = '$portas', 
		combustivel = '$combustivel'
		WHERE idVeiculo = '$idVeiculo'
	";
	include ("conexao.php");
	$alterar = $conectar->query($sql);
	$numeroRegistro = $conectar->affected_rows;
	if($numeroRegistro == 1) { 
		echo "O Registro foi alterado com sucesso!!!";
	}else{
		echo "Não foi possível atualizar o registro!!!";	
	}
?>	
	<a href="formCadastro.php">Voltar</a>