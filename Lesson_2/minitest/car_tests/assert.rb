require 'minitest/autorun'

require_relative 'first_test'

class CarTest < MiniTest::Test
  def test_car_exists
    car = Car.new
    assert(car)
  end
end