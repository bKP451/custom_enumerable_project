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

  def my_all?
    valid = true
    for individual_element in self
      return false if !(yield(individual_element))
    end
    valid
  end

  def my_any?
    valid = false
    for individual_element in self
      return true if yield(individual_element)
    end
    valid
  end

  def my_none?
    valid = true
    self.my_each do |individual_element|
      return false if yield(individual_element)
    end
    valid
  end

  def my_count
    count = 0
    self.my_each do |individual_element|
      if block_given?
        count += 1 if yield(individual_element)
      else
        count += 1
      end
    end
    count
  end
end

class Array
  def my_map
    new_array = []
    self.my_each do |individual_element|
      new_array << yield(individual_element)
    end
    new_array
  end

  # def my_inject(initial_value)
  #   result = initial_value
  #   self.my_each do |individual_element|
  #     if initial_value == 1
  #       result = yield(result, individual_element)
  #     else
  #       result = yield(result, individual_element)
  #     end
  #   end
  #   result
  # end
  #
  def my_inject(default_argument)
    result = default_argument
    self.each do |elem|
      result = yield(result, elem)
    end
    result
  end
end
