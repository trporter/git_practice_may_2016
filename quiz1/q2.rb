# stack means that the most recent added item will be the first one removed.
# while queing means that the last item added will be the last item to be removed

class Stack
  array = []
  array2 = [1,2,3,4,5]
  def add
    array.unshift(array2[0])
  end

  def remove
    array.shift(1)
  end
end

class Queue
  array3 = []
  array4 = [6,7,8,9]
  def add
    array3.push(array4[0])
  end

  def remove
    array3.shift(1)
  end
end
