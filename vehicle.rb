class Vehicle
	attr_reader :wheels, :noise

	def initialize(noise, wheels)
		@noise = noise
		@wheels = wheels
	end

	def make_noise
		puts @noise
	end
end

class Counter
	# def initialize(vehicles)
	# 	@vehicles = vehicles
	# end

	def count_wheels(vehicles)
		total_wheels = vehicles.reduce(0) do |sum, vehicle|
			sum+vehicle.wheels
		end
		total_wheels
	end
end

class NoiseMaker
	def make_noise(vehicles)
		puts vehicles.map{ |v| v.noise}.join(', ')
		vehicles.each do |vehicle|
			puts vehicle.noise
		end
	end
end

vehicle = Vehicle.new("Broom", 4)
other_vehicle = Vehicle.new("Splat", 8)
counter = Counter.new

puts counter.count_wheels([vehicle, other_vehicle])

noise_maker = NoiseMaker.new

noise_maker.make_noise([vehicle, other_vehicle])


