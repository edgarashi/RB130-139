def reduce(arr, default=arr[0])
  counter = 1
  accumulator = default
  while counter < arr.size do
    accumulator = yield(accumulator, arr[counter])#'jumps' to block; which just outputs number
    counter += 1
  end

 accumulator
end

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']