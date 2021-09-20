# require 'spec_helper'
require_relative '../index_of_alphabet/index_of_alphabet.rb'

describe 'Index of Alphabet' do
  it "should return A" do expect(index_of_alphabet(1)).to eq("A") end
  it "should return T" do expect(index_of_alphabet(20)).to eq("T") end
  it "should return ALL" do expect(index_of_alphabet(1000)).to eq("ALL") end
  it "should return Z" do expect(index_of_alphabet(26)).to eq("Z") end
  it "should return CV" do expect(index_of_alphabet(100)).to eq("CV") end
end

# puts "#{index_of_alphabet(1)}"
# puts "#{index_of_alphabet(20)}"
# puts "#{index_of_alphabet(26)}"
# puts "#{index_of_alphabet(100)}"
# puts "#{index_of_alphabet(1000)}"

# - 1 returns A
# - 20 returns T
# - 1000 returns ALL
# - 26 returns Z
# - 100 returns CV