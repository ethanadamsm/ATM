require_relative "account"
require_relative "consoleadapter"

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
console = ConsoleAdapter.new(account)
console.update


