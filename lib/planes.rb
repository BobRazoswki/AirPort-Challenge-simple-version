class Plane

	def initialize
		in_the_air
		#@name = say_the_name(random_flight_names) 
	end

	def flying?
		@flying
	end

	def landed
		@flying = false
		self
	end

	def in_the_air
		@flying = true
		self
	end

	#private

	#def random_flight_names
		#["Flight number 368748, alias Bob", "Flight number 876346, alias Toan", "Flight number 098538, alias Nikesh"].sample
	#	flight_number = [].sample
	#	3.times { rand(1...10) } >> flight_number


	#def say_the_name(random_flight_names)
		#{}`say -v Princess #{random_flight_names}`
		#random_flight_names
	#end

end