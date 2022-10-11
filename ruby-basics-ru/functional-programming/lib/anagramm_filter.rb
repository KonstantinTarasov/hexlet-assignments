# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, words)
  word = word.chars.sort
  words.filter { |x| x.chars.sort == word }
end
# END
