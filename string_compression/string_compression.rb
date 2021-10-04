# String Compression

# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the
# "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def string_compression(str)
  #remove non alphanumeric char
  word = str.gsub(/[^0-9a-z ]/i, '')
  # store prev letter
  prev_letter = ""
  # arr for result
  word_arr = ""

  #logic
  word.chars.each do |letter|
    # add "char1" whenever it's a new letter
    word_arr.concat("#{letter}1") if prev_letter != letter && letter != " "
    # since the last string is always a digit, increment by 1 if prev_letter is equals to letter, then overwrite (using bang)
    word_arr.next! if prev_letter == letter && letter != " "
    # save prev_letter for comparison for next iteration
    prev_letter = letter
  end
  
  # return
  puts "compressed: #{is_compressed}, original: #{str.length}, compressed: #{word_arr.length}"
  str.length < word_arr.length ? str : word_arr
end
