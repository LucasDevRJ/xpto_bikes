programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome, produtos[3]
		caracter formaPagamento
		inteiro opcao, contador, codigo
		real precos[3], precoTotal, desconto, valor

		precoTotal = 0.0
		contador = 0

		escreva("Bem-vindo ao autoatendimento da bicicletaria XPTO Bikes.")
		
		escreva("\nDigite o seu nome: ")
		leia(nome)

		se (nome == "xptorestrito") {
			escreva("\n--------------------|RESTRITO|--------------------")
			escreva("\nDigite o nome do cliente: ")
			leia(nome)

			escreva("\nDigite o valor gasto pelo cliente: R$ ")
			leia(valor)

			escreva("\nFormas de pagamento:\nD - Dinheiro\nC - Cartão\nDigite a forma de pagamento feita pelo cliente: ")
			leia(formaPagamento)

			enquanto (formaPagamento != 'D' e formaPagamento != 'C') {
				escreva("\nDigite somente a letra D ou C!!")
				escreva("\nFormas de pagamento:\nD - Dinheiro\nC - Cartão\nDigite a forma de pagamento feita pelo cliente: ")
				leia(formaPagamento)
			}

			se (formaPagamento == 'D') {
				desconto = 10.0 / 100.0
				valor = valor - (valor * desconto)
			}

			escreva("\nValor total: R$ ", valor)
			
			escreva("\n--------------------------------------------------")
		} senao {
			faca {
				escreva("Contador = ",contador)
				
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
						enquanto (opcao != 0) {
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
	
							se (opcao == 8) {
								escreva("\nDigite o código do produto que deseja adicionar no carrinho: ")
								leia(codigo)
	
								se (contador < 3) {
									escolha (codigo) {
										caso 101:
											produtos[contador] = "Bicicleta nova na cor amarela, aro 26, com 18 marchas"
											precos[contador] = 999.99
											precoTotal = precoTotal + precos[contador]
											contador++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso 102:
											produtos[contador] = "Bicicleta usada na cor azul, aro 26, com 18 marchas"
											precos[contador] = 400.00
											precoTotal = precoTotal + precos[contador]
											contador++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso 103:
											produtos[contador] = "Capacete de proteção"
											precos[contador] = 59.99
											precoTotal = precoTotal + precos[contador]
											contador++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso 104:
											produtos[contador] = "Freio a disco"
											precos[contador] = 89.99
											precoTotal = precoTotal + precos[contador]
											contador++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso contrario:
											escreva("\nCódigo inválido!")
									}	
								} senao {
									escreva("\nO carrinho está cheio!!")
								} 
							} 
						}
					pare 
		
					caso 2:
	
						enquanto (opcao != 0) {
							escreva("\n--------------------|MANUTENÇÃO|--------------------")
							escreva("\nCódigo 201 - Troca de pneu - R$ 55,99.")
							escreva("\nCódigo 202 - Lavagem completa - R$ 12,99.")
							escreva("\nCódigo 203 - Freio - R$ 10,99.")
							escreva("\n8 - Adicionar ao carinho de compras.")
							escreva("\n0 - Voltar.")
							escreva("\n----------------------------------------------------")
							escreva("\nDigite sua opção desejada: ")
							leia(opcao)
	
							se (opcao == 8) {
									escreva("\nDigite o código do produto que deseja adicionar no carrinho: ")
									leia(codigo)
		
									se (contador < 3) {
										escolha (codigo) {
											caso 201:
												produtos[contador] = "Troca de pneu"
												precos[contador] = 55.99
												precoTotal = precoTotal + precos[contador]
												contador++
												escreva("\nProduto adicionado no carrinho!")
											pare
			
											caso 202:
												produtos[contador] = "Lavagem completa"
												precos[contador] = 12.99
												precoTotal = precoTotal + precos[contador]
												contador++
												escreva("\nProduto adicionado no carrinho!")
											pare
			
											caso 203:
												produtos[contador] = "Freio"
												precos[contador] = 10.99
												precoTotal = precoTotal + precos[contador]
												contador++
												escreva("\nProduto adicionado no carrinho!")
											pare
			
											caso contrario:
												escreva("\nCódigo inválido!")
										}	
									} senao {
										escreva("\nO carrinho está cheio!!")
									}
								} 
							}
						
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
		
					caso 4:
						escreva("\n--------------------|CAIXA|--------------------")
						escreva("\nOpção 1 - Dinheiro.")
						escreva("\nOpção 2 - Cartão.")
						escreva("\nOpção 3 - Voltar.")
						escreva("\n-----------------------------------------------")
						escreva("\nEscolha a forma de pagamento: ")
						leia(opcao)
		
						se (opcao == 1) {
							desconto = 10.0 / 100.0
							precoTotal = precoTotal - (precoTotal * desconto)
						}
					pare
				}
			
			} enquanto (opcao != 5)
		}

		escreva("\nNúmero de produtos vendidos: ")
		escreva("\nValor total das vendas: R$ ", precoTotal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5259; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */