class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    invalid_triangle?
    if @side_one == @side_two && @side_one == @side_three
        :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        :isosceles
    else
        :scalene
    end
  end
  
  def invalid_triangle?
  #  @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || ((@side_one + @side_two) < @side_three) || ((@side_one + @side_three) < @side_two) || ((@side_two + @side_three) < @side_one)
    solution_array = [(@side_one + @side_two > @side_three), (@side_two + @side_three > @side_one), (@side_one + @side_three > @side_two)]
    solution_array.each do |i|
      if i == 0
        solution_array << false
      end
      raise TriangleError if solution_array.include?(false)
    #  begin
    #   raise TriangleError
     #  rescue TriangleError => error
    #       puts error.message
      end
  end
  
  class TriangleError < StandardError
    def message
      "All sides of the triangle must be greater than zero. The sum of 2 sides can't be greater than the third."
    end
  end

end    
  
  
      
