.data
	#exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...
	
	msg_qntd: .asciiz "Digite a quantidade de termos da série: "
	
	  


.text
j main


fibonacci: 
	#Variáveis contadoras
	li $s1, $zero
	li $s2, 1
	
	#Atribuir valores 0 e 1 para os dois primeiros termos da série
	li $t0, 0
	li $t1, 1
	
	#Armazena em $t2 o valor da soma entre $t1 e $t2 
	add $t2, $t1, $t0
	
	#Laço
	laco:
	beq $s1, $s0, fimlaco
	
	
	#voltar para a main
	fimlaco:
	jr $ra


main:
	#Imprimir a msg solicitando a quantidade de termos da série."
	li $v0, 4
	la $a0, msg_qntd
	syscall
	
	#Ler a quantidade digitada pelo usuário
	li $v0, 5
	syscall
	
	#Move o resultado para o registrador $s0
	move $s0, $v0
	
	
	#Chamar a função fibonacci
	jal fibonacci
