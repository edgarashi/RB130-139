require 'minitest/autorun' #loads files from minitest gem

require_relative 'first_test' #specify file name from current director

class CarTest < MiniTest::Test #test class, must subclass from MiniTest::Test
  def test_wheels #instance method with "test_" need to make assertions
    car = Car.new
    assert_equal(4, car.wheels) #tests variable is indeed 4
    #1st value - expected value, 2nd is the test or actual value
  end
end