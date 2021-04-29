require 'minitest/autorun'

require_relative 'first_test'

class CarTest < MiniTest:: Test
  def test_includes_car
    car = Car.new
    arr = [1, 2, 3]
    arr << car

    assert_includes(arr, car)
  end
  #assert_includes calls assert_equal in its implementation
  #minitest counts this as a seperate assertion.
  #for each assert_includes call, you will get 2 assertions,
  #not 1
end