require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :kind
  
  def initialize(one, two, three)
    @t = []
    @t << one 
    @t << two 
    @t << three
    @kind = find_kind
  end 
  
    def below_zero?
      @t.any? {|s| s <= 0}
    end
    
    def triangle_inequality?
      a = []
      a << (@t[1] + @t[2]) - @t[0]
      a << (@t[0] + @t[2]) - @t[1]
      a << (@t[0] + @t[1]) - @t[2]
      a.any? {|t| t <= 0}
    end
  
  def find_kind
    if below_zero? || triangle_inequality?
      begin
        raise TriangleError
          puts error.message
      end
    else 
      if equilateral?
        @kind = :equilateral
      elsif isosceles?
        @kind = :isosceles
      else scalene?
        @kind = :scalene
      end
    end
  end 
  
    def equilateral?
      @t.all? {|s| s == @t[0]} 
    end
    
    def isosceles?
      @t[0] == @t[1] || @t[0] == @t[2] || @t[1] == @t[2]
    end 
    
    def scalene?
      @t[0] != @t[1] && @t[0] != @t[2] && @t[1] != @t[2]
    end

  class TriangleError < StandardError 
    def message 
      "Check sides of the triangle"
    end
  end
end
