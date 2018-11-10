<?php
	$titulo = filter_input(INPUT_POST,"titulo");
	$descricao = filter_input(INPUT_POST,"descricao");

	
	$fonte = $_FILES['foto']['tmp_name'];//local de origem temporário 
	$destino = "./upload/" . $_FILES['foto']['name'];
	
	
	$tipo = $_FILES['foto']['type'];//tipo do arquivo
	if (($tipo=="image/jpeg") ||
			($tipo=="image/png") || 
			($tipo=="image/gif")){
		if(move_uploaded_file($fonte, $destino)) {
			echo "<br>Arquivo enviado com sucesso<br>";	
			include ("conexao.php");
			$foto = $destino;
			$sql = "INSERT album (titulo, foto, descricao)
						VALUES ('$titulo','$foto','$descricao')			
			";	
			$inserir = $conectar->query($sql);
			if($numRegistro = $conectar->affected_rows){
				echo "<br>Os dados foram armazenados com sucesso<br>";
			}else {
				echo "<br>Falha no banco de dados<br>";
			}
		}else {
			echo "<br>Falha no envio do arquivo<br>";
		}
	}else {
		echo "<br>Este arquivo é inválido, selecione outra imagem!!!<br>";	
	}
	
?>