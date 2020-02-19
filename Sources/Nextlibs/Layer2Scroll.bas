#include <nextlib.bas>
border 0

dim frame,mx,my,yy,xx,count,f as ubyte 
dim offset as fixed 
DIM add as fixed=1.799

LoadBMP("spiral.bmp")
ShowLayer2(1)			' ON 

' lets scroll layer2
xx=2 : x = xx
do 

for id = 0 to 255
		
		yy=peek(@sinpos+cast(uinteger,offset))
		xx=peek(@sinposb+cast(uinteger,offset))<<1
		ScrollLayer(xx,yy)
		if offset+add<254 : offset=offset+add : else : offset=0 : endif 
		pause 1
		
next id 

loop 


end   

sinpos:
	asm
db 50,48,47,46,45,43,42,41,40,39,37,36,35,34,33,31
db 30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15
db 14,13,12,12,11,10,9,9,8,7,7,6,5,5,4,4
db 3,3,2,2,2,1,1,1,0,0,0,0,0,0,0,0
db 0,0,0,0,0,0,0,0,1,1,1,1,2,2,3,3
db 3,4,4,5,6,6,7,7,8,9,10,10,11,12,13,14
db 14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30
db 31,32,33,34,36,37,38,39,40,42,43,44,45,46,48,49
db 50,51,53,54,55,56,57,59,60,61,62,63,65,66,67,68
db 69,70,72,73,74,75,76,77,78,79,80,81,82,83,84,85
db 85,86,87,88,89,89,90,91,92,92,93,93,94,95,95,96
db 96,96,97,97,98,98,98,98,99,99,99,99,99,99,99,99
db 99,99,99,99,99,99,99,99,98,98,98,97,97,97,96,96
db 95,95,94,94,93,92,92,91,90,90,89,88,87,87,86,85
db 84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69
db 68,66,65,64,63,62,60,59,58,57,56,54,53,52,51,50

	end asm
	
sinposb:
	asm
db 0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,3
db 3,4,4,5,5,6,7,7,8,9,9,10,11,12,13,13
db 14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29
db 31,32,33,34,35,36,38,39,40,41,42,44,45,46,47,49
db 50,51,52,53,55,56,57,58,60,61,62,63,64,66,67,68
db 69,70,71,72,73,74,76,77,78,79,80,81,82,82,83,84
db 85,86,87,88,88,89,90,91,91,92,93,93,94,94,95,95
db 96,96,97,97,98,98,98,98,99,99,99,99,99,99,99,99
db 99,99,99,99,99,99,99,99,98,98,98,98,97,97,96,96
db 95,95,94,94,93,93,92,91,91,90,89,88,88,87,86,85
db 84,83,82,82,81,80,79,78,77,76,75,73,72,71,70,69
db 68,67,66,64,63,62,61,60,58,57,56,55,53,52,51,50
db 49,47,46,45,44,42,41,40,39,38,36,35,34,33,32,31
db 29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14
db 13,13,12,11,10,9,9,8,7,7,6,5,5,4,4,3
db 3,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0

	end asm
     