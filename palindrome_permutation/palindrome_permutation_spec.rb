require_relative './palindrome_permutation.rb'

describe 'Palindrome Permutations' do
  it "should return true" do expect(palindrome_permutation('racecar')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('mom')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('repaper')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('tenet')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('refer')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('red rum, sir, is murder')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('no lemon, no melon')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('Eva, can I see bees in a cave?')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('Was it a cat I saw?')).to eq(true) end
  it "should return true" do expect(palindrome_permutation('Sit on a potato pan, Otis.')).to eq(true) end

  #not palindrome
  it "should return false" do expect(palindrome_permutation('not a palindrome')).to eq(false) end
  it "should return false" do expect(palindrome_permutation('hello world')).to eq(false) end
  it "should return false" do expect(palindrome_permutation('asdasdas asdastrhgfgdhdfwerwe')).to eq(false) end
  it "should return false" do expect(palindrome_permutation('yup')).to eq(false) end
end
