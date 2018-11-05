<?php
	$marca = filter_input(INPUT_POST, "marca");
	$modelo = filter_input(INPUT_POST, "modelo");
	$ano = filter_input(INPUT_POST, "ano");
	$cor = filter_input(INPUT_POST, "cor");
	$valor = filter_input(INPUT_POST, "valor");
	$portas = filter_input(INPUT_POST, "portas");
	$combustivel = filter_input(INPUT_POST, "combustivel");

	include ("conexao.php");

	$sql = "INSERT INTO veiculo 
		(marca, modelo, ano, cor, valor, portas, combustivel) 
		VALUES 
		('$marca','$modelo','$ano','$cor','$valor','$portas',
		'$combustivel')";
		
	$inserir = $conectar->query($sql);

	$numRegistro = $conectar->affected_rows;

	if($numRegistro==1){
		echo "O registro <b>" . $marca . " </b>foi armazenado no banco de dados";	
	}else{
		echo "O registro <b>"  . $marca . " </b>não foi armazenado no banco de dados";	
	}
?>
	</br></br>
	<a href="formCadastro.php">Voltar</a>