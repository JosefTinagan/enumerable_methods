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
		x = 0
		while x < self.length
				y = self.index(self[x])
				yield(self[x],y)
		x += 1
		end
		return self
	end

	def my_select
		
	end
end



