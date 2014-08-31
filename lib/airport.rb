#require 'lib/planes.rb'
require './lib/weather'
#['planes', 'weather'].each { |r| require r }
class Airport

include Weather

DEFAULT_CAPACITY = 40

	def initialize(capacity: DEFAULT_CAPACITY)
		@capacity = DEFAULT_CAPACITY
		#@airport_name = say_(airport_name)
	end

	def hangar
		@hangar ||= []
	end

	def land(plane)
		raise 'say -v Princess stormy weather man' if check_weather 
		raise 'say -v Princess No more place for you duddy' if full
		raise 'this plane is already in the hangar sir, wtf are you doing ?' if already_in_the_hangar(plane)
		hangar << plane
		plane.landed
	end

	def already_in_the_hangar(plane)
		hangar.include?(plane)
	end

	def take_off(plane)
		raise 'stormy weather man' if check_weather
		hangar.pop
		plane.in_the_air
		#hangar.delete(plane.in_the_air)
	end

	def all_together(hangar)
		raise 'stormy weather man' if check_weather
		hangar.select {|plane| plane.in_the_air }
		hangar.clear
	end

	def airplane_count
		hangar.count
	end

	def full
		airplane_count == DEFAULT_CAPACITY
	end

#private

#def airport_name
#	["Orly", "Charles de gaulle", "Charleroi", "bobby's airport"].sample
#end

#def say_(airport_name)
	#{}`say -v Princess #{airport_name}`
	#airport_name
#end

end
