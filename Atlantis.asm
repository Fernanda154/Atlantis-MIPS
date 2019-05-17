.text


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,24 #altura
addi $18,$0,9 #largura
addi $19,$0,8960# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4

j main #faz com que o  codigo começe a ser executado a partido da label main
#-------------------------------------------------funçao para desenhar o poligono-----------------------------------#

desenhar_retangulo:  #calculo para quebra de linha
		   lui $8,0x1001 #endereço inicial de posicao 
		   mult $18,$4
		   mflo $20
		   sub $20,$21,$20
		   add $8,$8,$19
		   
          for1: beq $15,$17,sair_desenhar_retangulo
		   addi $15,$15,1
		   addi $16,$0,0
		   for2:beq $16,$18,br
		        sw $10,0($8)
		        addi $8,$8,4
		        addi $16,$16,1
		        j for2
br:add $8,$8,$20
   j for1	        
sair_desenhar_retangulo:jr $31
#------------------------------------------------------fimfunçao para desenha poligono-----------------------------#	



main: jal desenhar_retangulo

 	
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,12 #altura
addi $18,$0,2 #largura
addi $19,$0,12068# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
 	 	
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,7 #altura
addi $18,$0,2 #largura
addi $19,$0,13356# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
 	
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,3 #altura
addi $18,$0,2 #largura
addi $19,$0,14388# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,7 #altura
addi $18,$0,1 #largura
addi $19,$0,14388# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
 	
 	
 	
 	#----------------------------------------------------
 	addi $17,$0,5 #altura
	addi $18,$0,216 #largura
	
	addi $19,$0,15104 #aonde começa o retangulo
	addi $10,$0,0x8FBC8F #verde limao : cor dos pixels do poligono
 	jal desenhar_retangulo
 	
 	
end:nop

