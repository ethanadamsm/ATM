require "gosu"

class Window < Gosu::Window

	def initialize(background)
		super 640, 480
		@background = background
	end

	def draw()
		background.draw(0, 0, 0)
		buttons.each do |n|
			n.draw
		end
	end

end