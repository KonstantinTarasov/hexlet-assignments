# frozen_string_literal: true

# BEGIN
def fibonacci(n)
  if n < 0
    nil
  elsif n <= 1
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end
# END
