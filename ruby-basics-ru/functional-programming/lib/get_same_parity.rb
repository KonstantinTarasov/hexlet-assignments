# frozen_string_literal: true

# BEGIN
def get_same_parity(numbers)
  return [] if numbers.empty?

  first_even = numbers.first.even?
  numbers.filter { |number| number.even? == first_even }
end
# END
