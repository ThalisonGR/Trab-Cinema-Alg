programa
{
	inclua biblioteca Util	
	
	
	funcao inicio()
	{

		// VARIAVEIS DO ESCOLHAS
		// S = SELEÇÃO DE MENU
		  inteiro s_do_menu,s_compra_ing 

		  const inteiro LUGARES = 5

		  cadeia cinema[LUGARES][LUGARES] = {{"A1","A2","A3","A4","A5"},
		  							  {"B1","B2","B3","B4","B5"},
		  							  {"C1","C2","C3","C4","C5"},
		  							  {"D1","D2","D3","DA","D5"},
		  							  {"E1","E2","E3","E4","E5"}}


		

		   //APRESENTAÇÃO DO MENU
		 //  faca{ // FACA 1
		   		limpa()
		  		menuApresentacao()
		  	 	leia(s_do_menu)

		   //MENU PRINCIPAL
		   escolha(s_do_menu){
		   	caso 1:
		   			//faca{
		   			limpa()
					menuCompraIngresso()
		  			leia(s_compra_ing)
		   			//}enquanto(s_do_menu !=1 ou s_do_menu !=2 ou s_do_menu !=3)

		   			//MENU COMPRAR INGRESSOS
		   			escolha(s_compra_ing){

		   				//MENU INGRESSO INTEIRA
		   				caso 1:

							inteiro qtdIngressoInteira = 0
		   					
		   					limpa()
		   					cadeia nomeClienteInteira
		   					escreva("Informe o nome do cliente:\n")
		   					leia(nomeClienteInteira)

							limpa()
		   					saudacaoCliente(nomeClienteInteira)

		   				
							escreva("Quantos ingressos deseja comprar: \n ")
							leia(qtdIngressoInteira)
							
							
							
							//Apresenta os lugares disponíveis no cinema
							lugaresCinema(cinema, LUGARES)

							
		   					pare

						//MENU INGRESSO MEIA
		   				caso 2:
		   					limpa()
		   					cadeia nomeClienteMeia
		   					inteiro s_cliente_meia

		   					
		   					escreva("Informe o nome do cliente:\n")
		   					leia(nomeClienteMeia)

		   					saudacaoCliente(nomeClienteMeia)
							menuClienteMeia()

		   					leia(s_cliente_meia)
					
								escolha(s_cliente_meia){
									caso 1:
										
								}
		   					pare

		   				caso 3:
		   		
		   			}
		   	caso 2:
		   		
		   		
		   }
		//}enquanto(s_do_menu !=1 ou s_do_menu !=2 ou s_do_menu !=3 ou s_do_menu !=4) // ENQUANTO DO FACA 1
	}
 

	//FUNÇÕES	




	
	// PROCEDIMEMTOS

	
	funcao lugaresCinema(cadeia matriz[][], inteiro lugares){
		
		para(inteiro i = 0 ; i < lugares ; i++){
			para(inteiro k = 0 ; k < lugares ; k++){
				escreva(matriz[i][k],"\t")
			}
			escreva("\n")
		}
		escreva("----------------------------------\n")
		escreva("-----------TELA DO CINEMA---------\n")
		escreva("----------------------------------\n")
	}
	



	
	funcao saudacaoCliente(cadeia nomeCliente){
		escreva("Bem-Vindo Sr(a) ", nomeCliente , "\n\n")
		}

	funcao menuClienteMeia(){
		escreva("-------------------------------------------------------\n")
		escreva("-------------------------------------------------------\n")
		escreva("1 - ESTUDANTE\n")
		escreva("2 - IDOSO\n")
		escreva("Selecione uma opcao para continuar\n")
		escreva("-------------------------------------------------------\n")
		escreva("-------------------------------------------------------\n")
	}
	
	funcao menuCompraIngresso(){
		escreva("-------------------------------------------------------\n")
		 escreva("--------------MENU DE COMPRAR INGRESSO----------------\n")
		escreva("-------------------------------------------------------\n")
		escreva("1 - INTEIRA\n")
		escreva("2 - MEIA\n")
		escreva("Selecione uma opcao para continuar\n")
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
 * @POSICAO-CURSOR = 845; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */