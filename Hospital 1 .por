programa
{		logico  quartos[20]
		inteiro resposta = 0, totalConsultas = 0, faturamentoConsulta = 0, quarto = 0, totalInternacoes = 0,
		faturamentoInternacoes = 0, faturamentoTotal = 0
		cadeia nome, telefone, especMedica 
	
	funcao inicio()
	{
		enquanto (resposta !=5){

			escreva("HOSPITAL - XPTO")
			escreva("\n---------------\n")
			escreva("1 - Consulta Ambulatório\n")
			escreva("2 - Internação\n")
			escreva("3 - Listar Quartos\n")
			escreva("4 - Faturamento\n")
			escreva("5 - Sair do Programa\n")
			escreva("---------------\n")
			leia(resposta)

			escolha (resposta) {
				caso 1:
					consulta()
				pare
				caso 2:
					internacao()
				pare
				caso 3:
					listarQuartos()
				pare
				caso 4:
					faturamento()
				pare
				caso 5:
				pare
				caso contrario:
					escreva("Digite um numero valido:")
		}	
		
	}
	}
		funcao consulta (){
			limpa()
			escreva("Consulta Ambulatorio:\n")
			escreva("---------------\n")

			dadosPaciente()

			escreva("Especialidade desejada:")
			leia(especMedica)
			totalConsultas++

			se(especMedica == "Pediatria" ou especMedica == "pediatria"){
					faturamentoConsulta += 150


		}senao { faturamentoConsulta += 120

		}
		limpa()
		}

		funcao internacao(){
			  limpa()
			  quarto = 0
			

			escreva("\nInternação")
			escreva("\n---------------\n")
			dadosPaciente()

			enquanto( quarto < 1 ou quarto > 20){
				escreva("Numero do quarto a ser reservado:")
				leia(quarto)
				se (quarto <1 ou quarto > 20){
				escreva ("Quarto invalido!\n")
				
			}
		}se (quartos[quarto-1] != verdadeiro) {
			quartos[quarto-1] = verdadeiro
			escreva("Quarto reservado com sucesso. \n")
			totalInternacoes++
			faturamentoInternacoes += 500
			
		}senao {
			escreva("Quarto ocupado!")
		}
		
		}
		funcao listarQuartos(){
			
			para(inteiro i=0; i < 20; i++){
				se(quartos[i] == verdadeiro){
					escreva("Quarto", i+1, ": Ocupado\n")
				}senao 
					escreva("Quarto", i+1, ": Disponivel\n")

		}
		}
			
		funcao faturamento(){

			limpa()

			faturamentoTotal = faturamentoConsulta + faturamentoInternacoes
			
			escreva("Numero de consultas:", totalConsultas, "\n")
			escreva("Total de internações:", totalInternacoes, "\n")
			escreva("Faturamento consultas:", faturamentoConsulta, "\n")
			escreva("Faturamento internações:", faturamentoInternacoes, "\n")
			escreva("Total faturado:", faturamentoTotal, "\n")
			
		}
			
		funcao dadosPaciente(){
			
			escreva("Digite os dados do paciente:\n")

			escreva("Nome do paciente:")
			leia(nome)
			escreva("\nTelefone do paciente:")
			leia(telefone)
		}
	}
		

		

		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */