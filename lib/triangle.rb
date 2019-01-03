require 'pry'

class Triangle
  # s1, s2, s3 are lengths of the 3 sides
  attr_accessor :s1, :s2, :s3, :sides

  def initialize(s1, s2, s3)
    @s1 = s1.to_i
    @s2 = s2.to_i
    @s3 = s3.to_i
    @sides = [s1, s2, s3]
  end

# kind method
#  compute 2 validity tests
#  if all side lengths > 0, validity test 1 = true
#  then yield to method to test triangle inequality spec
#  sum of 2 sides > 3rd side; if true, continue with #kind method
#  output kind of triangle

  def kind
    #test for nonzero & nonnegative side lengths
    if s1 <= 0 || s2 <= 0 || s3 <= 0
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message1
      end

    # test for "triangle inequality" principle
    elsif s1 >= s2 + s3 || s2 >= s1 + s3 || s3 >= s1 + s2
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message2
      end

    # kind tests
    elsif s1 == s2 && s2 == s3
      :equilateral
    elsif s1 != s2 && s2 != s3
      :scalene
    else
      :isoceles
    end
  end # kind method

  class TriangleError < StandardError
    def message1
      "Not a valid triangle: all lengths must be > 0"
    end

    def message2
      "Not a valid triangle: sum of 2 lengths not > 3rd length"
    end
  end

end # class Triangle end
