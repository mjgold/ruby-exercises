# Method name: print_triangle
# Input: a number n
# Returns: Nothing
# Prints: a right triangle consisting of "*" characters that is "n" characters tall
#
# For example, print_triangle(4) should print
#
# *
# **
# ***
# ****

# The print_line method is here to help you.
# Conceptually, it prints out a row of "count" *'s.  Run it yourself to
# see how it works.  Experiment with different inputs.
def print_line(count)
  (1..count).each do |i|
    print "*"         # This prints a single "*"
  end

  print "\n"          # This forces the output to the next like, like hitting "return" on the keyboard
end

# Print a triangle. Defaults to ascending (smallest on top). Can be set to descending.
def print_triangle(height, order="asc")
  if order == "asc" || order != "desc"
    (1..height).each do |i|
      print_line(i)
    end
  elsif order == "desc"
    i = height
    while i > 0 
      print_line(i)
      i -= 1
    end  
  end
end

# There are no rumble strips this time.  It's up to you to decide whether
# this is working as intended or not.

if __FILE__ == $0
  print_triangle(1, "asc")

  print "\n\n\n" # This is here just to make the separation between triangles clearer

  print_triangle(2, "asc")

  print "\n\n\n" # This is here just to make the separation between triangles clearer

  print_triangle(3, "asc")

  print "\n\n\n" # This is here just to make the separation between triangles clearer

  print_triangle(10, "asc")
end
