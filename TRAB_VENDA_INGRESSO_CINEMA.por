programa
{
	inclua biblioteca Util	
	
	
	funcao inicio()
	{
	 	logico thalisonlindo=falso
		// VARIAVEIS UTILIZADAS NO MENU DO CLIENTE INTEIRA
		const real valorIngresso = 50.00
		// VARIAVEIS UTILIZADAS NO MENU DO CLIENTE INTEIRA
		inteiro qtdIngressoInteira = 0
		cadeia lugarEscolhido, CpfInteira ,nomeClienteInteira
		//VARIAVEIS CLIENTE MEIA
		cadeia nomeClienteMeia , respostaIFRS, CpfMeia
		inteiro s_cliente_meia
		logico logRespostaIF = falso
		
		//VARIAVEIS DE MENUS
		// S = SELEÇÃO DE MENU
		inteiro s_do_menu,s_compra_ing, i

		const inteiro LUGARES = 5

		cadeia cinema[LUGARES][LUGARES] = {{"A1","A2","A3","A4","A5"},
		  							{"B1","B2","B3","B4","B5"},
		  							{"C1","C2","C3","C4","C5"},
		  							{"D1","D2","D3","DA","D5"},
		  							{"E1","E2","E3","E4","E5"}}
		  							
		cadeia armazenaCPF[LUGARES][LUGARES]={{"A1","A2","A3","A4","A5"},
		  							   {"B1","B2","B3","B4","B5"},
		  							   {"C1","C2","C3","C4","C5"},
		  							   {"D1","D2","D3","DA","D5"},
		  							   {"E1","E2","E3","E4","E5"}}
		  							   
		  cadeia copiacinema[LUGARES][LUGARES]={{"A1","A2","A3","A4","A5"},
		  							   {"B1","B2","B3","B4","B5"},
		  							   {"C1","C2","C3","C4","C5"},
		  							   {"D1","D2","D3","DA","D5"},
		  							   {"E1","E2","E3","E4","E5"}}

		
		   faca{ // FACA 1		

		   //MENU PRINCIPAL
		   escolha(menuApresentacao()){
		   	caso 1:
		  
		   			limpa() 			
		   			//MENU COMPRA INGRESSO CHAMA A FUNCAO DENTRO DO ESCOLHA
		   			escolha(menuCompraIngresso()){

		   				//MENU INGRESSO INTEIRA
		   				caso 1:
		   				
		   					limpa()
		   					escreva("Informe o nome do cliente:\n")
		   					leia(nomeClienteInteira)

							escreva("Qual seu CPF:\n")
							leia(CpfInteira)
		   						
							limpa()
		   					saudacaoCliente(nomeClienteInteira)

		   					escreva("Valor do ingresso Inteira é:\nR$",valorIngresso,"\n")
							escreva("Quantos ingressos deseja comprar: \n ")
							leia(qtdIngressoInteira)

							//Apresentar o valor total dos ingressos (funcao calcIngresso)
							escreva("\n")
							escreva("Total da compra:\n")
							escreva("R$",calcIngressos(valorIngresso, qtdIngressoInteira),"\n")
							
							
							//Apresenta os lugares disponíveis no cinema
							escreva("Lugares disponives:\n")
							lugaresCinema(cinema, LUGARES)

							se(qtdIngressoInteira > 1){
								para(i = 0 ; i < qtdIngressoInteira; i++){
									escreva("Informe os lugares que deseja:\n")
									leia(lugarEscolhido)
									selecionaLugares(cinema,armazenaCPF, LUGARES, lugarEscolhido, CpfInteira)
								}
							
								
							}senao{
								escreva("Informe os lugar que deseja\n")
								leia(lugarEscolhido)
			
								selecionaLugares(cinema,armazenaCPF, LUGARES, lugarEscolhido, CpfInteira)
							}

							escreva("VENDA REALIZADA COM SUCESSO\n")
							lugaresCinema(cinema, LUGARES)
							Util.aguarde(1000)
							limpa()

							
		   					pare

						//MENU INGRESSO MEIA
		   				caso 2:
		   					limpa()
		 
								escolha(menuClienteMeia()){

									//ESTUDANTE IRÁ TER 20% DE DESCONTO se for do IF os demais 10%
									caso 1:
																				limpa()
										escreva("Informe o nome do estudante:\n")
					   					leia(nomeClienteMeia)
			
										escreva("Qual seu CPF:\n")
										leia(CpfMeia)
					   						
										limpa()
					   					saudacaoCliente(nomeClienteMeia)
					   					escreva("Você estuda no IFRS?\n")

					   					//VERIFICAR O FACA DA RESPOSTA POIS ESTÁ DANDO ERRADO
					   					faca{
					   						leia(respostaIFRS)
					   					}enquanto(respostaIFRS != "S" ou respostaIFRS != "N")

					   					
					   					se(respostaIFRS == "S" ){
					   						logRespostaIF = verdadeiro
					   						escreva("Valor do ingresso:\n")
					   						escreva("R$",calcIngressoEstudante(valorIngresso, logRespostaIF))

					   						
					   					}
					   					se(respostaIFRS == "N"){
					   						logRespostaIF = falso
					   						calcIngressoEstudante(valorIngresso, logRespostaIF)
					   					}

					   					
										pare

									//IDOSO TERÁ 50% de desconto sempre
									caso 2:
										
								}
		   					pare

		   				caso 3:

		   					escreva("Qual ingresso deseja devolver para o cinema:")
		   					

		   					pare 
							
		   				caso 4:
		   				
		   					pare 
		   		
		   			}
		   	caso 2:
		   		
		   		
		   }
		}enquanto(menuApresentacao() != 4) // ENQUANTO DO FACA 1
	}
 
	//FUNÇÕES	
	funcao real calcIngressos(real valorIngresso, inteiro quantidadeComprada){
		retorne valorIngresso * quantidadeComprada 
	}

	funcao real calcIngressoEstudante(real valorIngresso, logico estudaIF){
		//ESTUDANTE IRÁ TER 20% DE DESCONTO SE FOR DO IF OS DEMAIS  10%
		estudaIF = falso
		real calc = 0.0
		real porcentagem = 0.0
		se(estudaIF == verdadeiro){
			calc = valorIngresso - (valorIngresso * 0.20)
			retorne calc
		}
		se(estudaIF == falso){
			calc = valorIngresso - (valorIngresso * 0.10)
			retorne calc
		}

		retorne calc
	}
	
	funcao inteiro menuApresentacao(){
		   inteiro selecaoUser
		   escreva("Bem-vindo ao Cinema do TADS\n")
		   escreva("Selecione uma opcao para continuar\n")
		   escreva("-------------------------------------------------------\n")
		   escreva("1 - COMPRAR INGRESSO\n")
		   escreva("2 - DEVOLUÇÃO DO INGRESSO\n")
		   escreva("3 - FATURAMENTO CINEMA\n")
		   escreva("4 - SAIR\n")
		   leia(selecaoUser)
		   retorne selecaoUser
	}

	funcao inteiro menuCompraIngresso(){
		inteiro selecaoCompraIngresso
		escreva("-------------------------------------------------------\n")
		escreva("--------------MENU DE COMPRAR INGRESSO----------------\n")
		escreva("-------------------------------------------------------\n")
		escreva("1 - INTEIRA\n")
		escreva("2 - MEIA\n")
		escreva("Selecione uma opcao para continuar\n")
		leia(selecaoCompraIngresso)
		retorne selecaoCompraIngresso
	}
	
	funcao inteiro menuClienteMeia(){
		inteiro selecaoUser
		escreva("-------------------------------------------------------\n")
		escreva("-------------------------------------------------------\n")
		escreva("1 - ESTUDANTE\n")
		escreva("2 - IDOSO\n")
		escreva("Selecione uma opcao para continuar\n")
		escreva("-------------------------------------------------------\n")
		escreva("-------------------------------------------------------\n")
		leia(selecaoUser)
		retorne selecaoUser
	}


	
	// PROCEDIMEMTOS
	funcao selecionaLugaresCompraIngresso(cadeia matriz[][], cadeia matcpf[][], inteiro lugares, cadeia escolhaCliente, cadeia cpfCliente){
		para(inteiro i = 0 ; i < lugares ; i++){
			para(inteiro k = 0 ; k < lugares ; k++){
				se(matriz[i][k] == escolhaCliente){
						matriz[i][k] = "X"
						matcpf[i][k] = cpfCliente			 
				}
			}
		}		
	}

	
	funcao selecionaLugares(cadeia matriz[][], cadeia matcpf[][], inteiro lugares, cadeia escolhaCliente, cadeia cpfCliente){
		para(inteiro i = 0 ; i < lugares ; i++){
			para(inteiro k = 0 ; k < lugares ; k++){
				se(matriz[i][k] == escolhaCliente){
						
						matriz[i][k] = "X"
						matcpf[i][k] = cpfCliente			 
				}
			}
		}

			
	}
	
	
	
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


	

	


}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 321; 
 * @DOBRAMENTO-CODIGO = [107, 169, 173, 190, 203, 215, 260];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */