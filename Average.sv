//Write an SV code to calculate the difference between the average of all the even numbers and 
//average of all the odd numbers in a dynamic array which contains some even and odd numbers at random locations.


module test;
	int a[]='{8,3,7,9,4,2,1};
	int even_sum=0;
	int odd_sum=0;
	int even_count=0;
	int odd_count=0;
	real even_avg;
	real odd_avg;
	real diff;
	
	initial begin
		foreach(a[i])
			begin
				if(a[i]%2==0)
					begin	
						even_sum+=a[i];
						even_count++;
					end
				else
					begin
						odd_sum+=a[i];
						odd_count++;
					end
			end
			
			even_avg=(even_sum !=0)?(real'(even_sum)/ even_count):0;
			odd_avg=(odd_sum !=0)?(real'(odd_sum)/ odd_count):0;
			
			/*if(even_sum!=0)
						even_avg= real'(even_sum)/even_count;
			if(odd_sum!=0)
					odd_avg=real'(odd_sum)/odd_count; */
					
			
			diff=odd_avg-even_avg;
			
			$display("Even Number Average :%0.2f",even_avg);
			$display("Odd Number Average :%0.2f",odd_avg);
			$display("Difference:%0.2f",diff);
	    end
		endmodule
		
			
