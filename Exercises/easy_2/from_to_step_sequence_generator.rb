=begin
The Range#step method lets you iterate over a range of values
where each value in the iteration is the previous value plus
a "step" value. It returns the original range.

Write a method that does the same thing as Range#step,
but does not operate on a range. Instead, your method
should take 3 arguments: the starting value, the ending value,
and the step value to be applied to each iteration.
Your method should also take a block to which it will yield
(or call) successive iteration values
=end

def step(start_num, end_num, step)
  loop do
    start_num += 3
    start_num
    yield(start_num)
    break if start_num >= end_num
  end
  start_num
end


p step(1, 10, 3) { |value| puts "value = #{value}" }
=begin
value = 1
value = 4
value = 7
value = 10
=end
