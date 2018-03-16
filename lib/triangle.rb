class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_3 = side_3
    @side_2 = side_2
    @side_1 = side_1
  end

  def valid?
    if side_1 == 0 || side_2 == 0 || side_3 == 0
      false
    elsif side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_3 + side_1 <= side_2
      false
    else
      true
    end
  end
      
  def kind
    if valid? == true
      if side_1 == side_2 && side_2 == side_3
        :equilateral
      elsif side_1 == side_2 && side_2!=side_3 || side_2 == side_3 && side_3!= side_1 || side_1 == side_3 && side_3!= side_2
        :isosceles
      else
        :scalene
      end
    else
      begin 
        raise TriangleError
      #rescue TriangleError => error (place this to rescue the errors)
        #puts error.message
      end
    end
  end


  # write code here
end

class TriangleError < StandardError
  def message
    print "Your triangle is not valid!"
  end
end