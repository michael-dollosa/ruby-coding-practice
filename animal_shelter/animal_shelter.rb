# Animal Shelter

# An animal shelter, which holds only dogs and cats, operates on a strictly"first in, first out" basis. People must adopt either the"oldest" (based on arrival time) of all animals at the shelter, or they can select whether they would prefer a dog or a cat (and will receive the oldest animal of that type). They cannot select which specific animal they would like. Create the data structures to maintain this system and implement operations such as enqueue, dequeue_any, dequeue_dog, and dequeue_cat.

# FIFO
class Queue

  def initialize
    @animals = []
    @count = 0
  end

  def enqueue(type,animal)
    # unshift
    @animals.unshift([@count, type.downcase, animal])
    @count+=1
  end

  def dequeue_any
    #pop
    @animals.pop
  end

  def dequeue_dog
    #pop
    @animals.reverse.each do |arr|
      @deleted = []
      if arr[1] == "dog"
        @deleted = arr
        @animals.delete(arr)
        break
      end
    end
    @deleted
  end

  def dequeue_cat
    #pop
    @deleted = []
    @animals.reverse.each do |arr|
      if arr[1] == "cat"
        @deleted = arr
        @animals.delete(arr)
        break
      end
    end
    @deleted
  end

  def show
    p @animals
  end

  def length
    @animals.length
  end

end