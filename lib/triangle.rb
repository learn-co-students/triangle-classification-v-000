require 'pry'

class Triangle
  
  # initialize with 3 arguments (length_1, length_2, length_3 - these will be integers)
  def initialize(length_1, length_2, length_3)
    binding.pry
  end 
  
  # create an instance method kind 
    # - this method will return a symbol of the triangle type 
    # - valid triangle types are: 
      # - :equilateral
      # - :isosceles
      # - :scalene
  # the kind method should raise a custom error - TriangleError
  
  # write a custom error class, include after the Triangle class 
    # the customer error class should be inherited from StandardError
  
end