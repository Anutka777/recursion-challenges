# frozen_string_literal: true

def quick_sort(array)
  return array if array.length < 2

  comparison = array[0]
  array_of_lessers = []
  array_of_greaters = []

  array[1..-1].each do |el|
    el < comparison ? array_of_lessers << el : array_of_greaters << el
  end

  (quick_sort(array_of_lessers) << comparison) + quick_sort(array_of_greaters)
end

# p quick_sort([])
# p quick_sort([8, 1, 6])
# p quick_sort([2, 1])
# p quick_sort([67, 87])
# p quick_sort([56, 325, 57, 3464, 46, 43, 6, 7535, 3, 46, 35, 6, 7, 45])
