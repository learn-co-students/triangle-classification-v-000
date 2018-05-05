class Triangle
  attr_accessor :side_A, :side_B, :side_C, :kind
  
  def initialize(side_A, side_B, side_C)
    @side_A = side_A
    @side_B = side_B
    @side_C = side_C
  end
  
  def kind 
    if (side_A*side_B*side_C) == 0 || (side_A + side_B) <= side_C || (side_B + side_C) <= side_A || (side_C + side_A) <= side_B 
      begin
      raise TriangleError
        puts error.message
      end
    elsif side_A == side_B && side_A == side_C
      self.kind = :equilateral
    elsif side_A == side_B || side_A == side_C || side_B == side_C
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      puts "This is not a triangle"
    end
  end
end
