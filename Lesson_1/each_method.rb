def each(array)
  counter = 0

  while counter < array.size
    yield(array[counter]) #yield/jump to block wt current element
    counter += 1
  end

  array #returns 'array' parameter, similiar to how 'Array#each' returns the caller
end

# each([1, 2, 3, 4, 5]) do |num|
#   puts num
# end

p each([1, 2, 3, 4, 5]) {|num| "do nothing"}.select{ |num| num.odd?}