// Code made by Bernardo da Silva
// Trabalho avaliação final Lógica de Programação - SERRATEC
// https://github.com/BernardoSilvaOliveira

programa
{

	// Função que verifica se o login e senha estão corretos
	funcao logico verificarLogin(cadeia login, cadeia senha)
	{
		cadeia loginCorreto = "admin"
		cadeia senhaCorreta = "1234"

		se(login == loginCorreto e senha == senhaCorreta)
		{
			retorne verdadeiro
		}

		retorne falso
	}

	funcao inicio()
	{
		cadeia login, senha
		inteiro tentativas = 0

		// Permite até 3 tentativas de login
		enquanto(tentativas < 3)
		{
			escreva("\nDigite o login: ")
			leia(login)

			escreva("Digite a senha: ")
			leia(senha)

			// Chama a função para verificar login
			se(verificarLogin(login, senha))
			{
				escreva("\nAcesso permitido!\n")
				retorne
			}
			senao
			{
				tentativas++
				escreva("\nLogin ou senha incorretos!\n")
			}
		}

		// Caso ultrapasse 3 tentativas
		escreva("\nAcesso bloqueado após 3 tentativas.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */