# frozen_string_literal: true

def count(array)
  if array.empty?
    0
  else
    1 + count(array - [array.pop])
  end
end

p count [1, 2, 3]
p count [1, 3, 6, 'g', 67, nil, false]
