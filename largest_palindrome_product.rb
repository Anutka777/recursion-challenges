# frozen_string_literal: true

# Iterative solution
# def lpp
#   first_factor = 999
#   second_factor = 999
#   array_of_palindromes = []

#   while first_factor > 1
#     array_of_palindromes.push(first_factor * second_factor) if palindrome(first_factor * second_factor)
#     first_factor -= 1
#     while second_factor > 1
#       array_of_palindromes.push(first_factor * second_factor) if palindrome(first_factor * second_factor)
#       second_factor -= 1
#     end
#     second_factor = 999
#   end
#   array_of_palindromes.max
# end

# p lpp

def palindrome(product)
  product.to_s == product.to_s.reverse
end

def lowering_first_factor(first_factor = 999, second_factor = 999, largest = [])
  return largest.max if first_factor == 1

  largest.push(first_factor * second_factor) if palindrome(first_factor * second_factor)
  lowering_second_factor(first_factor, second_factor, largest)
  lowering_first_factor(first_factor -= 1, second_factor, largest)
end

def lowering_second_factor(first_factor, second_factor, largest)
  return largest.max if second_factor == 1

  largest.push(first_factor * second_factor) if palindrome(first_factor * second_factor)
  lowering_second_factor(first_factor, second_factor -= 1, largest)
end

p lowering_first_factor
