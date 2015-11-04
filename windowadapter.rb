require_relative "adapter"
require_relative "window"
require_relative "button"
require "gosu"

class	WindowAdapter < Adapter

	def initialize
		@background = Gosu::Image.new("display/background.png")
		@window = Window.new(@background)
		@window.show
		@buttons = Button.new(20, 20, 20, 20)
	end

	# def update
	# 	@window.draw(@background, @buttons)
	# end

end