#method implementation
def reduce(arr, accumulator=0)
  counter = 0
  while counter < arr.size do
    accumulator = yield(accumulator, arr[counter]) #'jumps' to block; which just outputs number
    counter += 1
  end

 accumulator
end



#method invocation
array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass