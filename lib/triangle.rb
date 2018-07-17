class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ([@a, @b, @c].any? { |side| (side <= 0) }) || ((@a + @b) <= @c) || ((@b + @c) <= @a) || ((@c + @a) <= @b)
      begin
        raise TriangleError
      end
    end
    if (@a == @b) && (@a == @c) && (@b == @c)
      return "equilateral".to_sym
    elsif [(@a == @b), (@b == @c), (@a == @c)].select { |test| test == true }.length == 1
      return "isosceles".to_sym
    elsif (@a != @b) && (@a != @c) && (@b != @c)
      return "scalene".to_sym
    end
  end

  class TriangleError < StandardError
  end
end
