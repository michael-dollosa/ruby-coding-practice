require_relative './substring.rb'

describe 'Check repeated substring' do
  #should return compressed string
  it "should return true" do expect(is_substring_repeated('abab')).to eq(true) end
  it "should return true" do expect(is_substring_repeated('aba')).to eq(false) end
  it "should return true" do expect(is_substring_repeated('abcabcabcabc')).to eq(true) end   
end
