require 'pry'

class Triangle
  def initialize(side_one, side_two, side_three)
    @all_sides = [side_one, side_two, side_three]
    @rotate_one = @all_sides.rotate
    @rotate_two = @all_sides.rotate(2)
  end

  def kind
    result = nil
    check_inequality = false

    # check equilateral
    if @all_sides[0] == @all_sides[1] && @all_sides[0] == @all_sides[2]
      result = :equilateral
    end

    # check scalene
    @all_sides.each_index do |index|
      if @all_sides[index] != @rotate_one[index] && @all_sides[index] != @rotate_two[index]
        result = :scalene
      end
    end

    # check isosceles
    @all_sides.each_index do |index|
      if @all_sides[index] == @rotate_one[index] && @all_sides[index] != @rotate_two[index]
        result = :isosceles
      end
    end

    # check validity
    @all_sides.each_index do |index|
      if @all_sides[index] + @rotate_one[index] <= @rotate_two[index]
        check_inequality = true
      end
    end

    if @all_sides[0] <= 0 || @all_sides[1] <= 0 || @all_sides[2] <= 0 || check_inequality == true
      begin
       raise TriangleError
      end
    else
     result
    end
  end # end kind method

end # end class

class TriangleError < StandardError
end
