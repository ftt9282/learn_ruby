def add(num1, num2)
	return num1 + num2
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(num_array)
	total = 0
	num_array.each do |num|
		total += num
	end
	return total
end

def multiply(num1, num2, *other_numbers)
	sum = num1 * num2
	if other_numbers.length > 0
		other_numbers.each do |num|
			sum = sum * num
		end
	end
	return sum
end

def power(num1, num2)
	return num1**num2
end

def factorial(num)
	if num != 0
		total = 1
		num.times do |number|
			total = total * (number+1)
		end
	else
		total = 0
	end
	return total
end