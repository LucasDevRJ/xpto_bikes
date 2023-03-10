programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome, produtos[3]
		inteiro opcao, contador
		real precos[3]
		
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
				escreva("\n--------------------|PROMOÇÕES|--------------------")
				escreva("\nCódigo 101 - Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
				escreva("\nCódigo 102 - Bicicleta usada na cor azul, aro 26, com 18 marchas e com o valor promocional de R$ 400,00.")
				escreva("\nCódigo 103 - Capacete de proteção por R$ 59,99.")
				escreva("\nCódigo 104 - Freio a disco por R$ 89,99.")
				escreva("\n8 - Adicionar ao carinho de compras.")
				escreva("\n0 - Voltar.")
				escreva("\n--------------------------------------------------")
				escreva("\nDigite sua opção desejada: ")
				leia(opcao)
			pare 

			caso 2:
				escreva("\n--------------------|MANUTENÇÃO|--------------------")
				escreva("\nCódigo 201 - Troca de pneu - R$ 55,99.")
				escreva("\nCódigo 202 - Lavagem completa - R$ 12,99.")
				escreva("\nCódigo 203 - Freio - R$ 10,99.")
				escreva("\n8 - Adicionar ao carinho de compras - R$ 55,99.")
				escreva("\n0 - Voltar.")
				escreva("\n----------------------------------------------------")
				escreva("\nDigite sua opção desejada: ")
				leia(opcao)
			pare

			caso 3:
				escreva("\n--------------------|CARRINHO|--------------------")

				para (contador = 0; contador < 3; contador++) {
					escreva("\nProduto: ", produtos[contador])
					escreva("\nPreço: R$ ", precos[contador])
					escreva("\n")
				}
				
				escreva("\n---------------------------------------------------")
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2176; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */