# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  arr = []
  if start > stop
    return nil
  end
  while start <= stop
    if start % 3 == 0 && start % 5 == 0
      arr << 'FizzBuzz'
    elsif start % 3 == 0
      arr << 'Fizz'
    elsif start % 5 == 0
      arr << 'Buzz'
    else
      arr << start
    end
    start += 1
  end
  arr.join(' ')
end
# END
