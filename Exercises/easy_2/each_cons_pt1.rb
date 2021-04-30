=begin
Your method may use #each, #each_with_object, #each_with_index,
#inject, loop, for, while, or until to iterate through the
Array passed in as an argument, but must not use any other
methods that iterate through an Array or any other collection.
=end

def each_cons(arr)
  arr.each_with_index do |value, index|
    if !arr[index + 1].nil?
      yield(value, arr[index+1])
    end
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil