// Code made by Bernardo da Silva
// Trabalho avaliação final Lógica de Programação - SERRATEC
// https://github.com/BernardoSilvaOliveira

programa
{

	// Função recursiva que calcula o número de Fibonacci
	funcao inteiro fibonacci(inteiro n)
	{
		// Caso base: posição 0 da sequência
		se(n == 0)
		{
			retorne 0
		}

		// Caso base: posição 1 da sequência
		se(n == 1)
		{
			retorne 1
		}

		// Caso recursivo: soma dos dois números anteriores
		retorne fibonacci(n - 1) + fibonacci(n - 2)
	}
	
	funcao inicio()
	{
		inteiro num, i
		
		escreva("\nDigite a posição da sequência: ")
		leia(num)

		escreva("Sequência de Fibonacci: ")

		// Laço que chama a função fibonacci para cada posição
		para(i = 0; i < num; i++)
		{
			escreva(fibonacci(i), " ")
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 151; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */