####System Tasks and Functions
	$random = generate random numbers.
	$stop = pause code execution.
	$finish = finish code execution.
	$display = display arguments with retrun
	$write = display arguments without return 
	$monitor = monitors changes.

Note: will come back later here soon...

##Implementation
	random.v

####Verilog Math Functions
	$clog2()
	$ln()
	$sin()
	$tan()
	and so on...

####Verilog Timescale Scope
	$printtimescale(modulename)

####Verilog File I/O Operation
	function_name(file,operation)

##Code Implementation
	fd=$fopen("file_name","w")
	It indicates weare opening a file to write on it.
	$fclose(fd)
	It closes fd indicated file.
	$fdisplay(fd,text)
	It writes text in the file.

##Implementation
	file.v

####Verilog Command Line Arguments
	$test$plusargs //takes cli arguments
	$value$plusargs //takes cli arguments, numbers
##Implementation
	cli.v
