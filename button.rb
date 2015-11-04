require "gosu"

class Button

	def initialize(x, y, w, h)
		@x = x
		@y = y
		@w = w
		@h = h
		@image = Gosu::Image.new("display/button.png")
	end

	def draw
		@image.draw(@x, @y, 1, 20 / @w, 20 / @h)
	end

end