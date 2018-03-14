require "pry"
class Triangle

  # write code here

  attr_accessor  :equilateral, :isosceles, :scalene, :kind, :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
  end

  def kind
      if self.side_two <= 0 || self.side_one <= 0 || self.side_three <= 0
          raise TriangleError

      elsif self.side_one + self.side_two <= self.side_three || self.side_one + self.side_three <= self.side_two || self.side_three + self.side_two <= self.side_one
          raise TriangleError


      elsif self.side_two == self.side_one && self.side_three == self.side_one && self.side_two == self.side_three
          #binding.pry
           :equilateral

      elsif self.side_two == self.side_one || self.side_three == self.side_one || self.side_two == self.side_three
      #binding.pry
         :isosceles

    elsif  self.side_two != self.side_one && self.side_three != self.side_one && self.side_two != self.side_three
         :scalene

        end
    end
  end

      class TriangleError < StandardError
          def message
              "you must give the get_married method an argument of an instance of the person class!"
          end
      end
