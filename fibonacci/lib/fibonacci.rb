require 'byebug'
#
# Fibonacci Sequence
#   0, 1, 1, 2, 3, 5, 8, 13, 21, 34
#
#   The next number is found by adding up the two numbers before it

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1

  fibonacci(n - 1) + fibonacci(n - 2)
end
