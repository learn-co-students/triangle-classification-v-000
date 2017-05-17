class Triangle

  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a = 0, side_b = 0, side_c = 0)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  # def equilateral
  #   side_a == side_b && side_a == side_c = :equilateral
  #   :equilateral
  # end
  #
  # def isosceles
  #   side_a == side_b && side_a != side_c || side_a != side_b && side_a == side_c || side_a != side_b && side_b == side_c = :isosceles
  #   :isosceles
  # end
  #
  # def scalene
  #   side_a != side_b && side_b != side_c && side_c != side_a = :scalene
  #   :scalene
  # end

  def kind
    # turn arguments of side_a etc into an array? Then could iterate here
  #   self == :isosceles
  #   self.isosceles
  #   self == :equilateral
  #   self.equilateral
  #   self == :scalene
  #   self.scalene
  # end
    #  if side_a <= 0 || side_b <= 0 || side_c <= 0
    # :illegal
    # if triangle.class != Triangle
    #  raise TriangleError

     if side_a == side_b && side_a == side_c
    :equilateral

     elsif side_a == side_b && side_a != side_c || side_a != side_b && side_a == side_c || side_a != side_b && side_b == side_c
    :isosceles

    elsif side_a != side_b && side_b != side_c && side_c != side_a
    :scalene

    else triangle.class != Triangle
      raise TriangleError
    end
  #end
end
end
  class TriangleError < StandardError
    attr_accessor :side_a, :side_b, :side_c

    def initialize(side_a = 0, side_b = 0, side_c = 0)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
    end

    def errors
       if side_a == 0 || side_b == 0 || side_c == 0
         raise self
       elsif side_a < 0 || side_b < 0 || side_c < 0
         raise self
       elsif side_a + side_b <= side_c || side_a + side_c <= side_b || side_b + side_c <= side_a
         raise self
       end
    end
end
