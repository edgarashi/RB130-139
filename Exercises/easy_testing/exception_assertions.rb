# Write a minitest assertion that will fail unless
# employee.hire raises a NoExperienceError exception.

assert_raises(NoExperienceError) {employee.hire}

#alternate syntax, see block
assert_raises(NoExperienceError) do
  empoyee.hire
end