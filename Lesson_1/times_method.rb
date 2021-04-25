#method implementation
def times(number)
  counter = 0
  while counter < number do
    yield(counter) #'jumps' to block; which just outputs number
    counter += 1
  end

  number #return the original method argument
end


#method invocation
times(5) do |num|
  puts num
end