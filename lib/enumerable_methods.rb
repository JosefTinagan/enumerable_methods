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
		x = 0
		new_arr = []
		while x < self.length
				val = yield(self[x])
				if val
					new_arr.push(self[x])
				end
				
		x+= 1
		end
		return new_arr
	end
end



