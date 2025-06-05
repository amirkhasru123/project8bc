####Verilog Block Statements
	Blocks of code works together.
	Two types.
	1.Sequential:
		A block of code executes sequentially.
		Starts with 'begin' and end with 'end'.
	Parallel:
		A parallel block can execute statements concurrently.
		Must be embeded between 'fork' and 'join'

Note: Programming language 'Go' does have concurrency imbeded in its core. Two concepts related???

##Implementation
	forkJoin.v

####Verilog Assignment
	Three types.
	1. Continuous
		assign can be used.
	2. Procedural:
		always, initial, task, functions
	3. Continuous procedural
		Assignment doen't have a duration. Hold value until next assignment.
		assign, deassign //for reg only 
		force, release.//for net and reg

####Verilog Blocking and Nonblocking
	1. = is used to block.
	2. <= is used to not block.

####Verilog Control Block
	if-else-if
	Just like C. 
	forever
	Infinite loop.
	repeat
	Repeat blocks n times.
	while
	Like C.
	for
	Like C.

##Implementation
	ifelse.v
	forever.v
	repeat.v
	while.v
	for.v

####Verilog For Loop
	Just like C... Yahoo......

####Verilo Case Statement

##Implementation
	case.v

####Verilog Conditional Statement
	<variable> = <condition> ? <expression_1> : <expression_2>;
	if-else
	case
	
####Verilog if-else-if
	Just like C.

####Functions
	Just like C.

##Implementation
	function.c

####Verilo Tasks
	Not understood properly.

####Verilog Parameters
	Like constants.

####Verilog Delay Control

##Code Implementation
	`timescale 1ns/1ps
	//Time scale precision
    #10;
	//Wait for 10 unit of time
	#(a)
	wait a unit of time
	$realtime
	shows realtime
	nogedge
	Negative edge of clk
	posedge
	Positive endge of clk
	wait
	will wait some unit of time
##Implementation
	delaycontrol.v
	eventcontrol.v
	namedevents.v
	wait.v

####Inter Or Intra Delay
	With the use of #.

####Verilog Hierarchial Reference Scope
	To avoid scope collision like C.
	Will learn later.
