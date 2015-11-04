require_relative "adapter"

class ConsoleAdapter < Adapter

	def initialize(account)
		super(account)
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
			when "3"
				puts get_balance
			when  "4"
				exit
				break
		end
end

	end

end