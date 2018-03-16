class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :kind

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validate_triangle
      if @side1==@side2 && @side2==@side3
        @kind = :equilateral
      elsif @side1==@side2 || @side1==@side3 || @side2==@side3
        @kind = :isosceles
      else
        @kind = :scalene
      end
  end

#   def valid?
#     if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
#       raise TriangleError
#       return false
#     elsif (@side1+@side2)<@side3 || (@side1+@side3)<@side2 || (@side3+@side2)<@side1
#       raise TriangleError
#       return false
#     else
#       return true
#     end
#   end

  def validate_triangle
    real_triangle = [(side1 + side2 > side3), (side2 + side3 > side1), (side1 + side3 > side2)]
    [side1, side2, side3].each { |side| real_triangle << false if side <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

#   def raise_triangle_error
#       begin
#         raise TriangleError
#       rescue TriangleError => error
#           puts error.message
#       end
#   end

end
class TriangleError < StandardError
#     def message
#       "invalid triangle."
#     end
end

