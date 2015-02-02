# Method name: bottles
# Inputs:      A number, n
# Returns:     Nothing
# Prints:      The text for "99 bottles", starting at the input number and
#              counting down to 1

# For example, bottles(99) should print...
#
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down, pass it around, 98 bottles of beer on the wall!
# 98 bottles of beer on the wall, 99 bottles of beer.
# Take one down, pass it around, 97 bottles of beer on the wall!
#
# ... and so on...
#
# 2 bottles of beer on the wall, 2 bottles of beer.
# Take one down, pass it around, 1 bottle of beer on the wall!
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take one down, pass it around, no more bottles of beer on the wall!

# NOTE NOTE NOTE
# This method should print out the correct form of "bottles".  That is,
# it should say
#   2 bottles
#   1 bottle
#   no more bottles
#   etc.

def bottles(start_number)
  start_number.downto(1) do |num_bottles|
    print_bottle_round(num_bottles)
  end
end

def print_bottle_round(num_bottles)
  puts "\
#{bottle_string(num_bottles)} of beer on the wall, \
#{bottle_string(num_bottles)} of beer.
Take one down, pass it around, \
#{bottle_string(num_bottles - 1)} of beer on the wall!\n\n"
end

def bottle_string(num_bottles)
  fail(ArgumentError, "Number of bottles should not be less than 0!, \
got #{num_bottles.inspect}") if num_bottles < 0

  case num_bottles
  when 1
    '1 bottle'
  when 0
    'no bottles'
  else
    "#{num_bottles} bottles"
  end
end

if __FILE__ == $PROGRAM_NAME
  bottles(5)
  # bottles(1) # Should only print one round
  # bottles(0) # Should print no rounds
  # bottles(-1) # Should print no rounds
end
