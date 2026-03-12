// Code made by Bernardo da Silva
// Trabalho avaliação final Lógica de Programação - SERRATEC
// https://github.com/BernardoSilvaOliveira

programa
{
	// Função que verifica se a matriz é identidade
	funcao logico verificarIdentidade(inteiro matriz[][])
	{
		inteiro i, j // Contadores i = linha, j = coluna

		// Percorre todas as posições da matriz
		para(i = 0; i < 3; i++)
		{
			para(j = 0; j < 3; j++)
			{
				// Se estiver na diagonal principal, o valor deve ser 1
				se(i == j e matriz[i][j] != 1)
				{
					retorne falso
				}

				// Se não estiver na diagonal, o valor deve ser 0
				se(i != j e matriz[i][j] != 0)
				{
					retorne falso
				}
			}
		}

		// Se passou por todas as posições sem erro, é identidade
		retorne verdadeiro
	}

	funcao inicio()
	{
		inteiro matriz[3][3]
		inteiro i, j

		escreva("Digite os valores da matriz 3x3:\n")

		// Le todos os valores da matriz
		para(i = 0; i < 3; i++)
		{
			para(j = 0; j < 3; j++)
			{
				escreva("Posição [", i, "][", j, "]: ")
				leia(matriz[i][j])
			}
		}

		escreva("\nMatriz digitada:\n")

		// Mostra os números das colunas
		escreva("   ")
		para(j = 0; j < 3; j++)
		{
			escreva(j, " ")
		}
		escreva("\n")

		// Desenha a matriz com número da linha
		para(i = 0; i < 3; i++)
		{
			escreva(i, " |")

			para(j = 0; j < 3; j++)
			{
				escreva(matriz[i][j], " ")
			}

			escreva("|\n")
		}

		// Chama a função para verificar se a matriz é identidade
		se(verificarIdentidade(matriz))
		{
			escreva("\nA matriz é identidade.\n")
		}
		senao
		{
			escreva("\nA matriz não é identidade.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 345; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 37, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */