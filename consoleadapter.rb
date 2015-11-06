require_relative "adapter"
require_relative "account"

class ConsoleAdapter < Adapter

	def initialize
		name = nil
		pin = ""
		register = ""
		while name == nil 
			puts "What is your name"
			name = gets.chomp
		end
		while pin.length != 4 
			puts "Do you have a pin?"
			input = gets.chomp
			if input.downcase != "yes"
				while input.length != 4
					puts "Enter a new pin"
					input = gets.chomp
				end
				pin = input
				super(name, pin)
				add_account(name, pin)
				break 
			else
				puts "What is your pin?"
				pin = gets.chomp
				super(name, pin)
			end
		end
		update
	end

	def update
		while true 
			puts "What would you like to do today?

			1.Withdraw
			2.Deposit
			3.View balance
			4.Exit

		"
		input = gets.chomp
		case input 
			when "1" 
				amount = nil
				while amount == nil
					puts "How much would you like to withdraw?"
					amount = gets.chomp.to_i
					withdraw(amount)
				end 
			when "2"
				amount = nil
				while amount == nil
					puts "How much would you like to deposit?"
					amount = gets.chomp.to_i
					deposit(amount)
				end
			when "3"
				puts get_balance
			when  "4"
				exit
				break
		end
end

	end

end