class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if appropriate_length? && triangle_inequality?
      if side_one == side_two && side_two == side_three
        :equilateral
      elsif isosceles?
        :isosceles
      elsif side_one != side_two && side_two != side_three && side_one != side_three
        :scalene
      end
    elsif !appropriate_length? || !triangle_inequality?
      raise TriangleError
    end
  end

  def isosceles?
    if side_one == side_two && side_one != side_three
      true
    elsif side_one == side_three && side_one != side_two
      true
    elsif side_two == side_three && side_two != side_one
      true
    end
  end

  def appropriate_length?
    if side_one > 0 && side_two > 0 && side_three > 0
      true
    end
  end

  def triangle_inequality?
    if side_one + side_two > side_three && side_one + side_three > side_two && side_two + side_three > side_one
      true
    end
  end



end

class TriangleError < StandardError


end
