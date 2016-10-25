module Enumerable

	def my_each
		x = 0
		while x < self.length
				yield(self[x])
		x += 1
		end
		return self
	end

	def my_each_with_index

	end
end



