'!sna "h:\plotl2.sna" -a
#include <nextlib.bas>

paper 0: border 0 : bright 0: ink 7 : cls 

NextReg($14,$0)  					' glbal transparency 
NextReg($40,$18)    			' Black paper transparency 
NextReg($41,$0)  					' paletting index 0 
NextReg($7,$2)  					' go 7mhz 

NextReg($15,%00100001)   ' Sprites, ULA SPR L2 	
NextReg($8,%01100000)   ' Sprites, ULA SPR L2 	

dim b,c,yy as ubyte

b=0 : c=0 : p=1

for x=0 to 512/2 
	yy=0
	for y=0 to 191 step 1
	'p=peek(@sindata+cast(uinteger,off))
		'c=255-yy*x/4<<p>>x/32
		'c=255-yy*x/2<<y/x>>x/32
     c=c+1
		PlotL2(cast(ubyte,x),cast(ubyte,y),cast(ubyte,c))
		yy=yy+1	
		if c=256 : c = 0: endif 
	next
	
	'if off<6 : off=off+1 : ELSE : off=0 : endif 
Next 

x=0

do
 x=x+63 
 y=y+1
 ScrollLayer(x,y)
 if y>191
	y=0
	endif 
 pause 2
loop 

sindata:
asm 
	db 1,2,4,4,2,1
end asm 

    