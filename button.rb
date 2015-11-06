require "gosu"

class Button

	def initialize(x, y, w, h, text)
		@text = text
		@font = Gosu::Font.new(20)
		@x = x
		@y = y
		@w = w
		@h = h
		@image = Gosu::Image.new("display/button.png")
	end

	def draw
		@image.draw(@x, @y, 1, @w / 20, @h/ 20)
		@font.draw(@text, @x + (@w / 2), @y + (@h / 2), 1, 1, 0xff_ffffff)
	end

end