programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome
		inteiro opcao
		
		escreva("Bem-vindo ao autoatendimento da bicicletaria XPTO Bikes.")
		
		escreva("\nDigite o seu nome: ")
		leia(nome)

		escreva("\n--------------------|MENU|--------------------")
		escreva("\nOpção 1 - Ver promoções.")
		escreva("\nOpção 2 - Solicitar serviço de manutenção.")
		escreva("\nOpção 3 - Listar carrinho de compra.")
		escreva("\nOpção 4 - Finalizar carrinho de compra.")
		escreva("\nOpção 5 - Sair.")
		escreva("\n---------------------------------------------")
		escreva("\nDigite sua opção desejada: ")
		leia(opcao)

		escolha (opcao) {
			caso 1:
				escreva("\nCódigo 101 - Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
				escreva("\nCódigo 102 - Bicicleta usada na cor azul, aro 26, com 18 marchas e com o valor promocional de R$ 400,00.")
				escreva("\nCódigo 103 - Capacete de proteção por R$ 59,99.")
				escreva("\nCódigo 104 - Freio a disco por R$ 89,99.")
				escreva("\n8 - Adicionar ao carinho de compras.")
				escreva("\n0 - Voltar.")
			pare 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1133; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */