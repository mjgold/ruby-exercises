# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
	shortest = list.first
	list.each do |current_str|
		if current_str.length < shortest.length
			shortest = current_str
		end
	end

	shortest
end

if __FILE__ == $0
  p shortest_string(["a","zzzz","c"]) == "a"
  p shortest_string(["hello","goodbye","hola"]) == "hola"
  p shortest_string(["a","b","c"]) == "a"
  p shortest_string(["a"]) == "a"
  p shortest_string(["hello"]) == "hello"
  p shortest_string(["supercalafragilicious","superawesome","super"]) == "super"
  p shortest_string([""]) == ""
end
