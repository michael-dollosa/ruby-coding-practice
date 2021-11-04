# Substring
# Given a string s, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
# Example 1:
# Input: s = "abab"
# Output: true
# Explanation: It is the substring "ab" twice
# Example 2:
# Input: s = "aba"
# Output: false
# Example 3:
# Input: s = "abcabcabcabc"
# Output: true
# Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
# Constraints:
# 1 <= s.length <= 104
# s consists of lowercase English letters.

def is_substring_repeated(s)
  #multiply word twice
  double_word = s*2
  #remove first and last string
  updated_word = double_word[1..(double_word.length-2)]
  #check if string is substring of word
  updated_word.include? s
end
