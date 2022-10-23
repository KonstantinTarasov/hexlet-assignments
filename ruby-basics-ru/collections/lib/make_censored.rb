# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(sentence, stop_words)
  # BEGIN
  new_sentence = sentence.split(' ')
  final_sentence = []
  for word in new_sentence do
    count = 0
    for stop in stop_words do
      if word == stop
        final_sentence << '$#%!'
        count += 1
      end
    end
    final_sentence << word if count == 0
  end
  final_sentence.join(' ')
  # END
end

# rubocop:enable Style/For
