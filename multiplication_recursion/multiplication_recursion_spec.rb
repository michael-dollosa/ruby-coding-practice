require_relative './multiplication_recursion.rb'

describe 'Multiplication Recursion' do
  it "should return 6" do expect(multiply(2,3)).to eq(6) end
  it "should return 9" do expect(multiply(3,3)).to eq(9) end
  it "should return 40" do expect(multiply(8,5)).to eq(40) end
  it "should return 60" do expect(multiply(6,10)).to eq(60) end
end
