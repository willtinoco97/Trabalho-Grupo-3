programa
{ 
	/* -> Matriz com 10 linhas e 12 colunas
	 * -> Inicializar a matriz com 0
	 * -> Reservar assento, criticando aqueles que já foram reservados ou que não existem
	 */
	
	inteiro cadeiras[10][12]
	inteiro assento, fileira
	
	funcao inicio()
	{
		escreveTela()
		reserva()
	}

	funcao escreveTela() {
		
		para(inteiro i = 0; i < 10; i++){
			para(inteiro j = 0; j < 12; j++) {
				escreva(cadeiras[i][j], " ")
			}
			escreva("\n")
		} 
	}

	funcao reserva() {

		faca {
			escreva("Digite o assento e a fileira do assento a ser resevado.\n")
			escreva("Assento: ")
			leia(assento)

			se(assento < 0) { // para o programa se digitar valor negativo
				pare
			}
			
			escreva("\nFileira: ")
			leia(fileira)


			se(assento >= 10){ // valor de assento inválido
				limpa()
				escreva("Assento inválido, tente novamente.\n")
				escreveTela()
				reserva()
			}

			verifica()
			escreveTela()
			
		} enquanto (assento >= 0)
			
		
	}

	funcao verifica() { // verifica disponibilidade
		se (cadeiras[assento][fileira] == 0) {
			cadeiras[assento][fileira] = 1
			limpa()
			escreva("Assento reservado com sucesso!\n")
		} senao {
			limpa()
			escreva("Assento já reservado.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 947; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */