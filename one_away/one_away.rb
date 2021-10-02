# One Away

# There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

# pale, ple -> true
# pales, pale -> true
# pale, bale -> true
# pale, bake -> false

def one_away(original, edited)
  #general logic for getting differences
  diff = original.chars - edited.chars
  # additional checking in for special cases where two strings results to 0 just because they have similar characters but are different words
  # example would be "pale", "plae" - this would result to 0 (no change) based on logic, but is actually expected to be false since it needs more than 1 procedure
  return false if diff.empty?
  diff.count < 2 ? true : false
end