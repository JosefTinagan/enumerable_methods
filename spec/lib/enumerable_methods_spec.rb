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
		it "integer test [true]" do 
			param = [5,10,15].my_all? do |x|
				x % 5 == 0
			end
			expect(param).to eq true
		end

		it "integer test [false]" do
			param = [3,1,2].my_all? do |x|
				x % 2 == 0
			end
			expect(param).to eq false
		end		
		it "string test [true]" do
			param = ["ave","abe","arve"].my_all? do |x|
				x =~ /a/
			end
			expect(param).to eq true
		end

		it "string test [false]" do
			param = ["a","b","c"].my_all? do |x|
				x =~ /a/
			end
			expect(param).to eq  false
		end
	end

	context "my_none? method test" do
		it "integer test [true]" do
			param = [5,7,10].my_none? do |x|
				x % 3 == 0
			end
			expect(param).to eq true
		end

		it "integet test [false]" do
			param = [5,7,10].my_none? do |x|
				x % 5 == 0
			end
			expect(param).to eq false
		end

		it "string test [true]" do
			param = ["ab","tr","cb"].my_none? do |x|
				x =~ /v/
			end
			expect(param).to eq true
		end 
		it "string test [false]" do
			param = ["cola","soda","pepsi"].my_none? do |x|
				x =~ /soda/
			end
			expect(param).to eq false
		end

	end

	context "my_count method test" do
		it "my_count testing without block" do
			param = [1,2,3].my_count
			expect(param).to eq 3
		end

		it "my_count testing without block and with parameter" do
			param = [1,2,3].my_count(3)
			expect(param).to eq 1
		end
		it "integer test" do
			param = [1,1,1,2,1,3].my_count do |x|
				x == 1
			end
			expect(param).to eq 4
		end

		it "string test" do 
			param = ["ba","b","d","fuck"].my_count do |x|
				x =~ /[bd]/
			end
			expect(param).to eq 3
		end

	end

	context "my_map method test" do
		it "integer test" do 
			param = [1,2,3].my_map do |x|
				x * 2
			end
			expect(param).to eq [2,4,6]
		end

		it "string test" do
			param = ["a","b","c"].my_map do |x|
				x * 2
			end
			expect(param).to eq ["aa","bb","cc"]
		end

		it "taking a proc test" do
			my_proc = Proc.new do |x| x * 2 end
			param = [1,2,3].my_map(&my_proc)
			expect(param).to eq [2,4,6]

		end

		#it "taking either a proc or block test" do
		#	my_proc = Proc.new do |x| x * 2 end
		#	param = [1,2,3].my_map(&my_proc) do |x|
		#		puts x
		#	end
		#	expect(param).to eq "error"
		#end
	end

	context "my_inject method test" do
		it "integer test"

		it "string test"

		it "with multiply_els method"
	end
end