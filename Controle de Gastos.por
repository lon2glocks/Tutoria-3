programa {
funcao inicio() {
  real orcamento = 0, gasto = 0, total_de_gastos = 0, saldo = 0
  inteiro opcao

	escreva("Digite o orçamento mensal: ")
	leia(orcamento)
	faca
	{
		escreva("1 - Adicionar gasto\n")
		escreva("2 - Ver total gasto\n")
		escreva("3 - Ver saldo\n")
		escreva("4 - Sair\n")
		escreva("Escolha uma opção: ")
		leia(opcao)
		escolha(opcao)
		{
			caso 1:
    escreva("Digite o valor do gasto: ")
    leia(gasto)

    saldo = orcamento - total_de_gastos

    se(gasto <= 0)
    {
        escreva("Valor inválido!\n")
    }
    senao
    {
        se(gasto <= saldo)
        {
            total_de_gastos = total_de_gastos + gasto
            escreva("Gasto registrado!\n")
        }
        senao
        {
            escreva("Erro! Gasto maior que o saldo disponível.\n")
        }
    }
    pare
			caso 2:
				escreva("Total gasto: R$ ", total_de_gastos, "\n")
				pare
			caso 3:
				saldo = orcamento - total_de_gastos
				escreva("Saldo disponível: R$ ", saldo, "\n")
				se(saldo < 0)
				{
					escreva("Atenção! Orçamento ultrapassado!\n")
				}
				pare
			caso 4:
				escreva("Programa encerrado.\n")
				pare
			caso contrario:
				escreva("Opção inválida!\n")
		}
	} enquanto(opcao != 4)
}
}