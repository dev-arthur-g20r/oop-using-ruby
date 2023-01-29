class Person
	attr_accessor :firstName # Enable read and write (write from outside class mostly main program)
	@@population = 0 # Class variable - Can only be modified in the class

	def initialize(firstName, lastName)
		@firstName = firstName # Instance variable - Instance's own property
		@lastName = lastName
		@@population += 1
	end

	# Instance method
	def greet
		puts "Hi! I am #{@firstName} #{@lastName}"
	end

	# Class method - Can be called by `Person.showNumberOfPeople`
	def self.showNumberOfPeople 
		puts "We now have #{@@population} people."
	end
end

# Inheritance - Child class `Employee` inherits from base/parent class `Person`.
class Employee < Person
	def initialize(firstName, lastName, position)
		super(firstName, lastName)
		@position = position
	end

	def greet(salary)
		puts "Good day! I am #{@firstName} #{@lastName} and I am working as #{@position}. I earn $#{salary} per month."
	end
end

arthur = Employee.new("Arthur", "Ramos", "iOS Developer") # Creation of new instance
arthur.firstName = "Arthur Tristan"
arthur.greet(30000)

louise = Person.new("Louise John", "Soria")
louise.greet

Person.showNumberOfPeople