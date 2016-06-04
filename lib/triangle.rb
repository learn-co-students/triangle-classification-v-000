class Triangle
  attr_accessor :ab, :bc, :ac

  def initialize(ab, bc, ac)
    @ab = ab
    @bc = bc
    @ac = ac
  end


  def kind
    if ab <= 0 || bc <= 0 || ac <= 0 || (ab + bc <= ac) || (ab + ac <= bc) || (ac + bc <= ab) 
      raise TriangleError
      elsif ab == bc && bc == ac
        :equilateral
      elsif ab == bc || bc == ac || ac == ab
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
