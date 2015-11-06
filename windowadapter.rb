require_relative "adapter"
require_relative "window"
require_relative "button"
require "gosu"

class	WindowAdapter < Adapter

	def initialize
		@background = Gosu::Image.new("display/background.png")
		@buttons = []
		@buttons.push(Button.new(20, 20, 100, 100, "Withdraw"))
		@window = Window.new(@background, @buttons)
		@window.show
	end

end