.text


lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,24 #altura
addi $18,$0,9 #largura
addi $19,$0,8960# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4

j main #faz com que o  codigo come�e a ser executado a partido da label main
#-------------------------------------------------fun�ao para desenhar o poligono-----------------------------------#

desenhar_retangulo:  #calculo para quebra de linha
		   lui $8,0x1001 #endere�o inicial de posicao 
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
#------------------------------------------------------fimfun�ao para desenha poligono-----------------------------#	

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
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xEEEE00 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 504 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xCD96CD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 756 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF5DEB3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 5 #largura
addi $19,$0, 1004 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xAEEEEE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 1252 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xAEEEEE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 1264 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xAEEEEE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 1272 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x7AC5CD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 5 #largura
addi $19,$0, 1516 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xCD96CD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 1780 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
jr $31


main: jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,12 #altura
addi $18,$0,2 #largura
addi $19,$0,12068# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0, 9 #largura
addi $19,$0, 8448 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0, 8 #largura
addi $19,$0, 8580 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0, 12 #largura
addi $19,$0, 8400 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,7 #altura
addi $18,$0,2 #largura
addi $19,$0,13356# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
 	
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,3 #altura
addi $18,$0,2 #largura
addi $19,$0,14388# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,7 #altura
addi $18,$0, 8 #largura
addi $19,$0,14388# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
 	
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 7 #altura
addi $18,$0, 10 #largura
addi $19,$0,13392# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 7 #altura
addi $18,$0, 8 #largura
addi $19,$0,12116# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3 #altura
addi $18,$0, 4 #largura
addi $19,$0,14448# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo



lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  20 #altura
addi $18,$0, 10 #largura
addi $19,$0, 10368 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  7 #altura
addi $18,$0, 8 #largura
addi $19,$0, 9092 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  13 #altura
addi $18,$0, 4#largura
addi $19,$0, 11932 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  13 #altura
addi $18,$0, 7 #largura
addi $19,$0, 14504 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  13 #altura
addi $18,$0, 4 #largura
addi $19,$0, 13252 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  15 #altura
addi $18,$0, 4 #largura
addi $19,$0, 11464 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  26 #altura
addi $18,$0, 12 #largura
addi $19,$0, 8912 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo



#Primeira arma, canto esquerdo 
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7940 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7952 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8200 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8208 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 3#largura
addi $19,$0, 7688 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x90EE90 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7436 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7184 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 6932 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#----------------------------------------------------------------------------------------------------
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,2 #altura
addi $18,$0,1 #largura
addi $19,$0, 13880# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 2 #largura
addi $19,$0, 13888# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#Bolha bot�o-----------------------------------------------

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDEB887 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11856# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDEB887 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11892# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11600# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11348# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11096# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 10844# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 10592# posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 10856 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11116 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11376 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11636 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 6 #largura
addi $19,$0, 11864 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF0E68C #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 4 #largura
addi $19,$0, 11612 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDDA0DD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 11360 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#-------------------------------------------------------------------------------------
#Arma central
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xADD8E6 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3 #altura
addi $18,$0, 6 #largura
addi $19,$0, 7816 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7560 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7568 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7580 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFD700 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 8 #largura
addi $19,$0, 7300 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 4 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6280 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 4 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6300 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 4 #altura
addi $18,$0, 2 #largura
addi $19,$0, 6288 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6540 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFA07A #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 6552 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xDB7093 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 5776 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#--------------------------------------------------------------------------------------
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x6495ED #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 7 #largura
addi $19,$0, 11948 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3#altura
addi $18,$0, 1 #largura
addi $19,$0, 11184 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 3#altura
addi $18,$0, 1 #largura
addi $19,$0, 11200 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 11448 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11180 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11204 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xEE82EE #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11192 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 10936 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 10928 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 10944 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 11432 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 12204 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2 #altura
addi $18,$0, 1 #largura
addi $19,$0, 12216 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1#altura
addi $18,$0, 1 #largura
addi $19,$0, 12228 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2#altura
addi $18,$0, 1 #largura
addi $19,$0, 12208 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xFFFACD #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 2#altura
addi $18,$0, 1 #largura
addi $19,$0, 12224 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

#Arma canto direito
lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8160 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x228B22 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 8168 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7900 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x20B2AA #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0, 1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7912 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xBA55D3 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 3#largura
addi $19,$0, 7648 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0x90EE90 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 1 #largura
addi $19,$0, 7396 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 7132 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo

lui $8,0x1001 #endere�o inicial de posicao
addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,  1 #altura
addi $18,$0, 2 #largura
addi $19,$0, 6872 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo



addi $17,$0,5 #altura
	addi $18,$0,216 #largura
	
	addi $19,$0,15104 #aonde come�a o retangulo
	addi $10,$0,0x8FBC8F #verde limao : cor dos pixels do poligono
 	jal desenhar_retangulo
addi $26,$0,0
addi $27,$0, 28
addi $19,$0, 6940 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
forAtira: beq $26,$27, fimForAtira
	
	lui $8,0x1001 #endere�o inicial de posicao
	addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	jal intervalo
	
	lui $8,0x1001 #endere�o inicial de posicao
	addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	sub $19, $19, 252
	addi $26,$26,1
	j forAtira
fimForAtira: nop
addi $26,$0,0
addi $27,$0, 28
addi $19,$0, 6868 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
forAtiraEsquerda: beq $26,$27, fimForAtiraEsquerda
	
	lui $8,0x1001 #endere�o inicial de posicao
	addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	jal intervalo
	
	lui $8,0x1001 #endere�o inicial de posicao
	addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	sub $19, $19, 260
	addi $26,$26,1
	j forAtiraEsquerda
fimForAtiraEsquerda: nop
addi $26,$0,0
addi $27,$0, 28
addi $19,$0, 5264 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
forAtiraCima: beq $26,$27, fimForAtiraCima
	
	lui $8,0x1001 #endere�o inicial de posicao
	addi $10,$0,0xF4A460 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	jal intervalo
	
	lui $8,0x1001 #endere�o inicial de posicao
	addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
	addi $16,$0,0 #j
	addi $17,$0,  1 #altura
	addi $18,$0, 1 #largura
	add $19,$0, $19 # posi�ao do pixel em que come�a a ser desenhado(a partir da extremidade esquerda)
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

