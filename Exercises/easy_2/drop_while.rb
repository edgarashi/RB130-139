#Your method may use #each, #each_with_object, #each_with_index,
#inject, loop, for, while, or until to iterate through the
#Array passed in as an argument, but must not use any other
#methods that iterate through an Array or any other collection.

def drop_while(arr)
  index = 0
  arr.each do |value|
    if !yield(value)
      index = arr.index(value)
      return arr[index..-1]
    end
  end
  return []
end


p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []