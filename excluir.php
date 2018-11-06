<?php
	$idVeiculo = filter_input(INPUT_GET, "idVeiculo");

	$sql = "delete from veiculo where idVeiculo=$idVeiculo";
	
	include ("conexao.php");
	$excluir = $conectar->query($sql);
	
	$registosAfetados = $conectar->affected_rows;
	if($registosAfetados == 1){
		echo "O registro foi excluido com sucesso!!!";
	}else {
		echo "Ocorreu erro ao excluir o registro!!!";
	}
?>