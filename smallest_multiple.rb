# frozen_string_literal: true

# max_multiple = 20
# max_product = (1..max_multiple).inject { |product, multiple| product * multiple }

# def smallest_multiple(max_product, max_multiple, smallest_multiple = 100)
#   while smallest_multiple <= max_product
#     checked = 0
#     multiple = 1
#     while multiple < max_multiple
#       checked += 1 if (smallest_multiple % multiple).zero?
#       multiple += 1
#     end
#     break smallest_multiple if checked == max_multiple - 1

#     smallest_multiple += 1
#   end
#   smallest_multiple
# end

# p smallest_multiple(max_product, max_multiple

# Well, turned out, there is a special function to find the least common multiple in Ruby.
# The solution is so simple and consize, it's almost a crime to implement it manually =)

max_sequence_divisor = 20
p smallest_multiple = (1..max_sequence_divisor).inject { |product, divisor| product.lcm(divisor) }
