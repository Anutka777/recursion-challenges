# frozen_string_literal: true

def bin_search(array, item)
  return p 'none found' if array.length < 3 && item != array[0] && item != array[1]

  min = array[0]
  max = array[array.length - 1]
  mid = (min + max) / 2
  if item == mid
    p "#{item} found"
    mid
  elsif item < mid
    bin_search(array[0..(array.index(mid) - 1)], item)
  elsif item > mid
    bin_search(array[(array.index(mid) + 1)..array.length - 1], item)
  end
end

bin_search([1, 2, 3, 4, 5, 6, 7, 8, 9], 4)
bin_search([1, 2, 3], 4)
bin_search([1, 2], 1)
bin_search([], 2)
