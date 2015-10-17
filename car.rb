class Car
	def initialize(noise, engine)
		@noise = noise
		@engine = engine
	end

	def make_noise
		puts "#{@noise} #{@engine.make_noise}"
	end
end

class Engine
	def make_noise
		"fishum fishum"
	end
end

class SadEngine
	def make_noise
		"*cryes*"
	end
end


car = Car.new("Broom", Engine.new)
sad_car = Car.new("mimimimimi", SadEngine.new)

# car.make_noise

sad_car.make_noise