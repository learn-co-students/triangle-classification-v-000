require'pry'

class Triangle
  attr_accessor :side_A, :side_B, :side_C

  def initialize(side_A, side_B, side_C) 
      self.side_A = side_A
      self.side_B = side_B
      self.side_C = side_C  
  end


  def kind
    if self.valid? == false
      raise TriangleError      
    else
      if side_A == side_B && side_B == side_C
        :equilateral
      elsif side_A == side_B || side_B == side_C || side_A == side_C
        :isosceles
      else
        :scalene
      end
    end
  end


  def valid?
    (side_A + side_B > side_C) && (side_B + side_C > side_A ) && (side_A + side_C > side_B) && !(side_A <= 0) && !(side_B <= 0) && !(side_C <= 0)
  end
end



class TriangleError < StandardError
    puts "These are not valid side lengths for a triangle."
end








