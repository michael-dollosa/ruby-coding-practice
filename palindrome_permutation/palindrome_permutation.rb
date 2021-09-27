# Palindrome Permutation

# Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

# Palindromes have each character appear an even number of times when its length is an even number. If a palindrome contains an odd number of characters, only one character will appear an odd number of times.

def palindrome_permutation(str)
  #remove non alphanumeric char
  word = str.gsub(/[^0-9a-z ]/i, '')
  word_hash = Hash.new(0)
  word.downcase.each_char { |letter| word_hash[letter.to_sym] += 1 if letter != ' '}
  
  #check if each value of key is even or at most one key is odd
  odd_char_count = 0
  word_hash.each { |key, val| odd_char_count += 1 if val % 2 != 0 }
  puts "#{word_hash}"
  #palindrome have 1 or 0 odd char count
  odd_char_count < 2 ? true : false
end
