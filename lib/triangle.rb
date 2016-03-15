require 'pry'
class Triangle
  attr_accessor :triangles, :equilateral, :isosceles, :scalene, :side1, :side2, :side3, :sides #:type,

  def initialize(side1, side2, side3)
   # binding.pry
     #sides = {side1:, side2:, side3:}
     #@type = type
     @side1 = side1
     @side2 = side2
     @side3 = side3
#     sides.each {|k, v| v > 0}
#     (side1 + side2) > side3
#     (side2 + side3) > side1
#     (side1 + side3) > side2
  end

#   def triangles

#   end

#   def type
#     @type
#   end

  def kind
#     if [side1, side2, side3].uniq?
#       return :scalene
#     elsif side1 == side2 and side2 == side3
# #       self = equilateral
#       return :equilateral
#     else
#       return :isosceles
#     end


#     if side1 || side2 || side3 < 0
#       begin
#           raise TriangleError
#       rescue TriangleError => error
#           puts error.message
#      end
   if side1 <= 0 || side2 <= 0 || side3 <= 0
       raise TriangleError
   elsif (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 + side3) <= side2
       raise TriangleError
   elsif side1 == side2 and side2 == side3
      #self = equilateral
      return :equilateral
    elsif
      side1 == side2 || side2 == side3 || side1 == side3
      #side1 == side2 and side1 != side3 || side2 == side3 and side1 != side3
     # self = isosceles
      return :isosceles
    else
      #self = scalene
      return :scalene
    end


  end
end #Triangle class

#   class Equilateral < Triangle
#     def equilateral
#     side1 == side2 == side3
#     end
#   end

#   class Isosceles < Triangle
#     def isosceles
#     side1 == side2 and side1 !== side3
#     end
#   end

#   class Scalene < Triangle
#     def scalene
#       side1 != side2 != side3
#     end
#   end


class TriangleError < StandardError
 # triangle error code
  def message
    puts "Not a legal triangle"
  end
end