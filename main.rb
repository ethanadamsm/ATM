require_relative "account"
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
		while register.length != 4
			puts "Enter a new pin"
			register = gets.chomp
		end
		pin = register
		break
	end
	puts "What is your pin?"
	pin = gets.chomp
end

account = Account.new(name, pin)

while true 
	puts "What would you like to do today?

		1.Withdraw
		2.Deposit
		4.View balance
		3.Exit

	"
	input = gets.chomp
	case input 
		when "1" 
			amount = nil
			while amount == nil
				puts "How much would you like to withdraw?"
				amount = gets.chomp.to_i
			end 
end

