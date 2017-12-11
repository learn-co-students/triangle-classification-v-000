require 'pry'

class Triangle
  
  # initialize with 3 arguments (length_1, length_2, length_3 - these will be integers)
  def initialize(length_1, length_2, length_3)
    
  end 
  
  # create an instance method kind - no arguments 
  def kind
    # - this method will return a symbol of the triangle type 
    # will need to add some sort of logic/if statement to determine if triangle is valid
    # the sum of two sides of triangle have to be greater than the length of the third side 
      # options for calculating length 
        # - length_1 + length_2 
        # - length_2 + length_3 
        # - length_1 + length_3
    # - valid triangle types are: 
      # - :equilateral
      # - :isosceles
      # - :scalene
  # the kind method should raise a custom error - TriangleError
  end 
  # write a custom error class, include after the Triangle class 
    # the customer error class should be inherited from StandardError
  
end