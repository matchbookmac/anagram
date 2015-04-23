require('pry')

class String
  define_method(:anagram) do |words|
    word = self
    sorted_word = self.split(//).sort!()
    words = words.split(/, /).sort!()
    anagrams = []

    words.each() do |item|
      sorted_item = item.split(//).sort!()
      if(sorted_word.length().==(sorted_item.length()) && (sorted_word.eql?(sorted_item)))
        anagrams.push(item)
      end
    end
    anagrams
  end
end
