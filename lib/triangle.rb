class Triangle
  attr_accessor :side_1, :side_2, :side_3, :kind

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @kind = kind
  end

  def kind
    if (@side_1 * @side_2 * @side_3) == 0 || (@side_1 + @side_2) <= @side_3 || (@side_2 + @side_3) <= @side_1 || (@side_1 + @side_3) <= @side_2
      begin
      raise TriangleError
     end

   elsif @side_1 == @side_2 && @side_1 == @side_3
     self.kind = :equilateral

   elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
    self.kind = :isosceles

  else
    self.kind = :scalene
 end

    # triangle rules
    # The sum of the lengths of any two sides of a triangle always
    # exceeds the length of the third side.
    # This is a principle known as the triangle inequality.


    # :equilateral = all equal sides
    #
    # :isosceles = two sides equal
    #
    # :scalene = all sides different


  end

  class TriangleError < StandardError

    puts "not a triangle"

  end
end
