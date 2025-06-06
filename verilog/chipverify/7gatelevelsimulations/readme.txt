####Gate Level Simulations
	RTL = checks the design’s behavior at a high level (before synthesis). Example: assign x=a&b;
	GLS = verifies the design after synthesis to ensure that synthesis hasn’t introduced any bugs, that the netlist matches the intended functionality, and that timing constraints are met. Example and(x,a,b)

##Code Implementation
	$setup
	//Checks if the difference between referece event time and data event time is greater or smaller than specified limit.
	$hold
	//It checks hold time violation.
	$setuphold
	//It is the combination of above mentioned two function.
	$recovery
	It checks recovery violation.
	Have to learn more... I will come back here soon.

##Implementation
		dff.v //d-flipflop

####Specify
	It begins with the specify keyword and ends with endspecify.	specparam declarations to define delays and timing parameters.
	Will comeback here soon. 




