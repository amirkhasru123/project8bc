####Gate Level Simulation
	or(out,a,b,...)
	and(out,a,b,...)
	not(out,a)
	nor(out,a,b,...)
	nand(out,a,b,...)
	xor(out,a,b,...)
	xnor(out,a,b,...)

	buf u0(out, in) //output = input

//dind't know about functions mentioned below
	bufif1 u0(out, in, control)
	notif1 u0(out, in, control)	
	bufif0 u0(out, in, control)
	notif0 u0(out, in, control)

#Implementation
	or.v
	and.v
	not.v
	nor.v
	nand.v
	xor.v
	xnor.v

	buf.v

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
