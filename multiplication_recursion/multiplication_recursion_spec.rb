require_relative './multiplication_recursion.rb'

describe 'Index of Alphabet' do
  it "should return 6" do expect(multiplication_recursion(2,3)).to eq(6) end
  it "should return 9" do expect(multiplication_recursion(3,3)).to eq(9) end
  it "should return 40" do expect(multiplication_recursion(8,5)).to eq(40) end
  it "should return 60" do expect(multiplication_recursion(6,10)).to eq(60) end
end
