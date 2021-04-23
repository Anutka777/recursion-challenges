# frozen_string_literal: true

def sum(array)
  return 0 if array == []

  array.shift + sum(array)
end

# p sum([1, 2, 3])
# p sum([3, 5, 1, 1, 2])
# p sum([2, 4, 6])
