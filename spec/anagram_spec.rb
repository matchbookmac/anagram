require('rspec')
require('anagram')

describe('String#anagram') do
  it("will tell the user which words are anagrams for the word provided") do
    expect("dog".anagram("8, god, a, got, dogged")).to(eq("god"))
  end
end
