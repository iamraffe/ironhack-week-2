class Car
	def initialize(noise, storage = "default.txt")
		@noise = noise
		@storage = storage
		# @cities_visited = []
	end

	def make_noise
		puts @noise
	end

	def make_noise_twice
		2.times {make_noise}
	end

	def self.make_noise_twice(car)
		2.times {car.make_noise}
	end

	def visit(city)
		# @cities_visited.push(city)
		File.open(@storage, 'a') { |f| f.write("#{city}\n") }
	end

	def view_visited_cities
		#puts @cities_visited
		puts IO.read(@storage);
	end
end

# class City
# 	def initialize(name)
# 		@name = name
# 	end
# end

class RacingCar < Car
	def make_noise
		puts @noise.upcase
	end
end

noisy_car = Car.new("BROOOOOOM!!!!!!PiuPiuPiu!!!!!BROOOOOOM", "noisy.txt")
sleepy_car = RacingCar.new("ZzZzZzZ", "sleepy.txt")

# noisy_car.make_noise
# car.make_noise
# Car.make_noise_twice(car)
# sleepy_car.make_noise_twice

# sleepy_car.make_noise

sleepy_car.visit("Seattle")
sleepy_car.visit("New York")

sleepy_car.view_visited_cities