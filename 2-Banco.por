programa
{	
	cadeia matriz [4][2] = {{"usuario1", "1234"},
					    {"usuario2", "4321"},
					    {"usuario3", "1234"},
					    {"usuario4", "1234"}}
	cadeia usuario, senha
	real saldo = 0, valorDeposito, saque
	logico existente = falso
	
	funcao inicio()
	{
		entradaDados()
	}
	funcao entradaDados(){

		escreva("Usuário: ")
		leia(usuario)
		escreva("Senha: ")
		leia(senha)
		para(inteiro i = 0; i < 4; i++){
			se(usuario == matriz[i][0] e senha == matriz[i][1]){
				existente = verdadeiro
			}
		}
		se (existente) {
			limpa()
			escreva("Seja bem vindo!\n\n")
			menu()
		} senao {
			escreva("Usuário não encontrado.")
		}
	}
	funcao menu(){
		inteiro opcao
		escreva("Menu de opções")
		escreva("\n-------------------")
		escreva("\n1. Depositar")
		escreva("\n2. Sacar")
		escreva("\n3. Saldo")
		escreva("\n4. Sair")
		escreva("\n-------------------\n")
		leia(opcao)
		escolha(opcao){
			caso 1: 
				depositar()
			pare
			caso 2: 
				sacar()
			pare
			caso 3:
				mostraSaldo()
			pare
			caso 4: 
			pare
			caso contrario: 
				limpa()
				escreva("Numero invalido!\n\n")
				menu()
		}
	}
	funcao depositar(){
		limpa()
		escreva("Insira o valor do deposito: R$ ")
		leia(valorDeposito)
		saldo = saldo + valorDeposito
		escreva("\nDeposito realizado com sucesso!")
		espere()
	}
	funcao sacar(){
		limpa()
		escreva("Insira o valor do saque: R$ ")
		leia(saque)
		se (saldo >= saque){
			saldo = saldo - saque 
			escreva("\nSaque realizado!")
			espere()
		} senao {
			escreva("\nSaldo insuficiente!")
			espere()
		}
	}
	funcao mostraSaldo(){
		limpa()
		escreva("O seu saldo é de R$ ", saldo)
		espere()
	}
	funcao espere(){
		cadeia _
		escreva("\n\nPressione 'ENTER' para continuar...")
		leia(_)	
		limpa()
		menu()	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1093; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {opcao, 35, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */