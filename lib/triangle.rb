require 'set'

class Triangle

  attr_accessor :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @kind = set_kind
  end

  def check
    valid?
  end

  def kind
    raise TriangleError.new if !valid?

    @kind
  end

  # private

  def valid?
    return false if @sides.any?{|side| side <= 0}
    case @kind
    when Types.scalene
      return longest < @sides.reject{|side| side == longest}.reduce{|cum, cur| cum + cur}
    when Types.isosceles
      larger = @sides.reject{|side| side == smallest}
      puts larger.length
      puts smallest * 2
      return larger.length == 2 || smallest * 2 > larger[0]
    when Types.equilateral
      return true
    else
      puts "This should never be run"
    end
  end

  def set_kind
    case unique_sides
    when 1
      return Types.equilateral
    when 2
      return Types.isosceles
    when 3
      return Types.scalene
    else
      raise TraingleError
    end

  end

  def longest
    largest = 0
    @sides.each{|side| largest = side if side > largest}
    largest
  end

  def smallest
    smallest = Float::INFINITY
    @sides.each{|side| smallest = side if side < smallest}
    smallest
  end

  def unique_sides
    Set.new(@sides).size
  end

  class Types

    def self.isosceles
      :isosceles
    end

    def self.scalene
      :scalene
    end

    def self.equilateral
      :equilateral
    end

  end

  class TriangleError < StandardError
    def message
      "This triangle is not valid"
    end
  end

end
