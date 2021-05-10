#Write a minitest assertion that will fail if the value.odd? is not true.

require 'minitest/autorun'

assert value.odd?, 'value is not odd'
assert_equal true, value.odd?
