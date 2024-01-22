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
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
end


# I do not know how it is being passed in rspec
p h.my_each_with_index { |element, index| [element *2, index * 2]}
