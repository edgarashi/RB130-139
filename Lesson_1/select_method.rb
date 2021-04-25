#Write a select method that mirrors the behavior of Array#select.
#Note that the Array#select method takes a block,
#then yields each element to the block.
#If the block evaluates to true, the current element will be included
#in the returned array. If the block evaluates to false,
#the current element will not be included in the returned array.

#Examples:
# array = [1, 2, 3, 4, 5]

# array.select { |num| num.odd? }       # => [1, 3, 5]
# array.select { |num| puts num }       # => [], because "puts num" returns nil and evaluates to false
# array.select { |num| num + 1 }        # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true

#method implementation
def select(arr)
  counter = 0
  result = []
  while counter < arr.size do
    if yield(arr[counter]) #'jumps' to block; which just outputs number
      result << arr[counter]
    end
    counter += 1
  end

  result #return the original method argument
end



array = [1, 2, 3, 4, 5]
#method invocation
p select(array) { |num| num.odd? }      # => [1, 3, 5]
p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true