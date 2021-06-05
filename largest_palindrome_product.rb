# frozen_string_literal: true

# Iterative solution
def lpp
  first_factor = 999
  second_factor = 999
  array_of_palindromes = []

  while first_factor > 1
    array_of_palindromes.push(first_factor * second_factor) if palindrome(first_factor * second_factor)
    first_factor -= 1
    while second_factor > 1
      array_of_palindromes.push(first_factor * second_factor) if palindrome(first_factor * second_factor)
      second_factor -= 1
    end
    second_factor = 999
  end
  array_of_palindromes.max
end

def palindrome(product)
  product.to_s == product.to_s.reverse
end

p lpp
