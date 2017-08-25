require 'pry'
class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sides = [side_1, side_2, side_3]
    sorted_sides = sides.sort
    shortest = sorted_sides[0]
    mid = sorted_sides[1]
    if sides.include?(0)
      raise TriangleError
    elsif sides.any?{|i| i < 0}
      raise TriangleError
    elsif shortest + mid <= sides.max
      raise TriangleError
    end

    if sides.uniq.size == 1
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    elsif sides.uniq.size == 3
      :scalene
    end
  end
end

class TriangleError < StandardError

end

# describe 'Triangle' do


#
#   it 'knows that triangles violating triangle inequality are illegal' do
#     expect{Triangle.new(1, 1, 3).kind}.to raise_error(TriangleError)
#   end
#
#   it 'knows that triangles violating triangle inequality are illegal 2' do
#     expect{Triangle.new(2, 4, 2).kind}.to raise_error(TriangleError)
#   end
#
#   it 'knows that triangles violating triangle inequality are illegal 3' do
#     expect{Triangle.new(7, 3, 2).kind}.to raise_error(TriangleError)
#   end
#
# end
