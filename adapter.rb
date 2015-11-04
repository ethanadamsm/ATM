require_relative "account"

class Adapter

	def initialize
		@account = account = Account.new(name, pin)
	end 

	def get_name
		@account.get_name
	end

	def get_pin
		@account.get_pin
	end

	def get_balance
		@account.get_amount
	end

	def withdraw(amount)
		@account.withdraw(amount)
	end

	def exit
		@account.exit
	end

end