####Verilog Block Statements
	Block of code works together.

	Two types
	Sequential
		A block of code executes sequentially.
		Starts with 'begin' and end with 'end'.
	Parallel
		A parallel block can execute statements concurrently.
		Must be embeded between 'fork' and 'join'.

Note:'Go' has concurrency feature. Two concepts related?

##Implementation
	forkJoin.v

####Verilog Assignment
	There are three types of assignment.

	Continuous
		assign
	Procedural
		always, initial, task, functions
	Continuous procedural
		Assignment doen't have a duration. Hold value until next assignment.

		assign, deassign. //for reg only 
		force, release. //for net and reg

##Implementation
	assignForce.v

####Verilog Blocking and Nonblocking
	 = is used to block.
	 <= is used to not block.

##Implementation
	block.v

####Verilog Control Block
	if-else-if
	Just like C. 
	
	for
	Like C.

	forever
	Infinite loop.

	repeat
	Repeat blocks n times.

	while
	Like C.

	case
	Like C.

Note: Procedural blocks must be inside always or initial.
Concurrent blocks assign, generate and module instance don't need always or initial.

##Implementation
	ifelse.v
	forever.v
	repeat.v
	while.v
	for.v
	case.v

####Verilog Conditional Statement
	<variable> = <condition> ? <expression_1> : <expression_2>;
	
####Functions
	Like C.

	Constraints:
	A function cannot contain any time-controlled statements like #, @, wait, posedge, negedge
	A function cannot start a task because it may consume simulation time, but can call other functions
	A function should have atleast one input
	A function cannot have non-blocking assignments or force-release or assign-deassign
	A function cannot have any triggers
	A function cannot have an output or inout

##Implementation
	function.v

####Verilo Tasks
	What functions can't do, tasks can.
	Task is general version of function.

##Implementation
	task.v

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
