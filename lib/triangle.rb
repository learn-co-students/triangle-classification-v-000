require 'pry'

class Triangle
  
  # initialize with 3 arguments (length_1, length_2, length_3 - these will be integers)
  attr_accessor :length_1, :length_2, :length_3
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1 
    @length_2 = length_2
    @length_3 = length_3
  end 
  
  # create an instance method kind - no arguments 
  def kind
    # - this method will return a symbol of the triangle type 
    # will need to add some sort of logic/if statement to determine if triangle is valid
    # the sum of two sides of triangle have to be greater than the length of the third side for triangle to be valid
    # compare length amounts - then return type of triangle
      # options for calculating length 
        # - length_1 + length_2 
        # - length_2 + length_3 
        # - length_1 + length_3
#    binding.pry
#    if length_1 + length_2 > length_3 
#    elsif length_2 + length_3 > length_1 
#    elsif length_1 + length_3 > length_2
    # - valid triangle types are: 
      # - :equilateral - all three sides are equal
      if length_1 == length_2 && length_2 == length_3 && length_1 == length_3
        :equilateral 
      # - :isosceles - 2 sides are equal
      elsif length_1 == length_2 || length_2 == length_3 || length_1 == length_3
        :isosceles
      # - :scalene - no sides are equal 
      elsif length_1 != length_2 && length_2 != length_3 && length_1 != length_3
        :scalene
      elsif length_1 == 0 || length_2 == 0 || length_3 == 0
        raise TriangleError
  # the kind method should raise a custom error - TriangleError
    end 
  end 
  # write a custom error class, include after the Triangle class 
  class TriangleError < StandardError
    # the customer error class should be inherited from StandardError
  end 
  
end