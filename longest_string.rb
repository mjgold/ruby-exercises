# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
# 
# Ties go to the earliest word in the list.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
	longest = list.first
	list.each do |current_str|
		if current_str.length > longest.length
			longest = current_str
		end
	end

	longest
end

if __FILE__ == $0
  p longest_string(["a","zzzz","c"]) == "zzzz"
  p longest_string(["hello","goodbye","hola"]) == "goodbye"
  p longest_string(["a","b","c"]) == "a"
  p longest_string(["a"]) == "a"
  p longest_string(["hello"]) == "hello"
  p longest_string(["supercalafragilicious","superawesome","super"]) == "supercalafragilicious"
  p longest_string([""]) == ""
end
