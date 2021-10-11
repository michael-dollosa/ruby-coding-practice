require_relative './animal_shelter.rb'

describe 'Animal Shelter' do
  before(:all) do 
    @sample = Queue.new
  end

  it "should Insert in Queue" do 
    @sample.enqueue("dog", "hello")
    expect(@sample.length).to eq(1) #0 - oldest
  end

  it "should Insert in Queue" do 
    @sample.enqueue("cat", "hello") #1
    @sample.enqueue("cat", "hello2") #2
    @sample.enqueue("dog", "hello2") #3
    @sample.enqueue("dog", "hello3") #4
    @sample.enqueue("cat", "hello3") #5
    expect(@sample.length).to eq(6) 
  end

  it "should pop first inserted in Queue" do 
    # should dequeue the first dog
    expect(@sample.dequeue_any).to eq([0, "dog", "hello"]) 
  end

  it "should pop second inserted in Queue" do 
    # should dequeue the first cat
    expect(@sample.dequeue_any).to eq([1, "cat", "hello"]) 
  end

  it "should pop second inserted dog in Queue" do 
    # should dequeue the second inserted dog
    expect(@sample.dequeue_dog).to eq([3, "dog", "hello2"]) 
  end
  
  it "should pop second inserted cat in Queue" do 
    # should dequeue the second inserted dog
    expect(@sample.dequeue_cat).to eq([2, "cat", "hello2"]) 
  end

  it "should pop oldest inserted in Queue" do 
    # should dequeue the second inserted dog
    expect(@sample.dequeue_any).to eq([4, "dog", "hello3"]) 
  end

  it "should pop oldest inserted in Queue" do 
    # should dequeue the second inserted dog
    expect(@sample.dequeue_any).to eq([5, "cat", "hello3"]) 
  end

  it "should have empty array already" do 
    # should dequeue the second inserted dog
    expect(@sample.length).to eq(0) 
  end

end
