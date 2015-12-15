#Problem # 1 Multiples of 3 and 5

def multiples(number)
   
	sums = 0
	i= 0

 loop do
     i += 1
	 if i % 3 == 0 || i % 5 == 0  
	 	sums += i	 	
	 end
	 break if i == number-1
  end
  puts "#{number} cleanly divided by 3 & 5, and thusly summed is #{sums}. Woohah indeed."
end
#multiples(1000)

# Problem #2, Even Fibonacci numbers. Fn = Fn-1 + Fn-2

def fibbernacho(number)
	
	primer = [0,1,1]
	n= 0
	evensum = 0
while n <=100 && primer.last < 5000000
	primer << (primer.last + primer[-2])
	primer.last
		if primer.last % 2 == 0
   		 evensum += primer.last
		end
	n+=1
	end
	puts "The sum of all even Fibbonacci numbers in the sequence up to #{number} is #{evensum}"
	puts "The value chain: #{primer.inspect}"
end

 #fibbernacho(4000000)

#Problem #3, Largest prime factor

def primo_factor(number)	

	result =[]

	while number != 1
		for i in 2..10000
			if number % i == 0 && number > 1
				result << i
				number = number/i			
	
	 		end
		end
	end
	puts "The largest prime factor of #{number} is #{result.inspect}. Congrats!"

end

#Problem #4, Largest Pallindrome Product
	
def pallindromic(digits)

	array1 = []
	array2 = [] 
	xout = []
	yout = []
	outs =[]
	result = percentage = number_of_digits = 0

	number_of_digits = Math.log10(digits).to_i + 1 	
    dlength = (10**digits.to_s.length)-1 
	percentage = (0.85*dlength).to_i
	
	array1 =* (percentage..dlength)
	array2 = array1
	array1.each do |x|
		array2.each do |y|
			 test = x*y
			 if test.to_s === test.to_s.reverse
			     outs <<  test
			     xout << x
			     yout << y
			 end
		end
	end
   	
  puts "The largest palindrome made from the product of two #{number_of_digits}-digit numbers is #{outs.last.to_s} = #{xout[-1]} x #{yout[-1]}" 
end

		#pallindromic(13350)


#Problem #5, Smallest Multiple
#Not able to sovle

# Not mine ==> (1..20).inject(:lcm) or until / .all?
#num = 20
  #until (11..20).all?{ |i| num % i == 0 }
   # num +=20
  #end

#puts num

#Problem 6, Sum square difference

def square_sum_diff(range)

	rArray =* (1..range)
	sum_squares = rArray.inject(0) {|sum, x| sum + x**2}	
	square_of_sum = (rArray.inject(0) {|a,b| a+b})**2
	vive_le_differance = square_of_sum - sum_squares

	puts "the difference of square of sum  minus the sum of squares is #{square_of_sum} - #{sum_squares} is: #{vive_le_differance} "
end

square_sum_diff(100)


		
		




