# frozen_string_literal: true

def sum_of_mult(arr)
  return 0 if arr == []

  if (arr[0] % 3).zero? || (arr[0] % 5).zero?
    arr.shift + sum_of_mult(arr)
  else
    arr.shift
    sum_of_mult(arr)
  end
end

p sum_of_mult([0, 0, 0, 0])
p sum_of_mult([])
p sum_of_mult([9, 4, 5, 67, 33, 25, 99, 4, 7])
p sum_of_mult([-3, 5, 9, 1])
