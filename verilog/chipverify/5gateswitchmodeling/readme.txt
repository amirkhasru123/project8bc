####Gate Level Modeling 
	or(out,a,b,...)
	and(out,a,b,...)
	not(out,a)
	nor(out,a,b,...)
	nand(out,a,b,...)
	xor(out,a,b,...)
	xnor(out,a,b,...)

	//output = input
	buf(out,in) 
	//Like buff but when control=1
	bufif1(out,in,control) 
	//Like buff but when control=0
	bufif0(out,in,control)

	//Like not when control=1
	notif1(out,in,control)	
	//Like not when control=0
	notif0(out,in,control)

#Implementation
	or.v
	and.v
	not.v
	nor.v
	nand.v
	xor.v
	xnor.v

	buf.v 
	bufif1.v 
	bufif1.v 

	notif1.v 
	notif0.v

####Switch Level Implementation
	Need to learn more. Come back later.

##Implementation
	pnmos.v
	cmos.v

####UDP(User Defined Primitive)
	Using truth table directly.

##Code Implementation
	primitive... endprimitive
	Declare a primitive block.
	table... endtable
	Declare a truth table.

##Implementation
	udp.v
