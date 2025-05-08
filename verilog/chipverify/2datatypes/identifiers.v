//Wanna run the code, just uncomment the lines

//module identifiers;
//	reg $amir=0; //syntax error will be shown
//	reg 1amir=1; //syntax error will be shown
//	reg amir=1;
//	reg Amir=0;
//	initial begin
//		$display("%b",$amir);
//		$display("%b",1amir);
//	end
//endmodule

module casesensitive;
	reg amir=1;
	reg Amir=0;
	initial begin
		$display("%b",amir);
		$display("%b",Amir);
		//amir & Amir will show differ output
	end
endmodule
