class String
  define_method(:anagram) do |words|
    word = self
    word = word.split(//).sort!
    words = words.split(//).sort!
    word.eql?(words)
  end
end
