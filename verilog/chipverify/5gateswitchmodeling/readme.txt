####Gate Level Modeling 
	or (out, a, b, ...)
	and (out, a, b, ...)
	not (out, a)
	nor (out, a, b, ...)
	nand (out, a, b, ...)
	xor (out, a, b, ...)
	xnor (out, a, b, ...)

	//output = input
	buf (out, in) 
	//buff when control=1
	bufif1 (out, in, control) 
	//buff when control=0
	bufif0 (out, in, control)

	//not when control=1
	notif1 (out, in, control)	
	//not when control=0
	notif0 (out, in, control)

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

Note: So I'm ready to do some projects now.

####Verilog Gate Delay
	Rise delay = 1 from other state	
	Fall delay = 0 from other state
	Turn-off delay = z from other state
	
	3 types of delay.
	One delay
		#(delay)
	Two delay
		#(rise,fall)
	Three delay
		#(rise,fall,turn-off)	

	min:typ:max can be used to rise, fall, turn-off

##Implementation
	oneDelay.v
	twoDelay.v
	threeDelay.v

####Switch Level Implementation
	Rarely used by designers because higher level abstractions are easier to to use.

	pmos(out, vdd, pcontrol)
	nmos(out, gnd, ncontrol)
	cmos(out, gnd/vdd, ncontrol, pcontrol)

##Implementation
	pnmos.v
	cmos.v

####User-Defined Primitive
	When you don't have logic derived, you may have use truth table directly.

	0 Logic 0
	1 Logic 1
	x Unknown
	? Logic 0, 1 or x 
	- No change
	ab Change in value from a to b 
	* Same as ??
	r Same as 01 -> rising edge on input 
	f Same as 10 -> falling edge on input 
	p Potential positive edge on input
	n Potential falling edge on input

##Implementation
	andGate.v
	orGate.v

Last Update: 13 Jun, 2025
