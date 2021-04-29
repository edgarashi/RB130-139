require 'minitest/autorun'

require_relative 'first_test'

class CarTest < MiniTest::Test
  def test_raise_initialize_with_arg
    assert_raises(ArgumentError) do
      car = Car.new(name: "Joey")
    end
  end
end