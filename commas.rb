# Method name: commas
# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

# For example,
#
#  commas(123)     == "123"
#  commas(1234)    == "1,234"
#  commas(12345)   == "12,345"
#  commas(1234567) == "1,234,567"

# Note #1
# If it's too much, don't worry about handling negative numbers at first.

# Note #2
# As always, focus first on how you would do this *as a human*. Imagine you
# has a piece of paper with a comma-less number on it.  How would you decide to
# insert the commas?  Which comma would you insert first?

def commas(num)
  sign = num < 0 ? '-' : ''

  num_array = num.abs.to_s.split('.')
  integer_part = num_array[0].to_s
  fractional_part = num_array[1].nil? ? '' : '.' + num_array[1].to_s

  integer_part = integer_part.reverse.scan(/.{1,3}/)
  integer_part_with_commas = integer_part.join(',').reverse

  sign + integer_part_with_commas + fractional_part
end

if __FILE__ == $0
  puts commas(123) == '123'
  puts commas(1_234) == '1,234'
  puts commas(12_345) == '12,345'
  puts commas(1_234_567) == '1,234,567'

  puts commas(-123) == '-123'
  puts commas(-1_234) == '-1,234'
  puts commas(-12_345) == '-12,345'
  puts commas(-1_234_567) == '-1,234,567'

  puts commas(-123.25) == '-123.25'
  puts commas(-1_234.501) == '-1,234.501'
  puts commas(-12_345.7_502) == '-12,345.7502'

  puts commas(0) == '0'
end
