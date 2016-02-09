require 'pry'

class Triangle
  attr_accessor :kind
  attr_reader :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if is_triangle? == false

      raise TriangleError.new

    else
      if one == two && one == three
        self.kind = :equilateral

      elsif one == two || one == three || two == three
        self.kind = :isosceles

      elsif one != two && one != three && two && three
        self.kind = :scalene

      end
      
    end
  end

  def is_triangle?
    case 
    when one + two <= three
      false

    when one + three <= two
      false

    when two + three <= one
      false

    when one <= 0
      false

    when two <= 0
      false

    when three <= 0
      false

    else
      true
    end
  end
end

class TriangleError < StandardError
    def message
      puts "wut you wut"
    end
  end