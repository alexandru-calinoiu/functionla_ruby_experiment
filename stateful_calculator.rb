class StatefulCalculator
	def initialize
		@total = 0
	end

	def add(x)
		@total += x
		self
	end

	def div(x)
		@total /= x
		self
	end
	
	def result
		@total
	end
end