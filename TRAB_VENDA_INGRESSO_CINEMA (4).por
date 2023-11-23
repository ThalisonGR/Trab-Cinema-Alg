programa
{
	inclua biblioteca Util	
	
	
	funcao inicio()
	{
	 
		// VARIAVEIS UTILIZADAS NO MENU DO CLIENTE INTEIRA
		const real valorIngresso = 50.00
		const inteiro VET_FAT_TAM = 2
		// VARIAVEIS UTILIZADAS NO MENU DO CLIENTE INTEIRA
		inteiro qtdIngresso = 0, qnt_dev, ingresso_meia=0, l=0, c=0
		cadeia lugarEscolhido = "", cpf_cliente ,nome_cliente, dev_compra 
		//VARIAVEIS CLIENTE MEIA
		cadeia  respostaIFRS, resp_cliente 
		inteiro s_cliente, idade_cliente, respMenu
		logico logRespostaIF = falso, log_resp_cliente_dev = falso, teste_lugar= falso

		//VET DO FATURAMENTO 0 = INTEIRA  1 = ESTUDANTE   2 = MEIA
		real total_faturado [VET_FAT_TAM]


		
		//VARIAVEIS DE MENUS
		// S = SELEÇÃO DE MENU
		inteiro s_do_menu,s_compra_ing, i

		const inteiro LUGARES = 5

		cadeia cinema[LUGARES][LUGARES] = {{"A1","A2","A3","A4","A5"},
		  							{"B1","B2","B3","B4","B5"},
		  							{"C1","C2","C3","C4","C5"},
		  							{"D1","D2","D3","D4","D5"},
		  							{"E1","E2","E3","E4","E5"}}
		  							
		  							   
		cadeia copiacinema[LUGARES][LUGARES] ={{"A1","A2","A3","A4","A5"},
			  							{"B1","B2","B3","B4","B5"},
			  							{"C1","C2","C3","C4","C5"},
			  							{"D1","D2","D3","D4","D5"},
			  							{"E1","E2","E3","E4","E5"}}

		
		   faca{ // FACA 1		

		   //MENU PRINCIPAL
		   respMenu = menuApresentacao()
		   escolha(respMenu){
		   	caso 1:
		  
		   			limpa() 			
		   			//MENU COMPRA INGRESSO CHAMA A FUNCAO DENTRO DO ESCOLHA
		   			escolha(menuCompraIngresso()){

		   				//MENU INGRESSO INTEIRA
		   				caso 1:  
		   				
		   					limpa()
		   					escreva("Informe o nome do cliente:\n")
		   					leia(nome_cliente)
		   			
							limpa()
		   					escreva("Valor do ingresso Inteira é:\nR$",valorIngresso,"\n")
							faca{
								escreva("Informe quantidade de ingressos desejada: \n ")
								leia(qtdIngresso)
							}enquanto(qtdIngresso < 1 ou qtdIngresso > 25 )

								escreva("\n")
								escreva("Total da compra:\n")
								escreva("R$",calcIngressosInteira(valorIngresso, qtdIngresso),"\n")
								total_faturado[0] = calcIngressosInteira(valorIngresso, qtdIngresso)
								
							
							//Apresenta os lugares disponíveis no cinema
							escreva("Lugares disponives:\n")
							lugaresCinema(cinema, LUGARES)
								para(i = 0 ; i < qtdIngresso; i++){
									escreva("Informe o lugar solicitado:\n")
									teste_lugar = falso
									faca{
									leia(lugarEscolhido)
									para(l=0;l<LUGARES;l++){
										para(c=0;c<LUGARES;c++){
											se(lugarEscolhido == cinema[l][c]){
												teste_lugar = verdadeiro
											}
										}
									}
									}enquanto(nao teste_lugar)
									selecionaLugaresCompraIngresso(cinema, LUGARES, lugarEscolhido)
								}
								
								selecionaLugaresCompraIngresso(cinema, LUGARES, lugarEscolhido)

								escreva("VENDA REALIZADA COM SUCESSO\n")
								lugaresCinema(cinema, LUGARES)
								Util.aguarde(1300)
								limpa()
							//}

							//CASO FOR SELECIONADO A OPCAO NAO
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
					   					leia(nome_cliente)
			
										escreva("CPF do estudante:\n")
										leia(cpf_cliente)
					   						
										limpa()
					   					escreva("É estudante IFRS?\nSIM\t OU\t NAO\n")

					   					//VERIFICAR O FACA DA RESPOSTA POIS ESTÁ DANDO ERRADO
					   					faca{
					   						leia(respostaIFRS)
					   					}enquanto(respostaIFRS != "SIM" e respostaIFRS != "NAO")

					   					
					   					se(respostaIFRS == "SIM" ){
					   						logRespostaIF = verdadeiro
					   						escreva("Valor do ingresso:\n")
					   						escreva("R$",calcIngressoEstudante(valorIngresso, logRespostaIF))
					   						total_faturado[1] = calcIngressoEstudante(valorIngresso, logRespostaIF)

					   						
					   					}
					   					se(respostaIFRS == "NAO"){
					   						logRespostaIF = falso
					   						calcIngressoEstudante(valorIngresso, logRespostaIF)
					   						total_faturado[1] = calcIngressoEstudante(valorIngresso, logRespostaIF)

					   					}
					   					
										
										
										lugaresCinema(cinema, LUGARES)
										escreva("Informe o lugare que deseja:\n")
										teste_lugar= falso
										faca{
											leia(lugarEscolhido)
											para(l=0;l<LUGARES;l++){
												para(c=0;c<LUGARES;c++){
													se(lugarEscolhido== cinema[l][c]){
														teste_lugar = verdadeiro
													}
												}
											}
										}enquanto(nao teste_lugar)
										selecionaLugaresCompraIngresso(cinema, LUGARES, lugarEscolhido)
										
										pare
	   		
		   			}
		   }
		   			
		   			pare
		   	//DEVOLUÇÃO COMPRA
		   	caso 2:

		   		escolha(menuDevolucaoIngresso()){

		   			//DEVOLUCAO DE INTEIRO
		   			caso 1:

		   					limpa()
							
					   		
					   		lugaresCinema(cinema,LUGARES)
					   		escreva("Quantos ingressos deseja devolver?\n")
					   		leia(qnt_dev)
					   		limpa()
					   		lugaresCinema(cinema, LUGARES)

							devolucaoValorIngressoInteira(qnt_dev, valorIngresso , total_faturado, 0)
					   		
					   		para(i=0;i<qnt_dev;i++){
					   		
					   			escreva ("Digite o acento que deseja devolver: \n")
					   			leia(dev_compra)
					   		
					   			devolucaoCompra(cinema, copiacinema, LUGARES, dev_compra)
					   			lugaresCinema(cinema, LUGARES)
					   			
					   			Util.aguarde(1300)
					   			limpa()
					   		}
										
					   				pare
					//DEVOLUCAO DE MEIA
		   			caso 2:
						     limpa()
							escreva("O estudante é do IFRS:\nSIM ou NAO?\n")
							leia(resp_cliente)
							se(resp_cliente == "SIM"){
								log_resp_cliente_dev = verdadeiro	
							}
					   		lugaresCinema(cinema,LUGARES)
					   		escreva("Quantos ingressos deseja devolver?\n")
					   		leia(qnt_dev)
					   		limpa()
					   		lugaresCinema(cinema, LUGARES)

					   		//FUNCAO DEVOLUCAO INGRESSO
					   		devolucaoValorIngressoMeia(qnt_dev, valorIngresso , log_resp_cliente_dev, total_faturado,2)
					   		para(i=0;i<qnt_dev;i++){
					   		
					   			escreva ("Digite o acento que deseja devolver: \ntestee")
					   			leia(dev_compra)
					   		
					   			devolucaoCompra(cinema, copiacinema, LUGARES, dev_compra)
					   			lugaresCinema(cinema, LUGARES)
					   			
					   			Util.aguarde(1300)
					   			limpa()
					   		}
					   		

						
		   			 pare
		   		}
		   		
		   		
		   		pare

		   	caso 3:
		   		apresentacaoRelatorio(total_faturado, VET_FAT_TAM)
				pare
			caso 4:
				limpa()
				lugaresCinema(cinema, LUGARES)
				escreva("AGUARDE IRÁ RETORNAR AO MENU...")
				Util.aguarde(5000)
			 	limpa()
				
			}
		}enquanto(respMenu!= 5) // ENQUANTO DO FACA 1
	}		

	   
	
	//FUNÇÕES	

	//VERIFICADO FUNCIONANDO
	funcao  devolucaoValorIngressoInteira(inteiro qtd_dev , real valorIngresso , real total_faturado[] , inteiro posicaoVet){
		real calc = qtd_dev * valorIngresso
		total_faturado[posicaoVet] = total_faturado[posicaoVet] - calc
			
	}

	//VERIFICAR
	funcao  devolucaoValorIngressoMeia(inteiro qtd_dev , real valorIngresso, logico estudaIF , real total_faturado[] , inteiro posicaoVet){
		real calc = 0.0 , porcentagem_unit_ingresso = 0.0
		
		se(estudaIF){
		
		porcentagem_unit_ingresso =  valorIngresso * 0.20
		
		calc = (valorIngresso * qtd_dev) 
		//POSiccaoo 1 é do estudantee
		total_faturado[posicaoVet] = total_faturado[posicaoVet] - calc
		
		}
		se(estudaIF){
			calc = valorIngresso * qtd_dev -(valorIngresso * 0.10)
			total_faturado[posicaoVet] = total_faturado[posicaoVet] - calc
			
		}
		
		
	}
	
	//RELATORIO FATURAMENTO INTEIRA
	funcao real calcIngressosInteira(real valorIngresso, inteiro quantidadeComprada){
		retorne valorIngresso * quantidadeComprada 
	}
	
	funcao real calcIngressoEstudante(real valorIngresso, logico estudaIF){
		//ESTUDANTE IRÁ TER 20% DE DESCONTO SE FOR DO IF OS DEMAIS  10%
		real calc = 0.0
		se(estudaIF){
			calc = valorIngresso - (valorIngresso * 0.20)
			retorne calc
		}
		se(nao estudaIF){
			calc = valorIngresso - (valorIngresso * 0.10)
			retorne calc
		}
		
		retorne calc
	}

	
	funcao inteiro menuApresentacao(){
		   inteiro selecaoUser
		   escreva("Cinema do TADS\n")
		   escreva("Selecione uma opção para continuar\n")
		   escreva("-------------------------------------------------------\n")
		   escreva("1 - COMPRAR INGRESSO\n")
		   escreva("2 - DEVOLUÇÃO DO INGRESSO\n")
		   escreva("3 - FATURAMENTO CINEMA\n")
		   escreva("4 - SESSÃO\n")
		   escreva("5 - SAIR\n")
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
		faca{
		leia(selecaoCompraIngresso)
		}enquanto(selecaoCompraIngresso !=1 e selecaoCompraIngresso !=2 )
		retorne selecaoCompraIngresso
	}
	funcao inteiro menuDevolucaoIngresso(){
		inteiro selecaoCompraIngresso
		escreva("-------------------------------------------------------\n")
		escreva("--------------DEVOLUÇÃO DE INGRESSO----------------\n")
		escreva("-------------------------------------------------------\n")
		escreva("1 - INTEIRA\n")
		escreva("2 - MEIA\n")
		escreva("Selecione uma opcao para continuar\n")
		faca{
		leia(selecaoCompraIngresso)
		}enquanto(selecaoCompraIngresso !=1 e selecaoCompraIngresso !=2 )
		retorne selecaoCompraIngresso
	}
	
	funcao inteiro menuClienteMeia(){
		inteiro selecaoUser
		escreva("-------------------------------------------------------\n")
		escreva("-------------------------------------------------------\n")
		escreva("1 - ESTUDANTE\n")
		//escreva("2 - IDOSO\n")
		escreva("Selecione uma opcao para continuar\n")
		escreva("-------------------------------------------------------\n")
		escreva("-------------------------------------------------------\n")
		faca{
		leia(selecaoUser)
		}enquanto(selecaoUser != 1 e selecaoUser != 2)
		retorne selecaoUser
	}


	
	// PROCEDIMEMTOS
	funcao selecionaLugaresCompraIngresso(cadeia matriz[][], inteiro lugares, cadeia escolhaCliente){
		para(inteiro i = 0 ; i < lugares ; i++){
			para(inteiro k = 0 ; k < lugares ; k++){
				se(matriz[i][k]==escolhaCliente){
						matriz[i][k] = "X"	 		
					}
					
				}
			}		
		}

	funcao devolucaoCompra(cadeia matriz[][], cadeia copiaCinema[][], inteiro lugares, cadeia cadeiraDevolvida){
		para(inteiro i = 0 ; i < lugares ; i++){
			para(inteiro k = 0 ; k < lugares ; k++){
				
				se(copiaCinema[i][k] == cadeiraDevolvida){
					matriz[i][k] = copiaCinema[i][k]
				}
			}
		}		
	}
		
	
	funcao lugaresCinema(cadeia matriz[][], inteiro lugares){
		para(inteiro i = 0 ; i < lugares ; i++){
			escreva("\n\t")
			para(inteiro k = 0 ; k < lugares ; k++){
				escreva(matriz[i][k],"\t")
			}
			escreva("\n")
		}
		
		escreva("\t----------------------------------\n")
		escreva("\t-----------TELA DO CINEMA---------\n")
		escreva("\t----------------------------------\n")
	}

	funcao apresentacaoRelatorio(real total_faturado[], inteiro tamVet){
		limpa()
		para(inteiro i = 0 ; i < tamVet ; i++){
			se(i == 0){escreva("TOTAL DE VENDAS INTEIRA\n", total_faturado[0], "\n")}
			se(i == 1){escreva("TOTAL DE VENDAS ESTUDANTE\n",total_faturado[1],"\n")}
		}	
			escreva("AGUARDE IRÁ RETORNAR AO MENU...")
			Util.aguarde(5000)
			limpa()
	}

	

}
