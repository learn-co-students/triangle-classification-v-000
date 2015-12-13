class Triangle

  attr_accessor :side_one_length, :side_two_length, :side_three_length

  def initialize(side_one_length, side_two_length, side_three_length)
      @side_one_length = side_one_length
      @side_two_length = side_two_length
      @side_three_length = side_three_length
  end

  def valid?
    if (side_one_length + side_two_length + side_three_length != 0) && (side_one_length + side_two_length > side_three_length) && (side_three_length + side_two_length > side_one_length) && (side_one_length > 0 && side_two_length > 0 && side_three_length > 0) && (side_one_length + side_three_length > side_two_length)
      true
    else
      false
    end
  end

  def triangle_type
    if side_one_length != side_two_length && side_two_length != side_three_length && side_one_length != side_three_length
      "scalene".to_sym
    elsif side_one_length == side_two_length && side_two_length == side_three_length
      "equilateral".to_sym
    elsif side_one_length == side_two_length || side_three_length
      "isosceles".to_sym
    end
  end

  def kind
    if valid?
      triangle_type
    else
      begin
        raise TriangleError
      end
    end
  end

end

class TriangleError < StandardError
end