require('rspec')
require('anagram')

describe('String#anagram') do
  it("returns true if the given words are anagrams") do
    expect("dog".anagram("god")).to(eq(true))
  end
end
