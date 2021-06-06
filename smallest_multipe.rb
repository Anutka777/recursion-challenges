# frozen_string_literal: true

max_multiple = 20
max_product = (1..max_multiple).inject { |product, multiple| product * multiple }

def smallest_multiple(max_product, max_multiple, sought_product = 100)
  while sought_product <= max_product
    checked = 0
    multiple = 1
    while multiple < max_multiple
      checked += 1 if (sought_product % multiple).zero?
      multiple += 1
    end
    break sought_product if checked == max_multiple - 1

    sought_product += 1
  end
  sought_product
end

p smallest_multiple(max_product, max_multiple)
