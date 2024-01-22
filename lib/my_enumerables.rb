module Enumerable
  def my_each
    new_array = []
    for individual_element in self
      new_array << yield(individual_element)
    end
  end

  def my_each_with_index
    new_array = []
    i = 0
    for individual_element in self
      new_array << yield(individual_element, i)
      i += 1
    end
  end

  def my_select
    new_array = []
    for individual_element in self
      new_array << individual_element if yield(individual_element)
    end
    new_array
  end
end

class Array
end
