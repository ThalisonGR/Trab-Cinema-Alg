programa
{
	inclua biblioteca Util	
	
	
	funcao inicio()
	{
	 
		// VARIAVEIS UTILIZADAS NO MENU DO CLIENTE INTEIRA
		const real valorIngresso = 50.00
		// VARIAVEIS UTILIZADAS NO MENU DO CLIENTE INTEIRA
		inteiro qtdIngresso = 0, qnt_dev, ingresso_meia=0
		cadeia lugarEscolhido, cpf_cliente ,nome_cliente, dev_compra 
		//VARIAVEIS CLIENTE MEIA
		cadeia  respostaIFRS, resp_cliente
		inteiro s_cliente, idade_cliente
		logico logRespostaIF = falso
		
		//VARIAVEIS DE MENUS
		// S = SELEÇÃO DE MENU
		inteiro s_do_menu,s_compra_ing, i

		const inteiro LUGARES = 5

		cadeia cinema[LUGARES][LUGARES] = {{"A1","A2","A3","A4","A5"},
		  							{"B1","B2","B3","B4","B5"},
		  							{"C1","C2","C3","C4","C5"},
		  							{"D1","D2","D3","D4","D5"},
		  							{"E1","E2","E3","E4","E5"}}
		  							
		cadeia armazenaCPF[LUGARES][LUGARES]={{"A1","A2","A3","A4","A5"},
		  							   {"B1","B2","B3","B4","B5"},
		  							   {"C1","C2","C3","C4","C5"},
		  							   {"D1","D2","D3","D4","D5"},
		  							   {"E1","E2","E3","E4","E5"}}
		  							   
		  cadeia copiacinema[LUGARES][LUGARES]={{"A1","A2","A3","A4","A5"},
		  							   {"B1","B2","B3","B4","B5"},
		  							   {"C1","C2","C3","C4","C5"},
		  							   {"D1","D2","D3","D4","D5"},
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
		   					leia(nome_cliente)

							escreva("Informe CPF do cliente:\n")
							leia(cpf_cliente)
		   						
							limpa()
		   					escreva("Valor do ingresso Inteira é:\nR$",valorIngresso,"\n")
							escreva("Informe quantidade de ingressos desejada: \n ")
							leia(qtdIngresso)

							//Apresentar o valor total dos ingressos (funcao calcIngresso)
							
								escreva("Deseja prosseguir com a compra?\n\nsim\tnao")
								leia(resp_cliente)
							se(resp_cliente == "sim"){
								escreva("\n")
								escreva("Total da compra:\n")
								escreva("R$",calcIngressos(valorIngresso, qtdIngresso),"\n")
								
							
							//Apresenta os lugares disponíveis no cinema
							escreva("Lugares disponives:\n")
							lugaresCinema(cinema, LUGARES)
								para(i = 0 ; i < qtdIngresso; i++){
									escreva("Informe o lugar solicitado:\n")
									leia(lugarEscolhido)
									selecionaLugaresCompraIngresso(cinema, LUGARES, lugarEscolhido)
								}
								
								selecionaLugaresCompraIngresso(cinema, LUGARES, lugarEscolhido)
							}
							
							escreva("VENDA REALIZADA COM SUCESSO\n")
							lugaresCinema(cinema, LUGARES)
							Util.aguarde(1300)
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
					   					escreva("Possui crachá campus IFRS?\n")

					   					//VERIFICAR O FACA DA RESPOSTA POIS ESTÁ DANDO ERRADO
					   					faca{
					   						leia(respostaIFRS)
					   					}enquanto(respostaIFRS != "S" e respostaIFRS != "N")

					   					
					   					se(respostaIFRS == "S" ){
					   						logRespostaIF = verdadeiro
					   						escreva("Valor do ingresso:\n")
					   						escreva("R$",calcIngressoEstudante(valorIngresso, logRespostaIF))

					   						
					   					}
					   					se(respostaIFRS == "N"){
					   						logRespostaIF = falso
					   						calcIngressoEstudante(valorIngresso, logRespostaIF)
					   					}
					   					
										
										limpa()
										lugaresCinema(cinema, LUGARES)
										escreva("Informe o lugare que deseja:\n")
										leia(lugarEscolhido)
										selecionaLugaresCompraIngresso(cinema, LUGARES, lugarEscolhido)
										}
										
										pare

									//IDOSO TERÁ 50% de desconto sempre
									caso 2:
										faca{
										escreva("Digite o nome do cliente ou 4 para voltar :")
										leia(nome_cliente)
										limpa()
										escreva("Digite a idade do cliente")
										leia(idade_cliente)
										se(idade_cliente>60){
										
										escreva("Digite o cpf do cliente: ")
										leia(cpf_cliente)
										
										calc_idoso(valorIngresso)
										escreva("O valor do ingresso é: ",ingresso_meia)
										
										lugaresCinema(cinema,LUGARES)
										escreva("Digite o acento desejado: ")
										leia(lugarEscolhido)
										selecionaLugaresCompraIngresso(cinema,LUGARES, lugarEscolhido)

										escreva("VENDA REALIZADA COM SUCESSO\n")
										lugaresCinema(cinema, LUGARES)
										Util.aguarde(1300)
										limpa()
										
										}
										senao{
											escreva("Cliente incopativel com a promoção!")
										}
										}enquanto(nome_cliente !="4")
										pare	   		
		   								
		   			pare
		   	//DEVOLUÇÃO COMPRA
		   	caso 2:
		   		lugaresCinema(cinema,LUGARES)
		   		escreva("Quantos ingressos deseja devolver?")
		   		leia(qnt_dev)
		   		limpa()
		   		para(i=0;i<qnt_dev;i++){
		   		
		   			escreva ("Digite o acento que deseja devolver: ")
		   			leia(dev_compra)
		   		
		   			devolucaoCompra(cinema, copiacinema, LUGARES, dev_compra)
		   			lugaresCinema(cinema, LUGARES)
		   			Util.aguarde(1300)
		   			limpa()
		   		}
		   		pare
		   		
				}
			}
		}enquanto(menuApresentacao() != 4) // ENQUANTO DO FACA 1

	}		   
	
	//FUNÇÕES	
	funcao real calcIngressos(real valorIngresso, inteiro quantidadeComprada){
		retorne valorIngresso * quantidadeComprada 
	}
	
	funcao real calcIngressoEstudante(real valorIngresso, logico estudaIF){
		//ESTUDANTE IRÁ TER 20% DE DESCONTO SE FOR DO IF OS DEMAIS  10%
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

	funcao real calc_idoso(real valorIngresso){
		real calc
		calc= valorIngresso- (valorIngresso * 0.50)
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
	funcao selecionaLugaresCompraIngresso(cadeia matriz[][], inteiro lugares, cadeia escolhaCliente){
		para(inteiro i = 0 ; i < lugares ; i++){
			para(inteiro k = 0 ; k < lugares ; k++){
				se(matriz[i][k] == escolhaCliente){
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
			para(inteiro k = 0 ; k < lugares ; k++){
				escreva(matriz[i][k],"\t")
			}
			escreva("\n")
		}
		
		escreva("----------------------------------\n")
		escreva("-----------TELA DO CINEMA---------\n")
		escreva("----------------------------------\n")
	}
	
	/*funcao saudacaoCliente(cadeia nomeCliente){
		escreva("Bem-Vindo Sr(a) ", nomeCliente , "\n\n")
		}
		*/

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8099; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */