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

#------------------------------------INTERVALO--------------------------------------------------------
intervalo: addi $28, $0, 0
	addi $29, $0, 100000
forIntervalo: beq $29, $28, sairForI
		nop
		addi $28,$28, 1
		j forIntervalo
sairForI: jr $31
#----------------------------------Nave----------------------
desenhaNave: 
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xEEEE00 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 504 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xCD96CD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 756 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF5DEB3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 5 #largura
addi $19,$0, 1004 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xAEEEEE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 1252 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xAEEEEE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 1264 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xAEEEEE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 1272 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x7AC5CD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 5 #largura
addi $19,$0, 1516 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xCD96CD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 1780 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
jr $31


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
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0, 9 #largura
addi $19,$0, 8448 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0, 8 #largura
addi $19,$0, 8580 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0, 12 #largura
addi $19,$0, 8400 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
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
addi $18,$0, 8 #largura
addi $19,$0,14388# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
 	
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 7 #altura
addi $18,$0, 10 #largura
addi $19,$0,13392# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 7 #altura
addi $18,$0, 8 #largura
addi $19,$0,12116# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3 #altura
addi $18,$0, 4 #largura
addi $19,$0,14448# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo



lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  20 #altura
addi $18,$0, 10 #largura
addi $19,$0, 10368 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  7 #altura
addi $18,$0, 8 #largura
addi $19,$0, 9092 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  13 #altura
addi $18,$0, 4#largura
addi $19,$0, 11932 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  13 #altura
addi $18,$0, 7 #largura
addi $19,$0, 14504 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  13 #altura
addi $18,$0, 4 #largura
addi $19,$0, 13252 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  15 #altura
addi $18,$0, 4 #largura
addi $19,$0, 11464 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  26 #altura
addi $18,$0, 12 #largura
addi $19,$0, 8912 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo



#Primeira arma, canto esquerdo 
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7940 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7952 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8200 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8208 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 3#largura
addi $19,$0, 7688 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x90EE90 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7436 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7184 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 6932 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#----------------------------------------------------------------------------------------------------
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0,1 #largura
addi $19,$0, 13880# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 2 #largura
addi $19,$0, 13888# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#Bolha botão-----------------------------------------------

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDEB887 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11856# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDEB887 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11892# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11600# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11348# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11096# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 10844# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 10592# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 10856 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11116 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11376 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11636 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 6 #largura
addi $19,$0, 11864 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF0E68C #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 4 #largura
addi $19,$0, 11612 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDDA0DD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 11360 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#-------------------------------------------------------------------------------------
#Arma central
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3 #altura
addi $18,$0, 6 #largura
addi $19,$0, 7816 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7560 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7568 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7580 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFD700 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 8 #largura
addi $19,$0, 7300 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 4 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6280 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 4 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6300 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 4 #altura
addi $18,$0, 2 #largura
addi $19,$0, 6288 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6540 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6552 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 5776 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#--------------------------------------------------------------------------------------
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x6495ED #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 7 #largura
addi $19,$0, 11948 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3#altura
addi $18,$0, 1 #largura
addi $19,$0, 11184 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3#altura
addi $18,$0, 1 #largura
addi $19,$0, 11200 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11448 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11180 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11204 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xEE82EE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11192 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 10936 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 10928 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 10944 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11432 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 12204 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 12216 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 12228 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2#altura
addi $18,$0, 1 #largura
addi $19,$0, 12208 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2#altura
addi $18,$0, 1 #largura
addi $19,$0, 12224 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

#Arma canto direito
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8160 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8168 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7900 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7912 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 3#largura
addi $19,$0, 7648 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0x90EE90 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7396 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7132 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 6872 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo



addi $17,$0,5 #altura
	addi $18,$0,216 #largura
	
	addi $19,$0,15104 #aonde começa o retangulo
	addi $10,$0,0x8FBC8F #verde limao : cor dos pixels do poligono
 	jal desenhar_retangulo
addi $26,$0,0
addi $27,$0, 28
addi $19,$0, 6940 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
forAtira: beq $26,$27, fimForAtira
	
	lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	jal intervalo
	
	lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	sub $19, $19, 252
	addi $26,$26,1
	j forAtira
fimForAtira: nop
addi $26,$0,0
addi $27,$0, 28
addi $19,$0, 6868 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
forAtiraEsquerda: beq $26,$27, fimForAtiraEsquerda
	
	lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	jal intervalo
	
	lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	sub $19, $19, 260
	addi $26,$26,1
	j forAtiraEsquerda
fimForAtiraEsquerda: nop
addi $26,$0,0
addi $27,$0, 28
addi $19,$0, 5264 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
forAtiraCima: beq $26,$27, fimForAtiraCima
	
	lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	jal intervalo
	
	lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	sub $19, $19, 256
	addi $26,$26,1
	j forAtiraCima
fimForAtiraCima: nop
 	#----------------------------------------------------
	jal desenhaNave

forAndaEsquerda: 
 	
 	
end:nop

