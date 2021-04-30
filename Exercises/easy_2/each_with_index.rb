# Your method may use #each, #each_with_object, #inject, loop, for,
# while, or until to iterate through the Array passed in as an
# argument, but must not use any other methods that iterate
# through an Array or any other collection.

def each_with_index(arr)
  index = 0
  loop do
    yield(arr[index], index)
    index += 1
    break if index == arr.size
  end
  arr
end


result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

=begin
0 -> 1
1 -> 3
2 -> 36
true
=end