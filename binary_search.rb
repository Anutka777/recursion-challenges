# frozen_string_literal: true

def bin_search(array, item)
  return nil if array.length.zero?

  mid = array.length / 2
  if array[mid] == item
    mid
  elsif item < array[mid]
    bin_search(array[0..(mid - 1)], item)
  elsif item > array[mid]
    search = bin_search(array[(mid + 1)..(array.length - 1)], item)
    search.nil? ? nil : (mid + 1 + search)
  end
end

p bin_search([1, 2, 3, 4, 5, 6, 7, 8, 9], 4)
p bin_search([3, 46, 4, 547, 325, 45, 77, 89], 325)
p bin_search([1, 2, 3], 4)
p bin_search([1, 2], 1)
p bin_search([], 2)
