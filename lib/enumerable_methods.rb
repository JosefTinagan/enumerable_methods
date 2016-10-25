module Enumerable

	def my_each
		return self unless block_given?
		x = 0
		while x < self.length
				yield(self[x])
		x += 1
		end
		return self
	end

	def my_each_with_index
		return self unless block_given?
		x = 0
		while x < self.length
				y = self.index(self[x])
				yield(self[x],y)
		x += 1
		end
		return self
	end

	def my_select
		return self unless block_given?
		x = 0
		new_arr = []
		while x < self.length
				val = yield(self[x])
				if val
					new_arr.push(self[x])
				end
				
		x += 1
		end
		return new_arr
	end

	def my_any?
		return true unless block_given?
		x = 0
		condition = false

		while x < self.length
			if yield(self[x])
				condition = true
			end
		x += 1
		end

		return condition
	end

	def my_all?
		return true unless block_given?
		x = 0
		while x < self.length
			if yield(self[x])

			else
				return false
			end
			x += 1
		end
		return true
	end

	def my_none?
		return true unless block_given?
		x = 0
		while x < self.length
			if yield(self[x])
				return false
			end
		x += 1
		end
		return true
	end

	def my_count(num = nil) 
		if !block_given? && num == nil
			return self.length
		elsif !block_given? && num != nil
			x = 0
			objects_found = 0
			while x < self.length
				if self[x] == num
					objects_found += 1
				end
			x += 1
			end
			return objects_found
		else
			x = 0
			objects_found = 0
			while x < self.length
				val = yield(self[x])
				if val
					objects_found += 1
				end
			x += 1
			end

			return objects_found
		end
	end
end



