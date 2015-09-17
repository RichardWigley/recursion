require 'byebug'

def palindrome?(word)
  return true if word.nil? || word.length == 1

  word[0] == word[-1] && palindrome?(word[1..-2])
end
