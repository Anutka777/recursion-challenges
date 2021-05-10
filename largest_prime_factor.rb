# frozen_string_literal: true

def lpf(number)
  max_prime = 1
  iterator = 1
  while iterator < number
    max_prime = iterator if (number % iterator).zero? && lpf(iterator) == 1
    iterator += 1
  end
  max_prime
end

p lpf(1369)
