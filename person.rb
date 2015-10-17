class Person
	attr_reader :name, :age 

	def initialize(name, age)
		@name = name
		@age = age
	end

	def birthday
		@age+=1
	end
end

person = Person.new("Pepe Perez", 21)

# person.name = "rafa"
person.birthday
puts person.name
puts person.age