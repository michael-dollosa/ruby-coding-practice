require_relative './search_insert_position.rb'

describe 'Search insert position' do
  #should return compressed string
  it "should return position" do expect(search_insert_position([1,3,5,6],5)).to eq(2) end
  it "should return position" do expect(search_insert_position([1,3,5,6],2)).to eq(1) end
  it "should return position" do expect(search_insert_position([1,3,5,6],7)).to eq(4) end
  it "should return position" do expect(search_insert_position([1,3,5,6],0)).to eq(0) end
  it "should return position" do expect(search_insert_position([1],0)).to eq(0) end
end
