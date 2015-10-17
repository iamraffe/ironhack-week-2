class Car
	def initialize(noise, engine)
		@noise = noise
		@engine = engine
	end

	def make_noise
		puts "#{@noise} #{@engine.make_noise}"
	end
end

class Vehicle
	def initialize(noise, wheels)
		@wheels = wheels
	end
end

class Engine
	def initialize(noise)
		@noise = noise
	end

	def make_noise
		@noise
	end
end

class SadEngine
	def initialize(noise)
		@noise = noise
	end

	def make_noise
		"#{@noise} #{@noise}"
	end
end

class RandomEngine 
	def initialize(random_noises = ["Vrum", "chipaow", "slat pat"])
		@noise = random_noises
	end

	def make_noise
		@noise.sample
	end
end


# car = Car.new("Broom", Engine.new("fishum"))
# sad_car = Car.new("mimimimimi", SadEngine.new("*cryes*"))
# random_car = Car.new("I'm so random, try me", RandomEngine.new(["pshhh", "splat"]))
# car.make_noise

# sad_car.make_noise

# random_car.make_noise