require 'spec_helper'
require 'enumerable_methods'

describe "EnumerableMethods" do

	it "my_each enumerable method test" do
		param = [1,2,3].my_each do |x|
				puts x
			end
		expect(param).to eq [1,2,3]
	end

	it "my_each_with_index enumerable method test" do
		param = [1,2,3].my_each_with_index do |x,y|
				puts "#{x} : #{y}"
			end	
		expect(param).to eq [1,2,3]	
	end

	it "my_select enumerable method test" do
		param = [1,2,3].my_select do |x|
				x >= 2
		end
		expect(param).to eq [2,3]
	end
end