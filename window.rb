require "gosu"

class Window < Gosu::Window

	def initialize(background, buttons)
		super 640, 480
		@background = background
		@buttons = buttons
	end

	def draw
		@background.draw(0, 0, 0)
		@buttons.each do |n|
			n.draw
		end
	end

end