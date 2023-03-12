programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome, produtos[3]
		caracter formaPagamento
		inteiro opcao, opcaoPrincipal, contador, codigo, quantidadeVendas, produto
		real precos[3], precoTotal, precoVendas, desconto, valor

		precoTotal = 0.0
		produto = 0
		valor = 0.0
		desconto = 0.0
		quantidadeVendas = 0
		precoVendas = 0.0

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

			escreva("\nDesconto: ", desconto * 100, "%")
			escreva("\nValor total: R$ ", valor)
			
			escreva("\n--------------------------------------------------")
		} senao {
			faca {
				
				escreva("\n--------------------|MENU|--------------------")
				escreva("\nProduto = ", produto)
				escreva("\nOpção 1 - Ver promoções.")
				escreva("\nOpção 2 - Solicitar serviço de manutenção.")
				escreva("\nOpção 3 - Listar carrinho de compra.")
				escreva("\nOpção 4 - Finalizar carrinho de compra.")
				escreva("\nOpção 0 - Sair.")
				escreva("\n---------------------------------------------")
				escreva("\nDigite sua opção desejada: ")
				leia(opcaoPrincipal)
	
				escolha (opcaoPrincipal) {
					caso 1:
						faca  {
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
	
								se (produto < 3) {
									escolha (codigo) {
										caso 101:
											produtos[produto] = "Bicicleta nova na cor amarela, aro 26, com 18 marchas"
											precos[produto] = 999.99
											precoTotal = precoTotal + precos[produto]
											produto++
											quantidadeVendas++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso 102:
											produtos[produto] = "Bicicleta usada na cor azul, aro 26, com 18 marchas"
											precos[produto] = 400.00
											precoTotal = precoTotal + precos[produto]
											produto++
											quantidadeVendas++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso 103:
											produtos[produto] = "Capacete de proteção"
											precos[produto] = 59.99
											precoTotal = precoTotal + precos[produto]
											produto++
											quantidadeVendas++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso 104:
											produtos[produto] = "Freio a disco"
											precos[produto] = 89.99
											precoTotal = precoTotal + precos[produto]
											produto++
											quantidadeVendas++
											escreva("\nProduto adicionado no carrinho!")
										pare
		
										caso contrario:
											escreva("\nCódigo inválido!")
									}	
								} senao {
									escreva("\nO carrinho está cheio!!")
								} 
							} 
						} enquanto (opcao != 0)
					pare 
		
					caso 2:
	
						faca  {
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
		
									se (produto < 3) {
										escolha (codigo) {
											caso 201:
												produtos[produto] = "Troca de pneu"
												precos[produto] = 55.99
												precoTotal = precoTotal + precos[produto]
												produto++
												quantidadeVendas++
												escreva("\nProduto adicionado no carrinho!")
											pare
			
											caso 202:
												produtos[produto] = "Lavagem completa"
												precos[produto] = 12.99
												precoTotal = precoTotal + precos[produto]
												produto++
												quantidadeVendas++
												escreva("\nProduto adicionado no carrinho!")
											pare
			
											caso 203:
												produtos[produto] = "Freio"
												precos[produto] = 10.99
												precoTotal = precoTotal + precos[produto]
												produto++
												quantidadeVendas++
												escreva("\nProduto adicionado no carrinho!")
											pare
			
											caso contrario:
												escreva("\nCódigo inválido!")
										}	
									} senao {
										escreva("\nO carrinho está cheio!!")
									}
								} 
							} enquanto (opcao != 0)
						
					pare
		
					caso 3:

						se (produto > 0) {
							escreva("\n--------------------|CARRINHO|--------------------")
		
							para (contador = 0; contador < 3; contador++) {
								escreva("\nProduto: ", produtos[contador])
								escreva("\nPreço: R$ ", mat.arredondar(precos[contador], 2))
								escreva("\n")
							}
						
							escreva("\n---------------------------------------------------")
						} senao {
							escreva("\nO carrinho está vazio!!\nAdicione produto(s) no carrinho para poder visualizar.")
						}
						
					pare
		
					caso 4:

						se (produto > 0) {
							escreva("\n--------------------|CAIXA|--------------------")
							escreva("\nOpção 1 - Dinheiro.")
							escreva("\nOpção 2 - Cartão.")
							escreva("\n-----------------------------------------------")
							escreva("\nEscolha a forma de pagamento: ")
							leia(opcao)
			
							se (opcao == 1) {
								desconto = 10.0 / 100.0
								precoTotal = precoTotal - (precoTotal * desconto)
							}
	
								escreva("\nDesconto: ", desconto * 100, "%")
								escreva("\nValor total: R$ ", mat.arredondar(precoTotal, 2))

								para (contador = produto; contador >= 0; contador--) {
									produtos[contador] = ""
									precos[contador] = 0.0
								}

								precoVendas = precoVendas + precoTotal

								precoTotal = 0.0
								desconto = 0.0
								produto = 0
								
							} senao {
								escreva("\nCarrinho está vazio!!\nAdicione produto(s) para poder comprar.")
							}
						
					pare

				}

				escreva("\nNúmero de produtos vendidos: ", quantidadeVendas)
				escreva("\nValor total das vendas: R$ ", mat.arredondar(precoVendas, 2))
			
			} enquanto (opcaoPrincipal != 0)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7591; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */