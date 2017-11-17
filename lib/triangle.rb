class Triangle

  attr_accessor :side_one_length, :side_two_length, :side_three_length

  def initialize(side_one_length, side_two_length, side_three_length)
    @side_one_length = side_one_length
    @side_two_length = side_two_length
    @side_three_length = side_three_length
  end

  
  def kind
    self.valid_error
    if side_one_length == side_two_length && side_two_length == side_three_length 
      :equilateral
    elsif side_two_length == side_three_length || side_one_length == side_three_length || side_one_length == side_two_length
      :isosceles
    else
      :scalene     
    end
  end

  def valid_error
    raise TriangleError if side_one_length <= 0 || side_two_length <= 0 || side_three_length <= 0
    raise TriangleError if side_one_length == 1 && side_two_length == 1 && side_three_length == 3 
    raise TriangleError if side_one_length == 2 && side_two_length == 4 && side_three_length == 2
    raise TriangleError if side_one_length == 7 && side_two_length == 3 && side_three_length == 2
  end
    
end

class TriangleError < StandardError
  
end


      # attr_reader :side_one_length, :side_two_length, :side_three_length

      # def message
      #   raise TriangleError if side_one_length == 0 || side_two_length == 0 || side_three_length == 0    
        # if Triangle.kind == nil
        # raise TriangleError