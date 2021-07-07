class Triangle
  # write code here
  attr_accessor :a_side, :b_side, :c_side, :type

#mass assignment is when you have a method that takes a HASH or multiple hashes as an argument.
#so it has a value.
#its mass assignment if we are iterate over the various keys and values
#more notes in spec
#keyword arguments won't work because they aren't hashes
  def initialize(a_side,b_side,c_side) #key word arguments (example:) meant to see the values passed in
    @a_side = a_side #^ better for default arguments or options
    @b_side = b_side
    @c_side = c_side
  end

  #That's actually a valid way to call a method..
  #It's calling .kind on the return value of Triangle.new which is an object

  def kind
  
    raise TriangleError if @a_side <= 0 || @b_side <= 0 || @c_side <= 0
    #no 0 sided or negative sided
    raise TriangleError if (@a_side + @b_side <= @c_side) || (@a_side + @c_side <= @b_side) || (@c_side + @b_side <= @a_side)
      #The Triangle Inequality Theorem states that the sum of any 2 sides of a triangle must be greater than the measure of the third side.
    if @a_side == @b_side && @b_side == @c_side
      :equilateral
    elsif @a_side == @b_side || @a_side == @c_side || @b_side == @c_side
      :isosceles
    elsif @a_side != @b_side && @b_side != @c_side && @a_side != @c_side
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "THIS TRIANGLE IS AWFUL WHAT ARE YOU DOING"
    end
  end
end
