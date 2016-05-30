# stack means that the most recent added item will be the first one removed.
# while queing means that the last item added will be the last item to be removed

class Stack
  attr_accessor :array
  attr_accessor :array2

  def initialize(array, array2)
    @array = array
    @array2 = array
  end

  def add
    @array.unshift(@array2[0])
  end

  def remove
    @array.shift(1)
  end
end

class Queue
  attr_accessor :array3
  attr_accessor :array4

  def initialize(array3, array4)
    @array3 = array3
    @array4 = array4
  end

  def add
    @array3.push(@array4[0])
  end

  def remove
    @array3.shift(1)
  end
end
