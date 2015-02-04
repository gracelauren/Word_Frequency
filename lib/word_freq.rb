class String
  define_method(:whole_word_freq) do |word|
    freq = 0
    input_words = self.downcase().split(" ")
    lower_case_word = word.downcase()
    if input_words.==([])&(word).==("")
      freq = "Unable to make the count. Please enter a word into each box."
    end
    input_words.each() do |input_word|
      if input_word.==(lower_case_word)
        freq = freq.+(1)
      else input_word.==(lower_case_word).!
        freq
      end
    end
    freq
  end

  define_method(:partial_word_freq) do |word|
    letters_of_word = word.split("").count
    string_array_characters = self.split("").count
    new_string_array_characters = self.split(word).join("").split("").count
    partial_count = string_array_characters - new_string_array_characters
    partials = partial_count / letters_of_word
    partials
  end
end
