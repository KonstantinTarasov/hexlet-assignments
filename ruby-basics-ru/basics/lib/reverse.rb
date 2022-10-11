# frozen_string_literal: true

# BEGIN
def reverse(string)
  word_reverse = ''

  i = 0
  while i < string.length
    word_reverse = string[i] + word_reverse
    i += 1
  end
  word_reverse
end
# END
