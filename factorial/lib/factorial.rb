def factorial_recursive(number)
  return 1 if number.zero?

  number * factorial_recursive(number - 1)
end

def factorial_iterative(number)
  (1..number).inject(1, :*)
end
