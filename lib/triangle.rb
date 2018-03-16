class Triangle

  attr_accessor :bottom, :right, :left

  def initialize(bottom, right, left)
    @bottom = bottom
    @right = right
    @left = left
  end

#kinds of Triangles
  def kind
    valid_triangle
    if bottom == right && right == left
      :equilateral
    elsif right == left || bottom == right || bottom == left
      :isosceles
    else
      :scalene
    end
  end


def valid_triangle
  #define what is a valid and correct triangle using the trianagle equality principle
    correct_triangle = [(bottom + right > left), (right + left > bottom), (bottom + left > right)]
    #iterate through each item in the array
    #due to the triangle equality principle, if the side <= 0 push 'false' into the array
    [bottom, right, left].each {|side| correct_triangle << false if side <= 0}
    #if the 'correct_triangle' has a value of false within it(include?)
    #raise the TriangleError
    raise TriangleError if correct_triangle.include?(false)
  end

end

#create own error naoming it TriangleError inheriting from the StandardError class
class TriangleError < StandardError
end
