require 'minitest/autorun'

require_relative 'first_test'

class CarTest < MiniTest::Test
  def test_name_is_nil
    car = Car.new
    assert_nil(car.name)
  end

end