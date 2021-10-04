require_relative './string_compression.rb'

describe 'Palindrome Permutations' do
  #should return compressed string
  it "should return original string" do expect(string_compression('hello world')).to eq("hello world") end
  it "should return compressed string" do expect(string_compression('aabcccccaaa')).to eq("a2b1c5a3") end
    it "should return compressed string" do expect(string_compression('AAAaaabbBBBccCCC')).to eq("A3a3b2B3c2C3") end
  it "should return original string" do expect(string_compression('aasiqwmn, mssssasdddd')).to eq("aasiqwmn, mssssasdddd") end
  #should return original string
  it "should return original string" do expect(string_compression('abcde')).to eq("abcde") end
  it "should return original string" do expect(string_compression('abc de fg')).to eq("abc de fg") end
end
