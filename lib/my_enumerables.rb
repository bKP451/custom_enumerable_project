module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    i = 0
    new_array = []
    while i < self.length
      new_array << yield(self[i])
      i += 1
    end
    new_array
  end

  def my_each
    new_array = []
    for individual_element in self
      new_array << yield(individual_element)
    end
  end
end


# a = [1, 2, 3]
# p a.my_each { |n| n }
