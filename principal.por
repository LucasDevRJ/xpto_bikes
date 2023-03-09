programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome
		inteiro opcao, contador, quantidadeClientes
		logico temDesconto, sistemaLigado
		caracter clienteLavouBicicleta, clienteTrocouPneuBicicleta , clienteManutencaoFreios
		real precoLavagemBicicleta, precoTrocaPneuBicicleta, precoManutencaoFreios, desconto, precoTotal

		precoLavagemBicicleta = 12.99
		precoTrocaPneuBicicleta = 55.99
		precoManutencaoFreios = 10.99
		precoTotal = 0.0
		desconto = 0.0
		temDesconto = falso
		sistemaLigado = verdadeiro
		quantidadeClientes = 0

		enquanto (sistemaLigado == verdadeiro) {
			escreva("Digite o seu nome: ")
			leia(nome)

			se (nome == "xptorestrito") {
				escreva("\n--------------------|OS|--------------------\n")
				escreva("O cliente lavou a bicicleta? Digite S ou N.")
				leia(clienteLavouBicicleta)

				escreva("O cliente trocou o pneu da bicicleta? Digite S ou N.")
				leia(clienteTrocouPneuBicicleta)

				escreva("O cliente realizou manutenção nos freios? Digite S ou N.")
				leia(clienteManutencaoFreios)

				escreva("\n")

				se (clienteLavouBicicleta == 'S') {
					escreva("Serviço: lavagem de bicicleta\n")
					escreva("Preço: R$ ", precoLavagemBicicleta, "\n")
					precoTotal = precoTotal + precoLavagemBicicleta
				}

				se (clienteManutencaoFreios == 'S') {
					escreva("Serviço: manutenção dos freios\n")
					escreva("Preço: R$ ", precoManutencaoFreios, "\n")
					precoTotal = precoTotal + precoManutencaoFreios
				}

				se (clienteTrocouPneuBicicleta == 'S') {
					precoTotal = precoTotal + precoTrocaPneuBicicleta
					escreva("Serviço: Troca de pneu\n")
					escreva("Preço: R$ ", precoTrocaPneuBicicleta, "\n")
				}

				se (clienteLavouBicicleta == 'S' e clienteManutencaoFreios == 'S') {
					desconto = 0.10
					temDesconto = verdadeiro
				}
				
				se (clienteTrocouPneuBicicleta == 'S' e clienteManutencaoFreios == 'S') {
					desconto = 0.20
					temDesconto = verdadeiro
				}
	
				se (temDesconto == verdadeiro) {
					escreva("\nDesconto: ", desconto * 100, "%")
				}
	
				precoTotal = precoTotal - (precoTotal * desconto)
				
				escreva("\nPreço total: R$ ", mat.arredondar(precoTotal, 2))
	
				escreva("\n--------------------------------------------\n\n")
				
			} senao {
				quantidadeClientes++
				escreva("\nPrezado(a), ", nome, ". Seja muito bem-vindo(a) à nossa loja.\n")
				escreva("Oferecemos em nossa loja venda e manutenção de bicicletas.\nPara venda de bicicletas, procure o colaborador Junior e, para manutenção, procure o colaborador Neto.\nObrigado e esperamos que tenha uma ótima experiência em nossa loja.\n\n")
				escreva("--------------------|MENU|--------------------\n")
				escreva("1 - Ver ofertas de bicicletas usadas.\n")
				escreva("2 - Ver ofertas de bicicletas novas.\n")
				escreva("3 - Ver ofertas de acessórios.\n")
				escreva("4 - Ver novos serviços.\n")
				escreva("5 - Promoção I 10% de desconto.\n")
				escreva("6 - Promoção II 20% de desconto.\n")
				escreva("10 - Sair.\n")
				escreva("Digite a opção desejada: ")
				leia(opcao)
				escreva("----------------------------------------------\n")
	
				se (opcao == 1) {
					escreva("\nBicicleta usada na cor azul, aro 26, com 18 marchas e com valor promocional de R$ 400,00.\n\n")
				} senao se (opcao == 2) {
					escreva("\nBicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.\n\n")
				} senao se (opcao == 3) {
					escreva("\nAcessório em oferta - Capacete de proteção por R$ 59,99.\n\n")
				} senao se (opcao == 4) {
					escreva("\nNovos serviços oferecidos: Lavagem completa da sua bicicleta por R$ 12,99 | Manutenção dos freios por R$ 10,99 | Troca de pneus por R$ 55,99.\n\n")
				} senao se (opcao == 5) {
					escreva("\nLave sua bicicleta (R$ 12,99) e realize manutenção no freio (R$ 10,99) com desconto de 10% no total do pagamento.\n\n")
				} senao se (opcao == 6) {
					escreva("\nTroque um pneu da bicicleta (R$ 55,99) e realize a manutenção nos freios (R$ 10,99) com 20% de desconto no total do pagamento.\n\n")
				} senao se (opcao == 10) {
					sistemaLigado = falso
					escreva("Quantidade de clientes que usaram o sistema: ", quantidadeClientes)
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */