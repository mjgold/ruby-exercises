# Method name: word_count
# Input: A string representing an English sentence
# Returns: The number of words in the sentence
# Prints: Nothing
#
# Although it's more complicated in relaity, we'll just pretend
# that sequence of spaces in a sentence designates the start of a new word.
# That means we don't care about how many spaces are between two words, only
# that there is at least one.

def word_count(string)
  string_arr = string.split  
  string_arr.size 
end

if __FILE__ == $0
  p word_count("apple") == 1
  p word_count("123...321") == 1
  p word_count("one two three") == 3
  p word_count("This sentence has five words.") == 5
  p word_count("No-spaces-here") == 1
  p word_count("") == 0  # Empty string
  p word_count(" ") == 0 # A string consisting of a single space
  p word_count("   ") == 0 # A string consisting of multiple spaces
  p word_count("How many words is less clear-cut?") == 6
  p word_count("It's a case of 'he said, she said'.") == 8
  p word_count("  Hi, there!") == 2
  
  # It's probably worth having a few more sanity checks.
  # What are some input strings that might be tricky to handle?
  # How about where the answer to "How many words?" is less clear-cut?
end
