//polymorphism

class base;
	virtual function void draw();
		$display("printing from child :drawing circle");
	endfunction
endclass

class child extends base;
	virtual function void draw();
		$display(" printing from child :drawing square");
	endfunction
endclass

module test;
	base b;
	child c;
	initial begin
		c=new();
		b=c;
		b.draw();
		
	end
endmodule 
