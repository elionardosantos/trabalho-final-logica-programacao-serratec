programa
{

	// Descrição: Crie um programa que receba um número inteiro positivo
	// e exiba todos os seus divisores. Não permita a digitação de números
	// negativos e solicite a digitação de um número positivo.
	
	funcao inicio()
	{
		inteiro numero
		
		escreva("Bem vindo ao buscador de divisores")
		escreva("\nPara buscarmos os divisores, digite um número inteiro positivo: ")
		leia(numero)

		enquanto (numero <= 0){
			limpa()
			escreva("Número inválido.\nPor favor digite um número inteiro positivo: ")
			leia(numero)
		}
		
		escreva("Os números divisores de ", numero, " são: ")
		
		para(inteiro contador = 1; contador <= numero; contador++){
			se(numero % contador == 0){
				se(contador == numero){
					escreva(numero, ".")
				} senao {
					escreva(contador, ", ")
				}
			}
		}

		escreva("\n") // Espaçamento
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */