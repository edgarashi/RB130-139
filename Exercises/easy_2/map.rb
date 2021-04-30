#Your method may use #each, #each_with_object, #each_with_index,
#inject, loop, for, while, or until to iterate
#through the Array passed in as an argument,
#but must not use any other methods that iterate through
#an Array or any other collection.

def map(arr)
  arr.each_with_object([]) do |value, result|
    result << yield(value)
  end
end


p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]