class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind

    if ( side_one == side_two ) && ( side_one == side_three )
        :equilateral
      elsif ( side_one == side_two && side_one != side_three)  || ( side_one == side_three && side_one != side_two ) || ( side_two == side_three && side_two != side_one )
        :isosceles
      else  ( side_one != side_two ) && ( side_one != side_three ) && ( side_two != side_three )
        :scalene
    end

  end

  ##################################################
    class TriangleError < StandardError

    end
  ##################################################


end
