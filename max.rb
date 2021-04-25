# frozen_string_literal: true

def max(array)
  if array.length == 1
    array[0]
  elsif array[0] <= array[1]
    max(array - [array[0]])
  else
    max(array - [array[1]])
  end
end

# p max [100, 1000, 567, 0, 45, 3, 6, -8]
# p max [1]
# p max [1, 3, 99, 67, 78]
# p max [1, 3, 2]
