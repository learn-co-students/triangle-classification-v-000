class Triangle

  attr_accessor :sides

  def initialize(x, y, z)
    @sides = [x, y, z]
  end

  def kind
    if !valid?
      # begin
        raise TriangleError
      # rescue PartnerError => error
        # puts error.message
      # end
    elsif self.sides.uniq.count.eql?(1)
        :equilateral
    elsif self.sides.uniq.count.eql?(2)
        :isosceles
    else
        :scalene
    end
  end

  def valid?
    array = self.sides.sort
    array[0] + array[1] > array[2] && self.sides.all? {|a| a > 0} && self.sides.count == 3

    # self.sides.inject{|sum,a| sum+=a} - self.sides.max) < self.sides.max
  end


end  # End of Class

class TriangleError < StandardError
  def message
    "triangle error"
  end
end  # end of Class
