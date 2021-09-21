# Index of Alphabet

# Make a method that that accepts an integer and returns the equivalent based on the index in the Alphabet

# - 1 returns A
# - 20 returns T
# - 1000 returns ALL
# - 26 returns Z
# - 100 returns CV

# What do you need to provide?

# - method that satisfies the requirements
# - tests to cover the method, written in RSpec


def index_of_alphabet(num)
  # create hash for alphabets with corresponding value assuming only using capital letters
  alphabet_hash = Hash.new
  result = []
  ("A".."Z").each_with_index do |letter, index|
    alphabet_hash[letter] = index+1
  end

  #return if one letter alphabet
  if num < 27
    puts alphabet_hash.key(num)
    return alphabet_hash.key(num)
  end

  x = num
  while x > 26
    tail = x%26
    x = x/26
    
    
    result << alphabet_hash.key(tail)
    result << alphabet_hash.key(x) if x < 26
  end
  puts "#{result.reverse.join}"
  result.reverse.join
end

