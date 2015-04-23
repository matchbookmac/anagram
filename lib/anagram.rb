require('pry')

class String
  define_method(:anagram) do |words|
    word = self.split(//).sort!()
    words = words.split(/, /).sort!()
    anagrams = false

    words.each() do |item|
      item = item.split(//).sort!()
      if(word.length().==(item.length()) && (word.eql?(item)))
        anagrams = true
      end
    end
    anagrams
  end
end
