require_relative './one_away.rb'

describe 'One Away' do
  it "should return true" do expect(one_away('pale', 'ple')).to eq(true) end
  it "should return true" do expect(one_away('pales', 'pale')).to eq(true) end
  it "should return true" do expect(one_away('pale', 'bale')).to eq(true) end
  it "should return true" do expect(one_away('pale', 'bake')).to eq(false) end

  #addtl tests
  it "should return true" do expect(one_away('pale', 'pale')).to eq(true) end
  it "should return true" do expect(one_away('pale', 'plae')).to eq(false) end
end
