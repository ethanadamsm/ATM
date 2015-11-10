require "gosu"

class Window < Gosu::Window

	def initialize(background, buttons)
		super 640, 480
		@background = background
		@buttons = buttons
		@buttons_draw = true
	end

	def draw
		@background.draw(0, 0, 0)
		if @buttons_draw
			@buttons.each do |n|
				n.draw
			end
		end
	end

	def update
		number = nil
		if button_down?(Gosu::MsLeft)
			(0...@buttons.length).each do |n|
				if @buttons[n].collide?(self.mouse_x, self.mouse_y)
					puts "collision"
					number = n
					@buttons_draw = false
					break
				end
			end
		end
	end

	def needs_cursor?
		true
	end

end