programa
{
	
	funcao inicio()
	{
		inteiro N
		
		escreva("Escolha o tamanho da pirâmide: ")
		leia(N)

		enquanto(N <= 0){
			limpa()
			escreva("O número precisa ser positivo, e maior que zero")
			escreva("\nPor favor, digite um tamanho válido: ")
		}

		escreva("\n") // Espaçamento
		
		para(inteiro linha = 1; linha <= N; linha++){
			para(inteiro qtCaracteres = 1; qtCaracteres <= linha; qtCaracteres++){
				escreva("#.")
			}
		escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */