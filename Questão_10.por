programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> ti
	
	funcao inicio()
	{
		cadeia texto
		inteiro qtCaracteres
		cadeia textoInvertido = ""
		
		escreva("Digite um texto: \n")
		leia(texto)
		
		qtCaracteres = tx.numero_caracteres(texto)
		textoInvertido = inverterString(texto, qtCaracteres)
		
		escreva(textoInvertido)

		escreva("\n") // Espaçamento
	}

	funcao cadeia inverterString(cadeia texto, inteiro qtCaracteres)
	{
		se(qtCaracteres == 0 ou qtCaracteres == 1){
			retorne ti.caracter_para_cadeia(tx.obter_caracter(texto, qtCaracteres - 1))
		} senao {
			retorne ti.caracter_para_cadeia(tx.obter_caracter(texto, qtCaracteres - 1)) + 
			inverterString(texto, qtCaracteres - 1) // Chamada recursiva
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */