programa
{
	logico Vagas[30]
	inteiro numero=0, vaga
	cadeia placa[30], placa_veiculo

	funcao inicio(){
		menu()
		escreva("\nSelecione uma das opções: ")
		leia(numero)
		escolha(numero){
			caso 1:entradaVeiculos()
			pare
			caso 2:saidaVeiculos()
			pare
			caso 3:listaVagas()
			pare
			caso 4:
			pare
		}
	}
	funcao menu(){
	 	limpa()
	 	escreva("Estacionamento do SERRATEC\n")
	 	escreva("---------------------------\n")
	 	escreva("1- Entrada de Veiculos\n")
		escreva("2- Saida de Veiculo\n")
		escreva("3- Lista de vagas\n")
		escreva("4- Sair do programa\n")
	 	escreva("---------------------------")
	}
	funcao entradaVeiculos(){
		limpa()
		escreva("Entrada de veiculos\n")
		escreva("---------------------------\n")
		faca{
			escreva("Digite o numero da vaga: ")
			leia(vaga)
			vaga = vaga-1
		}enquanto(vaga > 29 ou vaga < 0) 
		se (Vagas[vaga] != verdadeiro){
			Vagas[vaga] = verdadeiro	
			escreva("Placa do Veiculo: ")
			leia(placa[vaga])
			escreva("\nVaga cadastrado!")
			espere()
		}senao{ escreva("\nVaga ocupada.")
			espere()
		}
	}
	funcao saidaVeiculos(){
		limpa()
		escreva("Saida de veiculos\n")
		escreva("---------------------------\n")
		faca{
		escreva("Digite o numero da vaga: ")
		leia(vaga)
		vaga = vaga-1
		}enquanto(vaga > 29 ou vaga < 0) 
		se (Vagas[vaga] == verdadeiro){
			Vagas[vaga] = falso	
			placa[vaga]= ""
			escreva("\nVaga liberada com sucesso!")
			espere()
		}senao{ escreva("\nVaga já está disponivel!")
			espere()
		}
	}
	funcao listaVagas(){
		limpa()
		escreva("Lista de vagas\n")
		escreva("---------------------------\n")
		para(inteiro i=0; i < 30; i++){
			se (Vagas[i] == verdadeiro){
				escreva(i+1," Vaga ocupada! - Placa: ", placa[i],"\n")
			}senao{
				escreva(i+1," Vaga disponivel!\n")
			}
		}
		espere()
		limpa()
	}
	funcao espere(){
		cadeia _
		escreva("\n\nPressione 'ENTER' para continuar...")
		leia(_)
		inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */