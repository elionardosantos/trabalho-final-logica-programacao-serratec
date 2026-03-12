// Code made by Bernardo da Silva
// Trabalho avaliação final Lógica de Programação - SERRATEC
// https://github.com/BernardoSilvaOliveira

programa
{

	// Função que percorre a matriz e encontra o maior e o menor valor
	funcao vazio maiorMenor(inteiro matriz[][])
	{
		inteiro i, j // Contadores i = linha, j = coluna
		inteiro maior = matriz[0][0], menor = matriz[0][0]

		// Percorre todas as posições da matriz
		para(i = 0; i < 4; i++)
		{
			para(j = 0; j < 4; j++)
			{
				// Se encontrar um valor maior que o atual, atualiza
				se(matriz[i][j] > maior)
				{
					maior = matriz[i][j]
				}

				// Se encontrar um valor menor que o atual, atualiza
				se(matriz[i][j] < menor)
				{
					menor = matriz[i][j]
				}
			}
		}

		// Mostra o maior e o menor valor encontrados
		escreva("\nMaior valor: ", maior)
		escreva("\nMenor valor: ", menor)
	}

	funcao inicio()
	{
		inteiro matriz[4][4]
		inteiro i, j 

		escreva("Digite os valores da matriz 4x4:\n")

		// Leitura dos valores da matriz
		para(i = 0; i < 4; i++)
		{
			para(j = 0; j < 4; j++)
			{
				escreva("Posição [", i, "][", j, "]: ")
				leia(matriz[i][j])
			}
		}

		// Desenha a matriz na tela
		escreva("\nMatriz digitada:\n")

		para(i = 0; i < 4; i++)
		{
			escreva("| ")

			para(j = 0; j < 4; j++)
			{
				escreva(matriz[i][j], " ")
			}

			escreva("|\n")
		}

		// Chama a função para encontrar maior e menor valor
		maiorMenor(matriz)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1029; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 9, 33, 6}-{matriz, 40, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */