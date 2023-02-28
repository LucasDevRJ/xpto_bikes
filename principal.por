programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro opcao

		escreva("Digite o seu nome: ")
		leia(nome)

		escreva("Prezado(a), ", nome, ". Seja muito bem-vindo(a) à nossa loja.\n")
		escreva("Oferecemos em nossa loja venda e manutenção de bicicletas.\nPara venda de bicicletas, procure o colaborador Junior e, para manutenção, procure o colaborador Neto.\n\nObrigado e esperamos que tenha uma ótima experiência em nossa loja.\n")
		escreva("1 - Ver ofertas de bicicletas usadas.\n")
		escreva("2 - Ver ofertas de bicicletas novas.\n")

		escreva("Digite a opção desejada: ")
		leia(opcao)

		se (opcao == 1) {
			escreva("Bicicleta usada na cor azul, aro 26, com 18 marchas e com valor promocional de R$ 400,00.")
		} senao {
			se (opcao == 2) {
				escreva("Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */