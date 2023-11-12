programa
{
	
	funcao inicio()
	{

		// VARIAVEIS DO ESCOLHAS
		// S = SELEÇÃO DE MENU
		  inteiro s_do_menu,s_compra_ing 




		   //APRESENTAÇÃO DO MENU
		   faca{ // FACA 1
		   		limpa()
		  		menuApresentacao()
		  	 	leia(s_do_menu)

				se(s_do_menu == 4  ){
			
				}

		   escolha(s_do_menu){
		   	caso 1:
		   			faca{
		   			limpa()
					compraIngresso()
		  			leia(s_compra_ing)
		   			}enquanto(s_do_menu !=1 ou s_do_menu !=2 ou s_do_menu !=3)
		   			
		   			escolha(s_compra_ing){
		   				caso 1:
		   					limpa()
		   					cadeia nomeClienteInteira
		   					escreva("Informe o nome do cliente")
		   					leia(nomeClienteInteira)

		   					saudacaoCliente(nomeClienteInteira)
		   					// IRÁ CHAMAR A FUNCAO Á
		   					pare

		   				caso 2:
		   					cadeia nomeClienteMeia
		   					escreva("Informe o nome do cliente")
		   					leia(nomeClienteMeia)

		   					saudacaoCliente(nomeClienteMeia)

		   					pare
		   			}
		   	caso 2:
		   		
		   		
		   }
		}enquanto(s_do_menu !=1 ou s_do_menu !=2 ou s_do_menu !=3) // ENQUANTO DO FACA 1
	}
 

	//FUNÇÕES




	
	// PROCEDIMEMTOS
	funcao saudacaoCliente(cadeia nomeCliente){escreva("Bem-Vindo Sr(a)", nomeCliente)}
	
	funcao compraIngresso(){
		escreva("1 - INTEIRA\n")
		escreva("2 - MEIA\n")
	}
	funcao menuApresentacao(){
		
		   escreva("Bem-vindo ao Cinema do TADS\n")
		   escreva("Selecione uma opcao para continuar\n")
		   escreva("-------------------------------------------------------\n")
		   escreva("1 - COMPRAR INGRESSO\n")
		   escreva("2 - DEVOLUÇÃO DO INGRESSO\n")
		   escreva("3 - PROMOCIONAL\n")
		   escreva("4 - SAIR\n")
	}
	 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {s_do_menu, 9, 12, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */