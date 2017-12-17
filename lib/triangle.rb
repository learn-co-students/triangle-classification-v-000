class Triangle

attr_accessor :a, :b, :c
attr_reader :type

def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end

def equilateral?
  self.a == self.b && self.b == self.c
end

def isosceles?
  self.a == self.b || self.b == self.c || self.a == self.c
end

def scalene?
  self.a != self.b && self.b != self.c && self.a != self.c
end

def illegal?
  if self.a <= 0 || self.b <= 0 || self.c <= 0 || self.a + self.b <= self.c || self.b + self.c <= self.a || self.a + self.c <= self.b
    true
  end
end

def kind
  if illegal?
    raise TriangleError
    puts error.message
  elsif
    equilateral?
    @type = :equilateral
  elsif
    isosceles?
    @type = :isosceles
  elsif
    scalene?
    @type = :scalene
  end
end
end

class TriangleError < StandardError
  def message
    "Please enter correct lengths."
  end

  end
