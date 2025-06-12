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
	for.v
	forever.v
	repeat.v
	while.v
	case.v

####Verilog Conditional Statement
	<variable> = <condition> ? <expression_1> : <expression_2>;
	
####Functions
	Almost like C.

	A function can not:
		have any time-controlled statements like #, @, wait, posedge, negedge
		start a task
		have zero input
		have non-blocking assignments or force-release or assign-deassign
		have any triggers
		have an output or inout

##Implementation
	function.v

####Verilo Tasks
	What functions can't do, tasks can.
	Task is general version of function.
	A task can be automatic by invocating automatic.

	Tasks can be disabled using the disable keyword.

##Implementation
	task.v
	triggerInTask.v

####Verilog Parameters
	Like constants in C.
	parameter name = value;

	3 types of parameters.
	Module
		Can be modified in function instance.
	Local
		Can't be modified in function instance.
		But can express it with other var, then the var can change.
	Specify
		specify
			//code
		endspecify

Note: Don't understand specify.

##Implements
	parameters.v
	specify.v

####Verilog Delay Control
	Delay(direct time delay)
		Discussed later in this file.
	Event control.
		posedge, negedge	
		Custom control can be set by named events.
		The sensitivity list @(list) can be used to for force delay.
		Level sensitive event control wait can also be used here.

##Implementation
	eventcontrol.v
	namedevents.v
	wait.v

####Inter Or Intra Delay
	Inter-assignment delay
	#<delay> <LHS> = <RHS>
	Intra-assignment delay
	<LHS> = #<delay> <RHS>

##Implementation
	delaycontrol.v
	
####Verilog Hierarchial Reference Scope
	To avoid scope collision like C.

Note: I think currently I'm at the surface level of Verilog to understand such subtle idea. May be, I will focus here later.

Last Update: 12 July, 2025
