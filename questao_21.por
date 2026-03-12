// Code made by Bernardo da Silva
// Trabalho avaliação final Lógica de Programação - SERRATEC
// https://github.com/BernardoSilvaOliveira

programa
{

	// Função que encontra a linha com maior soma
	funcao vazio linhaMaiorSoma(inteiro matriz[][])
	{
		inteiro i, j // Contadores i = linha, j = coluna
		inteiro soma 
		inteiro maiorSoma = 0
		inteiro linhaMaior = 0

		// Percorre cada linha
		para(i = 0; i < 5; i++)
		{
			soma = 0

			// Soma os elementos da linha atual
			para(j = 0; j < 5; j++)
			{
				soma = soma + matriz[i][j]
			}

			// Verifica se é a maior soma encontrada tendo como referencia a primeira linha e depois comparando normalmente
			se(i == 0 ou soma > maiorSoma)
			{
				maiorSoma = soma
				linhaMaior = i
			}
		}

		escreva("\nLinha com maior soma: ", linhaMaior)
		escreva("\nValor da soma: ", maiorSoma)
	}

	funcao inicio()
	{
		inteiro matriz[5][5]
		inteiro i, j

		escreva("Digite os valores da matriz 5x5:\n")

		// Leitura da matriz
		para(i = 0; i < 5; i++)
		{
			para(j = 0; j < 5; j++)
			{
				escreva("Posição [", i, "][", j, "]: ")
				leia(matriz[i][j])
			}
		}

		// Mostra a matriz
		escreva("\n")

		// Mostra os números das colunas
		escreva("   ")
		para(j = 0; j < 5; j++)
		{
			escreva(j, " ")
		}
		escreva("\n")

		// Desenha a matriz com número da linha
		para(i = 0; i < 5; i++)
		{
			escreva(i, " |")

			para(j = 0; j < 5; j++)
			{
				escreva(matriz[i][j], " ")
			}

			escreva("|\n")
		}

		// Chama a função
		linhaMaiorSoma(matriz)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 41, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */