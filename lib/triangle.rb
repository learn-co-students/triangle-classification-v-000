class Triangle
  attr_accessor :side_one, :side_two, :side_three
  # write code here
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  # 3 types of triangles that kind needs to evaluate. equilateral isosceles scalene
  #build kind instance mthod to evaluate what kind of traiagle it is based on the argument inputs
    def kind
          validate_triangle
      #equilateral has all sides ==
          if side_one == side_two && side_two == side_three
            :equilateral
          #isosceles has 2 sides ==
          elsif side_one == side_two || side_two == side_three || side_one == side_three
            :isosceles
          #scalene no sides equal
          else
            :scalene
          end
    end
        def validate_triangle
          #all triangles must have the sum of 2 sides greater than the third
          real_triangle = [side_one+side_two > side_three, side_one+side_three > side_two, side_two+side_three > side_one]
          [side_one, side_two, side_three].each {|side| real_triangle << false if side <= 0}
          raise TriangleError if real_triangle.include?(false)
        end

end

#lets make a custom error - we do this by making it a class and inherit the StandardError
class TriangleError < StandardError
end

#now need to setup error message
