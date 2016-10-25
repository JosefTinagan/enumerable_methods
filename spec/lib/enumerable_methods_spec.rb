require 'spec_helper'
require 'enumerable_methods'

describe "EnumerableMethods" do

	context "my_each method" do
		it "integer test" do
			param = [1,2,3].my_each do |x|
					puts x
				end
			expect(param).to eq [1,2,3]
		end

		it "different types test" do
			param = ["a",:blue,3].my_each do |x|
					puts x
				end
			expect(param).to eq ["a",:blue,3]

		end
	end

	context "my_each_with_index method test" do
		it "integer test" do
			param = [1,2,3].my_each_with_index do |x,y|
					puts "#{x} : #{y}"
				end	
			expect(param).to eq [1,2,3]	
		end

		it "string test" do
			param = ["a","c","backse"].my_each_with_index do |x,y|
					puts "#{x}'s index is #{y}"
			end
			expect(param).to eq ["a","c","backse"]
		end
	end

	context "my_select method test" do
		it "integer test" do
			param = [1,2,3].my_select do |x|
					x >= 2
			end
			expect(param).to eq [2,3]
		end

		it "string test" do
			param = ["bad","boy","coi","abe"].my_select do |x|
				x =~ /a/
			end
			expect(param).to eq ["bad","abe"]
		end
	end

	context "my_any? method test" do
		it "integer test" do
			param = [1,5,100].my_any? do |x|
				 x > 50
			end
			expect(param).to eq true
		end

		it "string test" do
			param = ["a","beth","six"].my_any? do |x|
				x =~ /sixe/
			end
			expect(param).to eq false
		end
	end

	context "my_all? method test" do
		it "integer test" do 
			param = [5,10,15].my_all? do |x|
				x % 5 == 0
			end
			expect(param).to eq true
		end
		
		it "string test" do
			param = ["ave","abe","arve"].my_all? do |x|
				x =~ /a/
			end
			expect(param).to eq true
		end
	end

	context "my_none? method test" do
		it "integer test" do

		end

		it "string test" 

	end

	context "my_count method test" do
		it "integer test"

		it "string test"

	end

	context "my_map method test" do
		it "integer test"

		it "string test"

		it "taking a proc test"

		it "taking either a proc or block test"
	end

	context "my_inject method test" do
		it "integer test"

		it "string test"

		it "with multiply_els method"
	end
end