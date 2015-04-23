require('rspec')
require('anagram')

describe('String#anagram') do
  it("returns true if the given words are anagrams") do
    expect("dog".anagram("god")).to(eq(true))
  end
  it("will tell the user if there are any anagrams for the word") do
    expect("dog".anagram("god, got, a, 8")).to(eq(true))
  end
  it("will tell the user if there are any anagrams for the word in the array") do
    expect("dog".anagram("god, ogd, odg")).to(eq(true))
  end
end
