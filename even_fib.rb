# frozen_string_literal: true

def fibonacci(num)
  return 1 if num <= 1
  return 2 if num == 2

  fibonacci(num - 1) + fibonacci(num - 2)
end

def find_sum(limit)
  fibonacci_sequence = []
  num = 0
  while fibonacci(num) < limit
    fibonacci_sequence.push(fibonacci(num))
    num += 1
  end
  fibonacci_sequence.select(&:even?).reduce { |sum, el| sum + el }
end

p find_sum(4_000_000)
