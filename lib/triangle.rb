class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def equilateral?(a,b,c)
    ((a == b) && (a == c) && (b == c)) ? true : false
  end

  def isosceles?(a,b,c)
    ((a == b) || (a == c) || (b == c)) ? true : false
  end

  def triangleinequality
    ((a + b <= c) || (b + c <= a) || (c + a <= b)) ? true : false
  end

  def zerolength(a,b,c)
    ((a == 0) || (b == 0) || (c == 0)) ? true : false
  end

  def kind
    if self.triangleinequality == true
      raise TriangleError
      puts error.message
    elsif zerolength(@a,@b,@c) == true
      raise TriangleError
      puts error.message
    elsif equilateral?(@a,@b,@c) == true
      return :equilateral
    elsif isosceles?(@a,@b,@c) == true
      return :isosceles
    else 
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "That's not a triangle, love."
    end
  end
end
