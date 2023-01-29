class Calculator
	def initialize(firstNumber, secondNumber)
		@firstNumber = firstNumber
		@secondNumber = secondNumber
	end

	def add
		@firstNumber + @secondNumber
	end

	def subtract
		@firstNumber - @secondNumber
	end

	def multiply
		@firstNumber * @secondNumber
	end

	def divide
		@firstNumber / @secondNumber
	end
end

print "First Number = "
# `gets` - gets the user input
# `chomp()` - strips extra whitespaces and newlines
# `to_f` - Converts from string to float
firstNumber = gets.chomp().to_f
print "Arithmetic Operator (+ - * /): "
arithmeticOperator = gets.chomp()
print "Second Number = "
secondNumber = gets.chomp().to_f
calculator = Calculator.new(firstNumber, secondNumber)

if arithmeticOperator == "+"
	puts "#{calculator.add}"
elsif arithmeticOperator == "-"
	puts "#{calculator.subtract}"
elsif arithmeticOperator == "*"
	puts "#{calculator.multiply}"
elsif arithmeticOperator == "/"
	puts "#{calculator.divide}"
else 
	puts "Invalid operator! Please try again."
end 