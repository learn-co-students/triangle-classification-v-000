class Triangle
attr_accessor :side_1, :side_2, :side_3, :type
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

    if @side_1 == @side_2 && @side_2 == @side_3
      @type = :equilateral
    elsif @side_2 == @side_3 || @side_1 == @side_3 || @side_1 == @side_2
      @type = :isosceles
    else
      @type = :scalene
    end



    if @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      # begin
        raise TriangleError
    elsif @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
        raise TriangleError

      # rescue TriangleError => error
      #   error.message
      # end
    end
  end

  def kind
    @type
  end

  # write code here
end

class TriangleError < StandardError
  def message
    puts "You must enter the correct arguments to form the sides of a valid triangle!"
  end
end
