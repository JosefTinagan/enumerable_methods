require 'spec_helper'
require 'enumerable_methods'

describe "EnumerableMethods" do

	it "my_each enumerable method test" do
		param = [1,2,3].my_each do |x|
				puts x
			end
		expect(param).to eq [1,2,3]
	end
end