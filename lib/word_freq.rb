class String
  define_method(:word_freq) do |word|
    freq = 0
    input_words = self.split(" ")
    if input_words.==([])&(word).==("")
      freq = "Please enter a word into each box"
    end
    input_words.each() do |input_word|
      if input_word.==(word)
        freq = freq.+(1)
      else input_word.==(word).!
        freq
      end
    end
    freq
  end
end
